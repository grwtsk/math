# Ideal.algebraMap_residueField_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54203f44-cac5-df41-b44c-506da7d871ed",
  "kind": "lemma",
  "lexical_name": "Ideal.algebraMap_residueField_eq_zero",
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
  "slug": "ideal-algebramap-residuefield-eq-zero--b38aae6e5066e0da87b027e4",
  "source": {
    "blob": "02faa6f81f372cea61432a60b4bb003408f4f0c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 82,
    "path": "GRWTSK/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b38aae6e5066e0da87b027e46e4cd0fbd317df7caf48cdd8f9cd7b929cd0f567",
  "verification": {
    "reference": "docs/verification/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54203f44-cac5-df41-b44c-506da7d871ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ideal.algebraMap_residueField_eq_zero {x} :
    algebraMap R I.ResidueField x = 0 ↔ x ∈ I := by
  rw [IsScalarTower.algebraMap_apply R (Localization.AtPrime I),
    IsLocalRing.ResidueField.algebraMap_eq, IsLocalRing.residue_eq_zero_iff]
  exact IsLocalization.AtPrime.to_map_mem_maximal_iff _ _ _

@[simp high] -- marked `high` to override the more general `FaithfulSMul.ker_algebraMap_eq_bot`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02faa6f81f372cea61432a60b4bb003408f4f0c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
