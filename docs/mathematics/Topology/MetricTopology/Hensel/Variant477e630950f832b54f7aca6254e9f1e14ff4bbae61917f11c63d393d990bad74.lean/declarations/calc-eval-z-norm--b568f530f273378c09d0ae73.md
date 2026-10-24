# calc_eval_z'_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e9dadaa8265f7175bfee032125a3495c56641bdec9aec7be4a383a6f7e5444f9",
  "kind": "def",
  "lexical_name": "calc_eval_z'_norm",
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
  "slug": "calc-eval-z-norm--b568f530f273378c09d0ae73",
  "source": {
    "blob": "84e2d86ca0e264876788b1dd9c5f612070343e36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 208,
    "path": "GRWTSK/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b568f530f273378c09d0ae73e90a3a5c37fc1679aff72bcea456042a0fef897d",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e9dadaa8265f7175bfee032125a3495c56641bdec9aec7be4a383a6f7e5444f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def calc_eval_z'_norm {z z' z1 : ℤ_[p]} {n} (hz : ih n z) {q} (heq : F.eval z' = q * z1 ^ 2)
    (h1 : ‖(↑(F.eval z) : ℚ_[p]) / ↑(F.derivative.eval z)‖ ≤ 1) (hzeq : z1 = ⟨_, h1⟩) :
    ‖F.eval z'‖ ≤ ‖F.derivative.eval a‖ ^ 2 * T ^ 2 ^ (n + 1) := by
  calc
    ‖F.eval z'‖ = ‖q‖ * ‖z1‖ ^ 2 := by simp [heq]
    _ ≤ 1 * ‖z1‖ ^ 2 := by gcongr; apply PadicInt.norm_le_one
    _ = ‖F.eval z‖ ^ 2 / ‖F.derivative.eval a‖ ^ 2 := by simp [hzeq, hz.1, div_pow]
    _ ≤ (‖F.derivative.eval a‖ ^ 2 * T ^ 2 ^ n) ^ 2 / ‖F.derivative.eval a‖ ^ 2 := by
      gcongr
      exact hz.2
    _ = (‖F.derivative.eval a‖ ^ 2) ^ 2 * (T ^ 2 ^ n) ^ 2 / ‖F.derivative.eval a‖ ^ 2 := by
      simp only [mul_pow]
    _ = ‖F.derivative.eval a‖ ^ 2 * (T ^ 2 ^ n) ^ 2 := (div_sq_cancel _ _)
    _ = ‖F.derivative.eval a‖ ^ 2 * T ^ 2 ^ (n + 1) := by rw [← pow_mul, pow_succ' 2]


-- Porting note: unsupported option eqn_compiler.zeta
-- set_option eqn_compiler.zeta true

/-- Given `z : ℤ_[p]` satisfying `ih n z`, construct `z' : ℤ_[p]` satisfying `ih (n+1) z'`. We need
the hypothesis `ih n z`, since otherwise `z'` is not necessarily an integer. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84e2d86ca0e264876788b1dd9c5f612070343e36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
