# finite_support_norm_triple

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aff3520c-8585-0bff-8732-7c0217c67113",
  "kind": "theorem",
  "lexical_name": "finite_support_norm_triple",
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
  "slug": "finite-support-norm-triple--4bbea65cfdd0ac0ac870d3d7",
  "source": {
    "blob": "f0607296cd9f472e2ab7fc9db1239b20c929bacf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 61,
    "path": "GRWTSK/NumberTheory/Ideal/CompactNormSupport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4bbea65cfdd0ac0ac870d3d7d5e1dcf9902d8269c4be7120841a53a1b1e3fde8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Ideal/CompactNormSupport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aff3520c-8585-0bff-8732-7c0217c67113`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_support_norm_triple (W : ℝ→ℂ) (hW : HasCompactSupport W)
    (X : ℝ) (hX : 0<X) (F : Ideal S×Ideal S×Ideal S→ℂ)
    (hzero : ∀I J H,I=0 ∨ J=0 ∨ H=0→F (I,J,H)=0)
    (hwindow : ∀I J H,W ((Ideal.absNorm I:ℝ)*(Ideal.absNorm J:ℝ)^3*
      (Ideal.absNorm H:ℝ)^3/X)=0→F (I,J,H)=0) : (Function.support F).Finite := by
  obtain ⟨B,hB⟩ := hW.bddAbove
  let bound := max B 1
  have hbound : ∀y,W y≠0→y≤bound := by
    intro y hy
    exact (hB (subset_tsupport W hy)).trans (le_max_left _ _)
  obtain ⟨M,hM⟩ := exists_nat_gt (bound*X)
  let A := {I : Ideal S | Ideal.absNorm I≤M}
  have hA : A.Finite := Ideal.finite_setOfPred_absNorm_le M
  apply (hA.prod (hA.prod hA)).subset
  rintro ⟨I,J,H⟩ hF
  have hF0 : F (I,J,H)≠0 := hF
  have hI : I≠0 := fun h=>hF0 (hzero I J H (Or.inl h))
  have hJ : J≠0 := fun h=>hF0 (hzero I J H (Or.inr (Or.inl h)))
  have hH : H≠0 := fun h=>hF0 (hzero I J H (Or.inr (Or.inr h)))
  have hw : W ((Ideal.absNorm I:ℝ)*(Ideal.absNorm J:ℝ)^3*(Ideal.absNorm H:ℝ)^3/X)≠0 :=
    fun h=>hF0 (hwindow I J H h)
  have hsize := (div_le_iff₀ hX).mp (hbound _ hw)
  have hb := ideal_triple_scale_bounds I J H hI hJ hH
  have hIM : Ideal.absNorm I≤M := by exact_mod_cast (hb.1.trans hsize).trans hM.le
  have hJM : Ideal.absNorm J≤M := by exact_mod_cast (hb.2.1.trans hsize).trans hM.le
  have hHM : Ideal.absNorm H≤M := by exact_mod_cast (hb.2.2.trans hsize).trans hM.le
  exact ⟨hIM,hJM,hHM⟩

end
end GRWTSK.NumberTheory.Ideal.CompactNormSupport
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Ideal/CompactNormSupport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Ideal/CompactNormSupport.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0607296cd9f472e2ab7fc9db1239b20c929bacf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
