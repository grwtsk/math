# Module.exists_dual_forall_apply_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "43c8ac3a5381b0ca3a8867b8d24c407d5a34a379",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1089,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/45f6851df21387799575c2844b7c7b50ffad353a938a4bcfcb6f032f78443902.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:418a2d21-32fa-2311-1685-2162ec7da24c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:93fea1c8-7f47-cf5c-dfd4-13e07fcf08d5",
  "kind": "lemma",
  "lexical_name": "Module.exists_dual_forall_apply_eq_one",
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
  "slug": "module-exists-dual-forall-apply-eq-one--d6a4df07868cdd2d008e1d6d",
  "source": {
    "blob": "43c8ac3a5381b0ca3a8867b8d24c407d5a34a379",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1122,
    "line": 1089,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant45f6851df21387799575c2844b7c7b50ffad353a938a4bcfcb6f032f78443902.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6a4df07868cdd2d008e1d6d166ca0a44798608cfb12ea0713f00298daff3621",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lemmas/Variant45f6851df21387799575c2844b7c7b50ffad353a938a4bcfcb6f032f78443902.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93fea1c8-7f47-cf5c-dfd4-13e07fcf08d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1089–1122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Module.exists_dual_forall_apply_eq_one {ι K V : Type*} [Field K] [AddCommGroup V] [Module K V]
    {s : Set ι} {v : ι → V} (hli : LinearIndepOn K v s) :
    ∃ f : Dual K V, ∀ i ∈ s, f (v i) = 1 := by
  replace hli : LinearIndepOn K id (v '' s) := LinearIndepOn.id_image hli
  let b : Basis _ K V := .mk (hli.linearIndepOn_extend (Set.subset_univ _)) <| by
    simpa using hli.span_extend_eq_span <| Set.subset_univ _
  refine ⟨b.constr K 1, fun i hi ↦ ?_⟩
  replace hi : v i ∈ hli.extend (Set.subset_univ _) :=
    hli.subset_extend _ <| Set.mem_image_of_mem v hi
  let ri : hli.extend (Set.subset_univ _) := ⟨v i, hi⟩
  have : b ri = v i := by simp [b, ri]
  simp [← this]

namespace TensorProduct

variable (R A : Type*) (M : Type*) (N : Type*)

open TensorProduct

attribute [local ext] TensorProduct.ext

open TensorProduct

open LinearMap

section

variable [CommSemiring R] [AddCommMonoid M] [AddCommMonoid N]
variable [Module R M] [Module R N]

/-- The canonical linear map from `Dual M ⊗ Dual N` to `Dual (M ⊗ N)`,
sending `f ⊗ g` to the composition of `TensorProduct.map f g` with
the natural isomorphism `R ⊗ R ≃ R`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lemmas/Variant45f6851df21387799575c2844b7c7b50ffad353a938a4bcfcb6f032f78443902.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant45f6851df21387799575c2844b7c7b50ffad353a938a4bcfcb6f032f78443902.lean#L1089).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43c8ac3a5381b0ca3a8867b8d24c407d5a34a379` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
