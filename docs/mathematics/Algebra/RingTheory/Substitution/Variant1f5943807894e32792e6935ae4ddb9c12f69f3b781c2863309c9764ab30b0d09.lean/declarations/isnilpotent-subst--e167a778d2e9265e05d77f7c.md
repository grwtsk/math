# IsNilpotent_subst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6238f56f-9e0b-8949-4e51-ff87cec6767a",
  "kind": "theorem",
  "lexical_name": "IsNilpotent_subst",
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
  "slug": "isnilpotent-subst--e167a778d2e9265e05d77f7c",
  "source": {
    "blob": "2547b313a495ab2f0b89d403f145dead834e5bb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 337,
    "path": "GRWTSK/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e167a778d2e9265e05d77f7c092db36264b6b5454f260719b2b714aecc95e958",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6238f56f-9e0b-8949-4e51-ff87cec6767a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsNilpotent_subst (ha : HasSubst a)
    {f : MvPowerSeries σ R} (hf : IsNilpotent (constantCoeff σ R f)) :
    IsNilpotent (constantCoeff τ S ((substAlgHom ha) f)) := by
  classical
  rw [coe_substAlgHom, constantCoeff_subst ha]
  apply isNilpotent_finsum
  intro d
  by_cases hd : d = 0
  · rw [← algebraMap_smul S, smul_eq_mul, mul_comm, ← smul_eq_mul, hd]
    apply IsNilpotent.smul
    simpa using IsNilpotent.map hf (algebraMap R S)
  · apply IsNilpotent.smul
    rw [← ne_eq, Finsupp.ne_iff] at hd
    obtain ⟨t, hs⟩ := hd
    rw [← Finsupp.prod_filter_mul_prod_filter_not (fun i ↦ i = t), map_mul,
      mul_comm, ← smul_eq_mul]
    apply IsNilpotent.smul
    rw [Finsupp.prod_eq_single t]
    · simpa using IsNilpotent.pow_of_pos (ha.const_coeff t) hs
    · intro t' htt' ht'
      simp [ht'] at htt'
    · exact fun _ ↦ by rw [pow_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2547b313a495ab2f0b89d403f145dead834e5bb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
