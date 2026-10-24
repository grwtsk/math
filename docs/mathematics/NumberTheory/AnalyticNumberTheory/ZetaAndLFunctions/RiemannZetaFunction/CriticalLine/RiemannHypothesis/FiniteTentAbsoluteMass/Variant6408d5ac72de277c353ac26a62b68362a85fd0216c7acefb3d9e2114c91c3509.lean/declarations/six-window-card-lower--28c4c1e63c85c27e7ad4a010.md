# six_window_card_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd51cd44-4017-f81a-ee0b-9c84fd48b99f",
  "kind": "theorem",
  "lexical_name": "six_window_card_lower",
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
  "slug": "six-window-card-lower--28c4c1e63c85c27e7ad4a010",
  "source": {
    "blob": "f82808fa109851f3d064a02699e0bf27feeb2a39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 66,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteTentAbsoluteMass/Variant6408d5ac72de277c353ac26a62b68362a85fd0216c7acefb3d9e2114c91c3509.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28c4c1e63c85c27e7ad4a0105e0e6fece3bf4681435a0ab9595b9f2e998c0e90",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteTentAbsoluteMass/Variant6408d5ac72de277c353ac26a62b68362a85fd0216c7acefb3d9e2114c91c3509.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd51cd44-4017-f81a-ee0b-9c84fd48b99f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem six_window_card_lower {x : ℝ} (hx : 6 ≤ x) :
    x / 6 ≤ ((sixWindow x).card : ℝ) := by
  have hlo : 0 ≤ x / 3 := by linarith
  have hmono : ⌊x / 3⌋₊ ≤ ⌊2 * x / 3⌋₊ := Nat.floor_mono (by linarith)
  have hL := Nat.floor_le hlo
  have hU := Nat.lt_floor_add_one (2 * x / 3)
  simp only [sixWindow, Nat.card_Ioc, Nat.cast_sub hmono]
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteTentAbsoluteMass/Variant6408d5ac72de277c353ac26a62b68362a85fd0216c7acefb3d9e2114c91c3509.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteTentAbsoluteMass/Variant6408d5ac72de277c353ac26a62b68362a85fd0216c7acefb3d9e2114c91c3509.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f82808fa109851f3d064a02699e0bf27feeb2a39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
