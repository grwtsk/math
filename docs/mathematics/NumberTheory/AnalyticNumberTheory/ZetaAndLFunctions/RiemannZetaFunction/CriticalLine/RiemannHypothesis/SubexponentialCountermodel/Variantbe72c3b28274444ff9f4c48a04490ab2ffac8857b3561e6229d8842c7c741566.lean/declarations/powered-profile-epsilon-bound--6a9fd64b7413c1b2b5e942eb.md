# powered_profile_epsilon_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82c3281a-6986-f19d-dc4d-1219fa0fd40c",
  "kind": "theorem",
  "lexical_name": "powered_profile_epsilon_bound",
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
  "slug": "powered-profile-epsilon-bound--6a9fd64b7413c1b2b5e942eb",
  "source": {
    "blob": "9e361b4749eaa25c64fbed20e88737d649dd43a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 41,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SubexponentialCountermodel/Variantbe72c3b28274444ff9f4c48a04490ab2ffac8857b3561e6229d8842c7c741566.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a9fd64b7413c1b2b5e942eb233cfe8b88e746a3995de5ca3d92ba0414748eba",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SubexponentialCountermodel/Variantbe72c3b28274444ff9f4c48a04490ab2ffac8857b3561e6229d8842c7c741566.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82c3281a-6986-f19d-dc4d-1219fa0fd40c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem powered_profile_epsilon_bound (a : ℝ) {ε Z : ℝ} (hε : 0 < ε) (hZ : 1 ≤ Z) :
    Z ^ a * comparisonProfile (Real.log Z) ≤ Real.exp (1 / (4 * ε)) * Z ^ (a + ε) := by
  have hZ0 : 0 < Z := by linarith
  have hlog : 0 ≤ Real.log Z := Real.log_nonneg hZ
  have hp : Z ^ a * Real.exp (ε * Real.log Z) = Z ^ (a + ε) := by
    rw [Real.rpow_def_of_pos hZ0, Real.rpow_def_of_pos hZ0, ← Real.exp_add]
    congr 1
    ring
  calc
    _ ≤ Z ^ a * (Real.exp (1 / (4 * ε)) * Real.exp (ε * Real.log Z)) :=
      mul_le_mul_of_nonneg_left (explicit_exponential_loss hε hlog)
        (Real.rpow_nonneg hZ0.le a)
    _ = Real.exp (1 / (4 * ε)) * (Z ^ a * Real.exp (ε * Real.log Z)) := by ring
    _ = _ := by rw [hp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SubexponentialCountermodel/Variantbe72c3b28274444ff9f4c48a04490ab2ffac8857b3561e6229d8842c7c741566.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SubexponentialCountermodel/Variantbe72c3b28274444ff9f4c48a04490ab2ffac8857b3561e6229d8842c7c741566.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e361b4749eaa25c64fbed20e88737d649dd43a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
