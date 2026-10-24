# mobiusLogAbsoluteHighGCDTypeIITermValue_le_log_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a84b028-1c5d-2dd5-5f0f-24169d90260c",
  "kind": "theorem",
  "lexical_name": "mobiusLogAbsoluteHighGCDTypeIITermValue_le_log_sq",
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
  "slug": "mobiuslogabsolutehighgcdtypeiitermvalue-le-log-sq--0c50057eddca2e9b6699efb1",
  "source": {
    "blob": "29130ffb1b08afe4da29860f267cd0d827f700d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 143,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIWeight.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c50057eddca2e9b6699efb110e181ccbb5d218f1b32039719be16d43bda03f7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIWeight.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a84b028-1c5d-2dd5-5f0f-24169d90260c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mobiusLogAbsoluteHighGCDTypeIITermValue_le_log_sq
    {X N m Y : ℕ}
    (hX : 0 < X)
    (hY : 1 ≤ Y)
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X)
    {x : MobiusLogHighGCDTypeIITermIndex}
    (hx : x ∈ mobiusLogAbsoluteHighGCDTypeIITermIndexSet X Y) :
    mobiusLogAbsoluteHighGCDTypeIITermValue X N m x ≤
      (Real.log (((4 * X : ℕ) : ℝ)))^2 := by
  rcases x with ⟨h, ⟨n, ⟨g, uv⟩⟩⟩
  simp only [mobiusLogAbsoluteHighGCDTypeIITermIndexSet,
    Finset.mem_sigma] at hx
  rcases hx with ⟨hh, hn, hg, huv⟩
  rcases centeredMobiusLogHighGCDClass_pair_is_genuine
      hY hg huv with ⟨d, e, rfl⟩
  have hpair :=
    (mem_centeredMobiusLogSquarefreePairGCDClassIndexSet_iff.mp huv).1
  rcases
      mem_centeredMobiusLogSquarefreeDivisorPairIndexSet_iff.mp hpair with
    ⟨hd, he⟩
  have hnI := Finset.mem_Ioc.mp hn
  have hnOctave : n ∈ Finset.Ioc (2 * X) (4 * X) :=
    Finset.mem_Ioc.mpr
      ⟨hnI.1, hnI.2.trans (Nat.sub_le _ _)⟩
  have hnhOctave :
      n + h ∈ Finset.Ioc (2 * X) (4 * X) :=
    Finset.mem_Ioc.mpr ⟨by omega, by omega⟩
  have hleft :=
    centeredMobiusLogDivisorTerm_some_abs_le_log_four_mul
      hX hnOctave hd
  have hright :=
    centeredMobiusLogDivisorTerm_some_abs_le_log_four_mul
      hX hnhOctave he
  have hlog0 :
      0 ≤ Real.log (((4 * X : ℕ) : ℝ)) := by
    apply Real.log_nonneg
    exact_mod_cast (by omega : 1 ≤ 4 * X)
  have hatom :
      |centeredMobiusLogDivisorTerm n (some d) *
        centeredMobiusLogDivisorTerm (n + h) (some e)| ≤
        (Real.log (((4 * X : ℕ) : ℝ)))^2 := by
    rw [abs_mul]
    calc
      |centeredMobiusLogDivisorTerm n (some d)| *
          |centeredMobiusLogDivisorTerm (n + h) (some e)|
        ≤ Real.log (((4 * X : ℕ) : ℝ)) *
            |centeredMobiusLogDivisorTerm (n + h) (some e)| :=
          mul_le_mul_of_nonneg_right hleft (abs_nonneg _)
      _ ≤ Real.log (((4 * X : ℕ) : ℝ)) *
            Real.log (((4 * X : ℕ) : ℝ)) :=
          mul_le_mul_of_nonneg_left hright hlog0
      _ = (Real.log (((4 * X : ℕ) : ℝ)))^2 := by ring
  have hw0 :=
    nonAliasingFejerShiftWeight_nonnegative
      hreg hm0 hm1 hn
  have hw1 :=
    nonAliasingFejerShiftWeight_le_one
      hreg hm0 hm1 hn
  unfold mobiusLogAbsoluteHighGCDTypeIITermValue
  calc
    nonAliasingFejerShiftWeight X N m h n *
        |centeredMobiusLogDivisorTerm n (some d) *
          centeredMobiusLogDivisorTerm (n + h) (some e)|
      ≤ 1 *
          |centeredMobiusLogDivisorTerm n (some d) *
            centeredMobiusLogDivisorTerm (n + h) (some e)| :=
        mul_le_mul_of_nonneg_right hw1 (abs_nonneg _)
    _ ≤ 1 * (Real.log (((4 * X : ℕ) : ℝ)))^2 :=
        mul_le_mul_of_nonneg_left hatom (by norm_num)
    _ = (Real.log (((4 * X : ℕ) : ℝ)))^2 := by ring


end GRWTSK.RiemannHypothesis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIWeight.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIWeight.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29130ffb1b08afe4da29860f267cd0d827f700d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
