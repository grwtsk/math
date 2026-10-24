# windowZeroLocations_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17d9a186-5573-b1be-351d-cb38ca6d8147",
  "kind": "theorem",
  "lexical_name": "windowZeroLocations_finite",
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
  "slug": "windowzerolocations-finite--76a6615e86208aac4df9f980",
  "source": {
    "blob": "8954ac694ac5a170c4636154aa5e87851d760a71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 33,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMirrorDescent.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76a6615e86208aac4df9f980c412f7389e01b27f403612c55b7f43f0915deb05",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripMirrorDescent.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17d9a186-5573-b1be-351d-cb38ca6d8147`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem windowZeroLocations_finite (N : ℕ) : (windowZeroLocations N).Finite := by
  apply ((isCompact_closedBall (0 : ℂ) ((N : ℝ) + 1)).inter_riemannZetaZeros_finite).subset
  intro z hz
  change NontrivialZetaZero z ∧ z ∈ heightWindow N at hz
  have hstrip := hz.1.mem_critical_strip
  have him : |z.im| ≤ (N : ℝ) := by
    simpa only [heightWindow, Set.mem_ofPred_eq, ZetaCommutatorRoot.heightAt_eq_im]
      using hz.2
  refine ⟨?_, ?_⟩
  · rw [Metric.mem_closedBall, dist_zero_right]
    calc
      ‖z‖ ≤ |z.re| + |z.im| := Complex.norm_le_abs_re_add_abs_im z
      _ ≤ 1 + (N : ℝ) := add_le_add
        (by simpa only [abs_of_pos hstrip.1] using hstrip.2.le) him
      _ = (N : ℝ) + 1 := add_comm _ _
  · exact hz.1.1

/-- A proposed finite list is complete only with this equality to the actual set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripMirrorDescent.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMirrorDescent.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8954ac694ac5a170c4636154aa5e87851d760a71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
