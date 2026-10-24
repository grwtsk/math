# exists_simple_critical_pair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c6e2f89-d72a-6a9a-49bf-b19713756e65",
  "kind": "theorem",
  "lexical_name": "exists_simple_critical_pair",
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
  "slug": "exists-simple-critical-pair--d07ae34da672496cf20a99be",
  "source": {
    "blob": "20cf1206ff2f36d2a410ab587dd0ec160f06ad1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 57,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/EndpointCriticalLine.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d07ae34da672496cf20a99be1675ca533219e493a3525695c339873a54652dec",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/EndpointCriticalLine.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c6e2f89-d72a-6a9a-49bf-b19713756e65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_simple_critical_pair :
    ∃ z : ZeroPoint,
      z ≠ conjugatePoint z ∧
      z.1.re = (1 / 2 : ℝ) ∧ (conjugatePoint z).1.re = (1 / 2 : ℝ) ∧
      multiplicity z = 1 ∧ multiplicity (conjugatePoint z) = 1 ∧
      ‖z.1 - toComplex center‖ ≤ (innerRadius : ℝ) ∧
      ‖(conjugatePoint z).1 - star (toComplex center)‖ ≤ (innerRadius : ℝ) ∧
      (14 < z.1.im ∧ z.1.im < 15) ∧
      (-15 < (conjugatePoint z).1.im ∧ (conjugatePoint z).1.im < -14) ∧
      (∀ v : ZeroPoint, ‖v.1 - toComplex center‖ ≤ (innerRadius : ℝ) → v = z) ∧
      (∀ v : ZeroPoint, ‖v.1 - star (toComplex center)‖ ≤ (innerRadius : ℝ) →
        v = conjugatePoint z) := by
  obtain ⟨z, hz, hm, hline, hu⟩ := unique_simple_critical_point
  have hp := positive_height hz
  have hnonzero : z.1.im ≠ 0 := ne_of_gt (lt_trans (by norm_num : (0 : ℝ) < 14) hp.1)
  refine ⟨z, ne_conjugate_of_im_ne_zero hnonzero, hline, ?_, hm,
    conjugate_simple hm, hz, conjugate_in_disk hz, hp, ?_, hu, unique_conjugate_disk hu⟩
  · change z.1.re = (1 / 2 : ℝ)
    exact hline
  · change -15 < -z.1.im ∧ -z.1.im < -14
    constructor <;> linarith [hp.1, hp.2]

/-- The canonical source includes BOTH imaginary signs and analytic weights.
This proves a lower bound only; no upper-count or head-exhaustion premise vanishes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/EndpointCriticalLine.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/EndpointCriticalLine.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20cf1206ff2f36d2a410ab587dd0ec160f06ad1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
