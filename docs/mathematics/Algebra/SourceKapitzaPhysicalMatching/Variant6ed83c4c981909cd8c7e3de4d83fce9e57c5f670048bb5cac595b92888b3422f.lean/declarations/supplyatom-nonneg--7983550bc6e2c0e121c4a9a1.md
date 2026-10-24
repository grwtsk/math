# supplyAtom_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52329d5e-58ba-d123-de6a-b8f5730e8f91",
  "kind": "theorem",
  "lexical_name": "supplyAtom_nonneg",
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
  "slug": "supplyatom-nonneg--7983550bc6e2c0e121c4a9a1",
  "source": {
    "blob": "69ad2156609a01a2f15c57f3f5786cd070e30f9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 182,
    "path": "GRWTSK/Algebra/SourceKapitzaPhysicalMatching/Variant6ed83c4c981909cd8c7e3de4d83fce9e57c5f670048bb5cac595b92888b3422f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7983550bc6e2c0e121c4a9a1858e362b3575da5da878171b18f8d056e4118eb5",
  "verification": {
    "reference": "docs/verification/Algebra/SourceKapitzaPhysicalMatching/Variant6ed83c4c981909cd8c7e3de4d83fce9e57c5f670048bb5cac595b92888b3422f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52329d5e-58ba-d123-de6a-b8f5730e8f91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem supplyAtom_nonneg (rows : ℕ → ℝ) (B U : ℕ)
    (hrows : ∀ d ∈ Finset.Ioc B U, 0 ≤ rows d) (j : ℕ) :
    0 ≤ supplyAtom rows B U j := by
  unfold supplyAtom
  split_ifs with hj
  · exact hrows _ (Finset.mem_Ioc.mpr ⟨by omega, by omega⟩)
  · exact le_rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SourceKapitzaPhysicalMatching/Variant6ed83c4c981909cd8c7e3de4d83fce9e57c5f670048bb5cac595b92888b3422f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SourceKapitzaPhysicalMatching/Variant6ed83c4c981909cd8c7e3de4d83fce9e57c5f670048bb5cac595b92888b3422f.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69ad2156609a01a2f15c57f3f5786cd070e30f9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
