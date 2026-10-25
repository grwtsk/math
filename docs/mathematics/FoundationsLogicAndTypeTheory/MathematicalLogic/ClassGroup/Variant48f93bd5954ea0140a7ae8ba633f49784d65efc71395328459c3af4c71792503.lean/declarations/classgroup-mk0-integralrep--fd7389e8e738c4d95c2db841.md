# ClassGroup.mk0_integralRep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b31e1b20d6be8aabaf838d1636b5320aaba114b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 351,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e55f2c6-09aa-0e29-6540-89821a7033db",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:93304f78-dfd2-f96c-7a85-6320d5bf4380",
  "kind": "theorem",
  "lexical_name": "ClassGroup.mk0_integralRep",
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
  "slug": "classgroup-mk0-integralrep--fd7389e8e738c4d95c2db841",
  "source": {
    "blob": "7b31e1b20d6be8aabaf838d1636b5320aaba114b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 383,
    "line": 351,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd7389e8e738c4d95c2db84102383d619e90ee404f1cdc1e604ac4ec8145efd8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93304f78-dfd2-f96c-7a85-6320d5bf4380`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 351–383.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ClassGroup.mk0_integralRep [IsDedekindDomain R]
    (I : (FractionalIdeal R⁰ (FractionRing R))ˣ) :
    ClassGroup.mk0 ⟨ClassGroup.integralRep I, ClassGroup.integralRep_mem_nonZeroDivisors I.ne_zero⟩
      = ClassGroup.mk I := by
  let a := I.1.2.choose
  have a_ne_zero' := I.1.2.choose_spec.1
  have ha := I.1.2.choose_spec.2
  have fa_ne_zero : (algebraMap R (FractionRing R)) a ≠ 0 :=
    IsFractionRing.to_map_ne_zero_of_mem_nonZeroDivisors a_ne_zero'
  symm
  apply Quotient.sound
  change @Setoid.r _
    (QuotientGroup.leftRel (toPrincipalIdeal R (FractionRing R)).range) _ _
  rw [canonicalEquiv_self, RingEquiv.coe_monoidHom_refl, Units.map_id, MonoidHom.id_apply,
      MonoidHom.id_apply, QuotientGroup.leftRel_apply]
  refine ⟨Units.mk0 (algebraMap R _ a) fa_ne_zero, ?_⟩
  rw [_root_.eq_inv_mul_iff_mul_eq, eq_comm, mul_comm I]
  apply Units.ext
  simp only [FractionalIdeal.coe_mk0, FractionalIdeal.map_canonicalEquiv_mk0,
    Units.val_mk0, coe_toPrincipalIdeal, Units.val_mul,
    FractionalIdeal.eq_spanSingleton_mul]
  constructor
  · intro zJ' hzJ'
    obtain ⟨zJ, hzJ, rfl⟩ := (mem_coeIdeal R⁰).mp hzJ'
    refine ⟨_, hzJ, ?_⟩
    rw [← mul_assoc, mul_inv_cancel fa_ne_zero, one_mul]
  · intro zI' hzI'
    obtain ⟨y, hy⟩ := ha zI' hzI'
    rw [← Algebra.smul_def, mem_coeIdeal]
    refine' ⟨y, _, hy⟩
    show (algebraMap R _ a)⁻¹ * algebraMap R _ y ∈ (I : FractionalIdeal R⁰ (FractionRing R))
    rwa [hy, Algebra.smul_def, ← mul_assoc, inv_mul_cancel fa_ne_zero, one_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean#L351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b31e1b20d6be8aabaf838d1636b5320aaba114b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
