# le_mul_inv_iff_mul_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c58f658-e143-4556-3fd5-75635b181100",
  "kind": "theorem",
  "lexical_name": "le_mul_inv_iff_mul_le",
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
  "slug": "le-mul-inv-iff-mul-le--21a657421008e415f60c2f3f",
  "source": {
    "blob": "aae2e523d2f97b63fa0f96b898b1391313926c95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 72,
    "path": "GRWTSK/Algebra/Field/Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21a657421008e415f60c2f3feedbb6d0a0f8dc3d2c324bfd5a0f30a7bbe0e313",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c58f658-e143-4556-3fd5-75635b181100`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_mul_inv_iff_mul_le (a b : R) {c : R} (h : 0 < c) : a ≤ b * c⁻¹ ↔ a * c ≤ b :=
  ⟨mul_le_of_le_mul_inv h, le_mul_inv_of_mul_le h⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FieldTheory/Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Field/Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aae2e523d2f97b63fa0f96b898b1391313926c95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
