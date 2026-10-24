# uniformContinuous_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b947708-aed6-ab01-c92e-b885f8f964f1",
  "kind": "theorem",
  "lexical_name": "uniformContinuous_prod",
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
  "slug": "uniformcontinuous-prod--9a3659ee7057afaf70488216",
  "source": {
    "blob": "71f644d7efa8501c39d7c8a423bba828a242c8c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 206,
    "path": "GRWTSK/Topology/GeneralTopology/Closeds/Variant8dbd87dfea8aa0091c6b10a26a0ecc53cc3ea4019b9a8136be96162d5cbc7aa4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a3659ee7057afaf704882162923905ff94a570f5b872d9e2352864c1f0cbe8e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Closeds/Variant8dbd87dfea8aa0091c6b10a26a0ecc53cc3ea4019b9a8136be96162d5cbc7aa4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b947708-aed6-ab01-c92e-b885f8f964f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformContinuous_prod : UniformContinuous (fun x : Set α × Set β => x.1 ×ˢ x.2) := by
  refine (𝓤 α).basis_sets.uniformity_prod (𝓤 β).basis_sets |>.lift' monotone_hausdorffEntourage
    |>.tendsto_right_iff.mpr fun ⟨U, V⟩ ⟨hU, hV⟩ => ?_
  filter_upwards [entourageProd_mem_uniformity (Filter.mem_lift' hU) (Filter.mem_lift' hV)]
    with ⟨⟨s₁, s₂⟩, ⟨t₁, t₂⟩⟩ ⟨h₁, h₂⟩ using prod_mem_hausdorffEntourage_entourageProd U V h₁ h₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Closeds/Variant8dbd87dfea8aa0091c6b10a26a0ecc53cc3ea4019b9a8136be96162d5cbc7aa4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Closeds/Variant8dbd87dfea8aa0091c6b10a26a0ecc53cc3ea4019b9a8136be96162d5cbc7aa4.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71f644d7efa8501c39d7c8a423bba828a242c8c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
