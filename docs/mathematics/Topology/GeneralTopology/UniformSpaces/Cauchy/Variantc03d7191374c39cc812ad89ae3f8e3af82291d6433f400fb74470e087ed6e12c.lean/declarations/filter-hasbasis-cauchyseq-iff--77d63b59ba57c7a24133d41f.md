# Filter.HasBasis.cauchySeq_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:652c4b59-455a-1671-cb7f-0e88d2c98f0d",
  "kind": "theorem",
  "lexical_name": "Filter.HasBasis.cauchySeq_iff'",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "filter-hasbasis-cauchyseq-iff--77d63b59ba57c7a24133d41f",
  "source": {
    "blob": "181876c1986baad484a4ba0ea2ca2018b7821b1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 311,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variantc03d7191374c39cc812ad89ae3f8e3af82291d6433f400fb74470e087ed6e12c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77d63b59ba57c7a24133d41fa47e4e2382685e4f42c0ea206c349749831f744f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Cauchy/Variantc03d7191374c39cc812ad89ae3f8e3af82291d6433f400fb74470e087ed6e12c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:652c4b59-455a-1671-cb7f-0e88d2c98f0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.HasBasis.cauchySeq_iff' {γ} [Nonempty β] [SemilatticeSup β] {u : β → α}
    {p : γ → Prop} {s : γ → SetRel α α} (H : (𝓤 α).HasBasis p s) :
    CauchySeq u ↔ ∀ i, p i → ∃ N, ∀ n ≥ N, (u n, u N) ∈ s i := by
  refine H.cauchySeq_iff.trans ⟨fun h i hi => ?_, fun h i hi => ?_⟩
  · exact (h i hi).imp fun N hN n hn => hN n hn N le_rfl
  · rcases comp_symm_of_uniformity (H.mem_of_mem hi) with ⟨t, ht, ht', hts⟩
    rcases H.mem_iff.1 ht with ⟨j, hj, hjt⟩
    refine (h j hj).imp fun N hN m hm n hn => hts ⟨u N, hjt ?_, ht' <| hjt ?_⟩
    exacts [hN m hm, hN n hn]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Cauchy/Variantc03d7191374c39cc812ad89ae3f8e3af82291d6433f400fb74470e087ed6e12c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variantc03d7191374c39cc812ad89ae3f8e3af82291d6433f400fb74470e087ed6e12c.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `181876c1986baad484a4ba0ea2ca2018b7821b1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
