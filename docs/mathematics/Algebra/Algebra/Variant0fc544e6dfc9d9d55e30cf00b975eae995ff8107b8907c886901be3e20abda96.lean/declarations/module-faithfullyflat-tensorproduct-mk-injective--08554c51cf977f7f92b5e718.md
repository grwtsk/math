# Module.FaithfullyFlat.tensorProduct_mk_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b7f406d-7625-1579-8915-676b1ba45e6e",
  "kind": "lemma",
  "lexical_name": "Module.FaithfullyFlat.tensorProduct_mk_injective",
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
  "slug": "module-faithfullyflat-tensorproduct-mk-injective--08554c51cf977f7f92b5e718",
  "source": {
    "blob": "dfbe05a9165f834e092363166cc23795b5b747b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 93,
    "path": "GRWTSK/Algebra/Algebra/Variant0fc544e6dfc9d9d55e30cf00b975eae995ff8107b8907c886901be3e20abda96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08554c51cf977f7f92b5e71846ab49365e35032707c9466002a4131fb46f5b6d",
  "verification": {
    "reference": "docs/verification/Algebra/Algebra/Variant0fc544e6dfc9d9d55e30cf00b975eae995ff8107b8907c886901be3e20abda96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b7f406d-7625-1579-8915-676b1ba45e6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Module.FaithfullyFlat.tensorProduct_mk_injective (M : Type*) [AddCommGroup M] [Module A M] :
    Function.Injective (TensorProduct.mk A B M 1) := by
  rw [← Module.FaithfullyFlat.lTensor_injective_iff_injective A B]
  have : (lTensor B <| TensorProduct.mk A B M 1) =
      (TensorProduct.leftComm A B B M).symm.comp (TensorProduct.mk A B (B ⊗[A] M) 1) := by
    apply TensorProduct.ext'
    intro x y
    simp
  rw [this, coe_comp, LinearEquiv.coe_coe, EmbeddingLike.comp_injective]
  exact Algebra.TensorProduct.mk_one_injective_of_isScalarTower _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Algebra/Variant0fc544e6dfc9d9d55e30cf00b975eae995ff8107b8907c886901be3e20abda96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Algebra/Variant0fc544e6dfc9d9d55e30cf00b975eae995ff8107b8907c886901be3e20abda96.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfbe05a9165f834e092363166cc23795b5b747b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
