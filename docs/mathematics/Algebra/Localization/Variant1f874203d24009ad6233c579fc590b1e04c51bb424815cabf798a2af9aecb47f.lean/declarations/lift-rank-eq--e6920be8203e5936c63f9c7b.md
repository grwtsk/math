# lift_rank_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0ebaa2ed413b2eb42e85f1323dda3a0fb2711304",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 229,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f874203d24009ad6233c579fc590b1e04c51bb424815cabf798a2af9aecb47f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:49974d5c-97d0-1df3-9d18-2acb543cf79d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c5838baf-e8b1-ad8f-46fe-00e7e5696238",
  "kind": "theorem",
  "lexical_name": "lift_rank_eq",
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
  "slug": "lift-rank-eq--e6920be8203e5936c63f9c7b",
  "source": {
    "blob": "0ebaa2ed413b2eb42e85f1323dda3a0fb2711304",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 229,
    "path": "GRWTSK/Algebra/Localization/Variant1f874203d24009ad6233c579fc590b1e04c51bb424815cabf798a2af9aecb47f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6920be8203e5936c63f9c7b3082edb2ccc4fb4c8927e54d3cff5ba47bc22578",
  "verification": {
    "reference": "docs/verification/Algebra/Localization/Variant1f874203d24009ad6233c579fc590b1e04c51bb424815cabf798a2af9aecb47f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5838baf-e8b1-ad8f-46fe-00e7e5696238`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_rank_eq :
    Cardinal.lift.{uM} (Module.rank T P) = Cardinal.lift.{uP} (Module.rank R M) := by
  have inj := FaithfulSMul.algebraMap_injective R T
  have := inj.noZeroDivisors _ (map_zero _) (map_mul _)
  cases subsingleton_or_nontrivial R
  · have := (algebraMap R T).codomain_trivial; simp only [rank_subsingleton, lift_one]
  have := (isDomain_iff_noZeroDivisors_and_nontrivial T).mpr
    ⟨‹_›, (FaithfulSMul.algebraMap_injective R T).nontrivial⟩
  let FR := FractionRing R
  let FT := FractionRing T
  replace inj : Function.Injective (algebraMap R FT) := (IsFractionRing.injective T _).comp inj
  let g := TensorProduct.mk T FT P 1
  have : IsLocalizedModule R⁰ (TensorProduct.mk R FR FT 1) := inferInstance
  let _ : Algebra FT (FR ⊗[R] FT) := Algebra.TensorProduct.rightAlgebra
  let _ := isLocalizedModule_iff_isLocalization.mp this |>.atUnits _ _ ?_ |>.symm.isField
    (Field.toIsField FT) |>.toField
  on_goal 2 => rintro _ ⟨_, mem, rfl⟩; exact (map_ne_zero_of_mem_nonZeroDivisors _ inj mem).isUnit
  have := bc.comp_iff.2 ((isLocalizedModule_iff_isBaseChange T⁰ FT g).1 inferInstance)
  rw [← lift_inj.{_, max uT uP}, lift_lift, lift_lift, ← lift_lift.{max uT uP, uM},
    ← IsLocalizedModule.lift_rank_eq T⁰ g le_rfl, lift_lift, ← lift_lift.{uM},
    ← IsLocalization.rank_eq FT T⁰ le_rfl,
    lift_rank_eq_of_le_nonZeroDivisors FR (LocalizedModule.mkLinearMap R⁰ M) le_rfl
      (map_le_nonZeroDivisors_of_injective _ inj le_rfl) this, lift_lift]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Localization/Variant1f874203d24009ad6233c579fc590b1e04c51bb424815cabf798a2af9aecb47f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Localization/Variant1f874203d24009ad6233c579fc590b1e04c51bb424815cabf798a2af9aecb47f.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ebaa2ed413b2eb42e85f1323dda3a0fb2711304` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
