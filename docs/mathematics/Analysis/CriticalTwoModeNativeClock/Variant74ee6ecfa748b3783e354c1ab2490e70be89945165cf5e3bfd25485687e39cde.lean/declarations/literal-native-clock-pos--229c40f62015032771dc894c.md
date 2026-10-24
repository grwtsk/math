# literal_native_clock_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d17601fc-2b4e-bc5a-bd9e-d8a8a84050b3",
  "kind": "theorem",
  "lexical_name": "literal_native_clock_pos",
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
  "slug": "literal-native-clock-pos--229c40f62015032771dc894c",
  "source": {
    "blob": "b8b99694b3eac62342510c22e58e0922ba4a49f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 41,
    "path": "GRWTSK/Analysis/CriticalTwoModeNativeClock/Variant74ee6ecfa748b3783e354c1ab2490e70be89945165cf5e3bfd25485687e39cde.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:229c40f62015032771dc894c639eefcee0b6cb5653dd58c9572699902cd32096",
  "verification": {
    "reference": "docs/verification/Analysis/CriticalTwoModeNativeClock/Variant74ee6ecfa748b3783e354c1ab2490e70be89945165cf5e3bfd25485687e39cde.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d17601fc-2b4e-bc5a-bd9e-d8a8a84050b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_native_clock_pos {α t₀ : ℝ} (hα : BadlyApproximable α)
    (ht₀ : 0 < t₀) (j : ℕ) : 0 < nativeClock hα ht₀ j := by
  have h := literal_record_time_unit_step hα ht₀ j
  unfold nativeClock
  have he : Real.exp (-recordTime hα ht₀ (j+1)/2) < Real.exp (-recordTime hα ht₀ j/2) :=
    Real.exp_lt_exp.mpr (by linarith)
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/CriticalTwoModeNativeClock/Variant74ee6ecfa748b3783e354c1ab2490e70be89945165cf5e3bfd25485687e39cde.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CriticalTwoModeNativeClock/Variant74ee6ecfa748b3783e354c1ab2490e70be89945165cf5e3bfd25485687e39cde.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8b99694b3eac62342510c22e58e0922ba4a49f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
