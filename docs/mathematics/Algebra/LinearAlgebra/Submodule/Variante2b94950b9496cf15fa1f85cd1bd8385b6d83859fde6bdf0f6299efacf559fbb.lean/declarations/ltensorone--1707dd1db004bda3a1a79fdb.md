# lTensorOne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e76f478623cd6906a12e31b77bc3af63a4cb858c0de50b79e5d251a6cbc40137",
  "kind": "def",
  "lexical_name": "lTensorOne",
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
  "slug": "ltensorone--1707dd1db004bda3a1a79fdb",
  "source": {
    "blob": "29eb6303d7823fbf569daf4f65aa054e2b953d23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 156,
    "path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1707dd1db004bda3a1a79fdbee362c50d5d00f63fa82c825d03244a7f99ae6bf",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e76f478623cd6906a12e31b77bc3af63a4cb858c0de50b79e5d251a6cbc40137`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def lTensorOne : (⊥ : Subalgebra R S) ⊗[R] N ≃ₗ[R] N :=
  LinearEquiv.ofLinear N.lTensorOne' (TensorProduct.mk R (⊥ : Subalgebra R S) N 1)
    (by ext; simp) <| TensorProduct.ext' fun r n ↦ by
  change 1 ⊗ₜ[R] lTensorOne' N _ = r ⊗ₜ[R] n
  obtain ⟨x, h⟩ := Algebra.mem_bot.1 r.2
  replace h : algebraMap R _ x = r := Subtype.val_injective h
  rw [← h, lTensorOne'_tmul, ← TensorProduct.smul_tmul, Algebra.smul_def, mul_one]

variable {N} in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29eb6303d7823fbf569daf4f65aa054e2b953d23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
