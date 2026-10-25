# derivation'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:31f36bf10ed63d1dafba4c5e50aa13111a27e03b01ee2aaa627eae8c0d3bf11c",
  "kind": "def",
  "lexical_name": "derivation'",
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
  "slug": "derivation--0f3b0cba37e323653ac09257",
  "source": {
    "blob": "ed557dc3b887a9a36952e4afe5f9423efd194b38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 209,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant2b7128ad991d470cac11be0fb9b7840701bd0d12c03497d529a9d596509e20af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f3b0cba37e323653ac09257b2bfe1f5269d3f8d0b31a6d65e7af23e7520665b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant2b7128ad991d470cac11be0fb9b7840701bd0d12c03497d529a9d596509e20af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:31f36bf10ed63d1dafba4c5e50aa13111a27e03b01ee2aaa627eae8c0d3bf11c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def derivation' : (relativeDifferentials' φ').Derivation' φ' :=
  Derivation'.mk (fun X ↦ CommRingCat.KaehlerDifferential.D (φ'.app X))
    (fun _ _ f x ↦ (relativeDifferentials'_map_d φ' f x).symm)

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- The derivation `Derivation' φ'` is universal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant2b7128ad991d470cac11be0fb9b7840701bd0d12c03497d529a9d596509e20af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant2b7128ad991d470cac11be0fb9b7840701bd0d12c03497d529a9d596509e20af.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed557dc3b887a9a36952e4afe5f9423efd194b38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
