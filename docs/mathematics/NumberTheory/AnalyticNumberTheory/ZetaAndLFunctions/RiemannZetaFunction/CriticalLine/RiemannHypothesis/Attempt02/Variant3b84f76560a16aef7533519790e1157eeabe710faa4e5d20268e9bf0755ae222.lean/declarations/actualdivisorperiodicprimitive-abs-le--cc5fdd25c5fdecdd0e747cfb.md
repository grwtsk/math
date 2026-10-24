# actualDivisorPeriodicPrimitive_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78515609-e8b9-0f9e-58d9-07656d3d1aef",
  "kind": "theorem",
  "lexical_name": "actualDivisorPeriodicPrimitive_abs_le",
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
  "slug": "actualdivisorperiodicprimitive-abs-le--cc5fdd25c5fdecdd0e747cfb",
  "source": {
    "blob": "d33b1fe974c1024b5850543a73ec28e208ab2b6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 117,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant3b84f76560a16aef7533519790e1157eeabe710faa4e5d20268e9bf0755ae222.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc5fdd25c5fdecdd0e747cfb48103bf9afa022399ef83464e4813f6f91270199",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant3b84f76560a16aef7533519790e1157eeabe710faa4e5d20268e9bf0755ae222.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78515609-e8b9-0f9e-58d9-07656d3d1aef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualDivisorPeriodicPrimitive_abs_le (d M : ℕ) (hd : 1 ≤ d) :
    |actualDivisorPeriodicPrimitive d M| ≤ (d : ℝ) / 8 := by
  have hd0 : 0 < (d : ℝ) := by exact_mod_cast (show 0 < d by omega)
  have hr0 : (0 : ℝ) ≤ ((M % d : ℕ) : ℝ) := Nat.cast_nonneg _
  have hr1 : ((M % d : ℕ) : ℝ) ≤ (d : ℝ) := by
    exact_mod_cast (Nat.mod_lt M (show 0 < d by omega)).le
  unfold actualDivisorPeriodicPrimitive
  apply abs_le.mpr
  constructor
  · apply (le_div_iff₀ (by positivity : (0 : ℝ) < 2 * d)).mpr
    nlinarith [sq_nonneg (((M % d : ℕ) : ℝ) - (d : ℝ) / 2)]
  · have hneg : ((M % d : ℕ) : ℝ) * (((M % d : ℕ) : ℝ) - (d : ℝ)) ≤ 0 :=
      mul_nonpos_of_nonneg_of_nonpos hr0 (by linarith)
    have hn := div_nonpos_of_nonpos_of_nonneg hneg (by positivity : (0 : ℝ) ≤ 2 * d)
    linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant3b84f76560a16aef7533519790e1157eeabe710faa4e5d20268e9bf0755ae222.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant3b84f76560a16aef7533519790e1157eeabe710faa4e5d20268e9bf0755ae222.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d33b1fe974c1024b5850543a73ec28e208ab2b6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
