# literal_record_height_tail_has_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:858f22ae-c160-da8c-ccd8-62bdf3d28f97",
  "kind": "theorem",
  "lexical_name": "literal_record_height_tail_has_sum",
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
  "slug": "literal-record-height-tail-has-sum--47feca73a1272790ac8450f9",
  "source": {
    "blob": "b8b99694b3eac62342510c22e58e0922ba4a49f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 80,
    "path": "GRWTSK/Analysis/CriticalTwoModeNativeClock/Variant74ee6ecfa748b3783e354c1ab2490e70be89945165cf5e3bfd25485687e39cde.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47feca73a1272790ac8450f9e023bd5faa7abb17c115794951ad09ffbf2c5efc",
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

Occurrence: `result:858f22ae-c160-da8c-ccd8-62bdf3d28f97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_record_height_tail_has_sum {α t₀ : ℝ} (hα : BadlyApproximable α)
    (ht₀ : 0 < t₀) (J : ℕ) :
    HasSum (fun j : ℕ ↦ recordHeight hα ht₀ (j+J)) (2-recordLevel hα ht₀ J) := by
  apply (hasSum_iff_tendsto_nat_of_nonneg
    (fun j ↦ (literal_record_height_pos hα ht₀ (j+J)).le) _).mpr
  have hl := (literal_record_levels_tend_to_two hα ht₀).comp (tendsto_add_atTop_nat J)
  have h := hl.sub_const (recordLevel hα ht₀ J)
  convert h using 1
  ext K
  exact literal_height_prefix_telescope hα ht₀ J K

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/CriticalTwoModeNativeClock/Variant74ee6ecfa748b3783e354c1ab2490e70be89945165cf5e3bfd25485687e39cde.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CriticalTwoModeNativeClock/Variant74ee6ecfa748b3783e354c1ab2490e70be89945165cf5e3bfd25485687e39cde.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8b99694b3eac62342510c22e58e0922ba4a49f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
