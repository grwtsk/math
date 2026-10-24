# mobiusLogHighGCDReduceTerm_mapsTo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55c252b0-4018-2270-9820-57a574f1e666",
  "kind": "theorem",
  "lexical_name": "mobiusLogHighGCDReduceTerm_mapsTo",
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
  "slug": "mobiusloghighgcdreduceterm-mapsto--d2abf0ae76501c8bb41f05ef",
  "source": {
    "blob": "fcef170ddde778f44fd5ed12801a728be37c7125",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 52,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2abf0ae76501c8bb41f05ef647984dc3fefb0ce09a5ee91b113d9e9c3bea3c3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIReduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55c252b0-4018-2270-9820-57a574f1e666`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mobiusLogHighGCDReduceTerm_mapsTo
    {X Y : ℕ}
    (hY : 1 ≤ Y) :
    Set.MapsTo mobiusLogHighGCDReduceTerm
      (mobiusLogAbsoluteHighGCDTypeIITermIndexSet X Y : Set _)
      (mobiusLogHighGCDReducedDivisorTupleSet X Y : Set _) := by
  intro x hx
  rcases x with ⟨h, ⟨n, ⟨g, uv⟩⟩⟩
  simp only [mobiusLogAbsoluteHighGCDTypeIITermIndexSet,
    Finset.mem_sigma] at hx
  rcases hx with ⟨hh, hn, hg, huv⟩
  have hhigh := mem_centeredMobiusLogHighGCDSet_iff.mp hg
  have hgshift :=
    (mem_centeredMobiusLogSquarefreeShiftDivisorSet_iff.mp
      hhigh.1).1
  have hhpos : 0 < h := by
    have hhI := Finset.mem_Icc.mp hh
    omega
  have hgpos : 0 < g :=
    Nat.pos_of_dvd_of_pos hgshift hhpos
  have hgUpper : g < 4 * X + 1 := by
    have hgle : g ≤ h := Nat.le_of_dvd hhpos hgshift
    have hhI := Finset.mem_Icc.mp hh
    omega
  have hclass :=
    mem_centeredMobiusLogSquarefreePairGCDClassIndexSet_iff.mp huv
  have hpair :=
    mem_centeredMobiusLogSquarefreeDivisorPairIndexSet_iff.mp hclass.1
  have huFull :=
    centeredMobiusLogSquarefreeDivisorIndexSet_subset n hpair.1
  have hvFull :=
    centeredMobiusLogSquarefreeDivisorIndexSet_subset (n + h) hpair.2
  have hDu : centeredMobiusLogDivisorModulus uv.1 ∣ n :=
    centeredMobiusLogDivisorModulus_dvd_of_mem huFull
  have hDv : centeredMobiusLogDivisorModulus uv.2 ∣ n + h :=
    centeredMobiusLogDivisorModulus_dvd_of_mem hvFull
  have hgDu : g ∣ centeredMobiusLogDivisorModulus uv.1 := by
    rw [← hclass.2]
    exact Nat.gcd_dvd_left _ _
  have hgDv : g ∣ centeredMobiusLogDivisorModulus uv.2 := by
    rw [← hclass.2]
    exact Nat.gcd_dvd_right _ _
  have hgn : g ∣ n := hgDu.trans hDu
  have hgnh : g ∣ n + h := hgDv.trans hDv
  have hnI := Finset.mem_Ioc.mp hn
  have hnpos : 0 < n := by omega
  have hnhpos : 0 < n + h := by omega
  have hnUpper : n ≤ 4 * X :=
    hnI.2.trans (Nat.sub_le _ _)
  have hnhUpper : n + h ≤ 4 * X := by omega
  have ha0 : 0 < n / g :=
    Nat.div_pos (Nat.le_of_dvd hnpos hgn) hgpos
  have hb0 : 0 < (n + h) / g :=
    Nat.div_pos (Nat.le_of_dvd hnhpos hgnh) hgpos
  have haUpper : n / g ≤ 4 * X / g :=
    Nat.div_le_div_right hnUpper
  have hbUpper : (n + h) / g ≤ 4 * X / g :=
    Nat.div_le_div_right hnhUpper
  have hdred :
      centeredMobiusLogDivisorModulus uv.1 / g ∣ n / g := by
    rw [Nat.dvd_div_iff_mul_dvd hgn]
    simpa [Nat.mul_div_cancel' hgDu] using hDu
  have hered :
      centeredMobiusLogDivisorModulus uv.2 / g ∣ (n + h) / g := by
    rw [Nat.dvd_div_iff_mul_dvd hgnh]
    simpa [Nat.mul_div_cancel' hgDv] using hDv
  simp only [mobiusLogHighGCDReduceTerm,
    mobiusLogHighGCDReducedDivisorTupleSet,
    positiveDivisorIncidenceSet,
    Finset.mem_sigma, Finset.mem_product]
  exact
    ⟨Finset.mem_Ioo.mpr ⟨hhigh.2, hgUpper⟩,
      ⟨⟨Finset.mem_Ioc.mpr ⟨ha0, haUpper⟩,
          Nat.mem_divisors.mpr ⟨hdred, ha0.ne'⟩⟩,
       ⟨Finset.mem_Ioc.mpr ⟨hb0, hbUpper⟩,
          Nat.mem_divisors.mpr ⟨hered, hb0.ne'⟩⟩⟩⟩

/-- The reduction map is injective on exact high-g terms; hence no multiplicity
is hidden by the relaxation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIReduction.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcef170ddde778f44fd5ed12801a728be37c7125` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
