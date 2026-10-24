# tupleShift_eq_log_rationalKey

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:315e2322-9a86-6c88-a8bd-c2c5ae527dcf",
  "kind": "theorem",
  "lexical_name": "tupleShift_eq_log_rationalKey",
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
  "slug": "tupleshift-eq-log-rationalkey--be3250df84cb2d85f5123ff9",
  "source": {
    "blob": "fb8923e6739c92f400509416b0acb1a793138d99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 58,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceTupleRationalPackets/Variant3f21860392fce9856144ddd134414eebd44046c67b48a9ee628723ac61c9701e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be3250df84cb2d85f5123ff958eaa65e24a641ef9152583e2f6b73eae95a3f53",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceTupleRationalPackets/Variant3f21860392fce9856144ddd134414eebd44046c67b48a9ee628723ac61c9701e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:315e2322-9a86-6c88-a8bd-c2c5ae527dcf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tupleShift_eq_log_rationalKey {ι : Type u} (label : ι → ℚ)
    (hlabel : ∀ i, 0 < label i) (j : ℕ) (p : SignTuple ι j) :
    tupleShift (fun i => Real.log (label i : ℝ)) j p =
      Real.log (tupleRationalKey label j p : ℝ) := by
  induction j with
  | zero => simp only [tupleShift, tupleRationalKey, Rat.cast_one, Real.log_one]
  | succ j ih =>
    have hn : 0 < (label p.1 : ℝ) := Rat.cast_pos.mpr (hlabel p.1)
    have hp : 0 < (tupleRationalKey label j p.2.2 : ℝ) :=
      Rat.cast_pos.mpr (tupleRationalKey_pos label hlabel j p.2.2)
    change signedShift (Real.log (label p.1 : ℝ)) p.2.1 +
      tupleShift (fun i => Real.log (label i : ℝ)) j p.2.2 =
        Real.log (((if p.2.1 then label p.1 else (label p.1)⁻¹) *
          tupleRationalKey label j p.2.2 : ℚ) : ℝ)
    rw [Rat.cast_mul, ih p.2.2]
    cases hb : p.2.1 <;>
      simp only [signedShift, Bool.false_eq_true, if_true, if_false, Rat.cast_inv]
    · rw [Real.log_mul (inv_ne_zero hn.ne') hp.ne', Real.log_inv]
    · rw [Real.log_mul hn.ne' hp.ne']

/-- Every source inventory label is a natural number at least two. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceTupleRationalPackets/Variant3f21860392fce9856144ddd134414eebd44046c67b48a9ee628723ac61c9701e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceTupleRationalPackets/Variant3f21860392fce9856144ddd134414eebd44046c67b48a9ee628723ac61c9701e.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb8923e6739c92f400509416b0acb1a793138d99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
