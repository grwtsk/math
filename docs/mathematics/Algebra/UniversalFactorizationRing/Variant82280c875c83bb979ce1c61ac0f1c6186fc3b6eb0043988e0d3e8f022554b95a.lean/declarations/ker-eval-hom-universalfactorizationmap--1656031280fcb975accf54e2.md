# ker_eval₂Hom_universalFactorizationMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a746c5d-41f8-e478-fa73-38639e50084e",
  "kind": "lemma",
  "lexical_name": "ker_eval₂Hom_universalFactorizationMap",
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
  "slug": "ker-eval-hom-universalfactorizationmap--1656031280fcb975accf54e2",
  "source": {
    "blob": "56a1041889cc9095ca7ab293316e7658cdf2bfe1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 197,
    "path": "GRWTSK/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1656031280fcb975accf54e2aa46da0d81347d013c9baac3ce6bb44cb926f17d",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a746c5d-41f8-e478-fa73-38639e50084e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ker_eval₂Hom_universalFactorizationMap :
    RingHom.ker (eval₂Hom (S₁ := MvPolynomial (Fin m) R ⊗[R] MvPolynomial (Fin k) R)
      (universalFactorizationMap R n m k hn) (Sum.elim (.X · ⊗ₜ 1) (1 ⊗ₜ .X ·))) =
    Ideal.span (Set.range fun i ↦ C (X i) - map C (tensorEquivSum _ _ _ _
      (universalFactorizationMap R n m k hn (X i)))) := by
  set f := eval₂Hom (R := MvPolynomial (Fin n) R)
    (S₁ := MvPolynomial (Fin m) R ⊗[R] MvPolynomial (Fin k) R)
    (universalFactorizationMap R n m k hn) (Sum.elim (.X · ⊗ₜ 1) (1 ⊗ₜ .X ·))
  have H (i : _) : tensorEquivSum _ _ _ _ (f (.X i)) = .X i := by aesop
  apply le_antisymm
  · intro x hx
    convert_to x - (tensorEquivSum _ _ _ _ (f x)).map C ∈ Ideal.span _ using 1
    · simp_all only [RingHom.mem_ker, map_zero, sub_zero]
    clear hx
    induction x using MvPolynomial.induction_on with
    | add p q _ _ => simp only [map_add, add_sub_add_comm]; exact add_mem ‹_› ‹_›
    | mul_X p i _ => simp only [map_mul, H, map_X, ← sub_mul]; exact Ideal.mul_mem_right _ _ ‹_›
    | C x =>
    induction x using MvPolynomial.induction_on with
    | C a => simp [f]
    | add p q _ _ => simp only [map_add, add_sub_add_comm]; exact add_mem ‹_› ‹_›
    | mul_X p i IH =>
      simp only [map_mul]
      exact Ideal.mul_sub_mul_mem _ IH (Ideal.subset_span ⟨i, by simp [f]⟩)
  · simp only [Ideal.span_le, Set.range_subset_iff, SetLike.mem_coe, RingHom.mem_ker, map_sub,
      eval₂Hom_C, RingHom.coe_coe, eval₂Hom_map_hom, coe_eval₂Hom, sub_eq_zero, f]
    simp only [← algebraMap_eq, AlgHom.comp_algebraMap_of_tower, ← aeval_def]
    intro i
    generalize universalFactorizationMap R n m k hn (X i) = p
    change AlgHom.id R _ p = ((aeval _).comp (tensorEquivSum R _ _ R).toAlgHom) p
    congr 1
    ext <;> simp

set_option backward.isDefEq.respectTransparency false in
/-- The canonical presentation of `universalFactorizationMap`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56a1041889cc9095ca7ab293316e7658cdf2bfe1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
