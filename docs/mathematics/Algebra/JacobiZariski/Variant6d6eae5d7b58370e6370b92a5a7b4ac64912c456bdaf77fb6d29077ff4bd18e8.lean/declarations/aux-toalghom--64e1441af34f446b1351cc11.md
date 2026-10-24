# δAux_toAlgHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bf0f6ea882e602ecdf39c8b7a061880ff38eda37",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 234,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:24cb22b0-9871-32ba-dc6f-1604499a05d5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:44086eb8-27cd-c475-ec6a-cc58b523a73b",
  "kind": "lemma",
  "lexical_name": "δAux_toAlgHom",
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
  "slug": "aux-toalghom--64e1441af34f446b1351cc11",
  "source": {
    "blob": "bf0f6ea882e602ecdf39c8b7a061880ff38eda37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 234,
    "path": "GRWTSK/Algebra/JacobiZariski/Variant6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64e1441af34f446b1351cc11e18014c2d9e0747873aacb36aa0cf3190e0f09eb",
  "verification": {
    "reference": "docs/verification/Algebra/JacobiZariski/Variant6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44086eb8-27cd-c475-ec6a-cc58b523a73b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma δAux_toAlgHom {Q : Generators.{u₁} S T}
    {Q' : Generators.{u₃} S T} (f : Hom Q Q') (x) :
    δAux R Q' (f.toAlgHom x) = δAux R Q x + Finsupp.linearCombination _ (δAux R Q' ∘ f.val)
      (Q.cotangentSpaceBasis.repr ((1 : T) ⊗ₜ[Q.Ring] D S Q.Ring x :)) := by
  letI : AddCommGroup (T ⊗[S] Ω[S⁄R]) := inferInstance
  have : IsScalarTower Q.Ring Q.Ring T := IsScalarTower.left _
  induction x using MvPolynomial.induction_on with
  | C s => simp [MvPolynomial.algebraMap_eq, δAux_C]
  | add x₁ x₂ hx₁ hx₂ =>
    simp only [map_add, hx₁, hx₂, tmul_add]
    rw [add_add_add_comm]
  | mul_X p n IH =>
    simp only [map_mul, Hom.toAlgHom_X, δAux_mul, algebraMap_apply, Hom.algebraMap_toAlgHom,
      ← @IsScalarTower.algebraMap_smul Q'.Ring T, id.map_eq_id, δAux_X, RingHomCompTriple.comp_eq,
      RingHom.id_apply, coe_eval₂Hom, IH, Hom.aeval_val, smul_add, map_aeval, tmul_add, tmul_smul,
      ← @IsScalarTower.algebraMap_smul Q.Ring T, smul_zero, aeval_X, zero_add, Derivation.leibniz,
      LinearEquiv.map_add, LinearEquiv.map_smul, Basis.repr_self, LinearMap.map_add, one_smul,
      LinearMap.map_smul, Finsupp.linearCombination_single,
      Function.comp_apply, ← cotangentSpaceBasis_apply]
    rw [add_left_comm]
    rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/JacobiZariski/Variant6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/JacobiZariski/Variant6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf0f6ea882e602ecdf39c8b7a061880ff38eda37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
