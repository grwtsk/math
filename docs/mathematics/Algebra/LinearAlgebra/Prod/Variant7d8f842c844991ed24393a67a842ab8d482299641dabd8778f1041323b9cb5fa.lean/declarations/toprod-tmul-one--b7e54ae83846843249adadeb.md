# toProd_ι_tmul_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b03d5f28-42cf-c997-f74d-e7d3315e1ac5",
  "kind": "lemma",
  "lexical_name": "toProd_ι_tmul_one",
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
  "slug": "toprod-tmul-one--b7e54ae83846843249adadeb",
  "source": {
    "blob": "cd9d4dbc7052f5061108ee79fd93087978e19766",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 151,
    "path": "GRWTSK/Algebra/LinearAlgebra/Prod/Variant7d8f842c844991ed24393a67a842ab8d482299641dabd8778f1041323b9cb5fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7e54ae83846843249adadeb01a0d31e6bdf4ff589dba766c739a1509a5ec041",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Prod/Variant7d8f842c844991ed24393a67a842ab8d482299641dabd8778f1041323b9cb5fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b03d5f28-42cf-c997-f74d-e7d3315e1ac5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toProd_ι_tmul_one (m₁ : M₁) : toProd Q₁ Q₂ (ι _ m₁ ᵍ⊗ₜ 1) = ι _ (m₁, 0) := by
  rw [toProd, GradedTensorProduct.lift_tmul, map_one, mul_one, map_apply_ι,
    QuadraticMap.Isometry.inl_apply]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Prod/Variant7d8f842c844991ed24393a67a842ab8d482299641dabd8778f1041323b9cb5fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Prod/Variant7d8f842c844991ed24393a67a842ab8d482299641dabd8778f1041323b9cb5fa.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd9d4dbc7052f5061108ee79fd93087978e19766` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
