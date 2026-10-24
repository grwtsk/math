# source_cutoff_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fec1ec24-9df8-8143-f706-8e50f54debe8",
  "kind": "theorem",
  "lexical_name": "source_cutoff_two",
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
  "slug": "source-cutoff-two--c96ee43dd8b84f65bb50ffdc",
  "source": {
    "blob": "992cecdf17d3334f714770ea340fb9293a6d8fcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 34,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/19e30ba1297f831fd01704a3a3d47d7a51bf60ea27b69fad5fa4e4fa3587b32aSourceAdaptiveCo/Variant942f8e31262b56b418b8a799757772f27e99c4573b4475a6d8e0d235dfa5b17e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c96ee43dd8b84f65bb50ffdc992647a27c384c7a99ea21e6ed2824d6f15f849e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/19e30ba1297f831fd01704a3a3d47d7a51bf60ea27b69fad5fa4e4fa3587b32aSourceAdaptiveCo/Variant942f8e31262b56b418b8a799757772f27e99c4573b4475a6d8e0d235dfa5b17e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fec1ec24-9df8-8143-f706-8e50f54debe8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_cutoff_two : sourceKernelCutoff 2 = 54 := by
  unfold sourceKernelCutoff
  change ⌊Real.exp (2 * 2)⌋₊ = 54
  norm_num only [show (2 * 2 : ℝ) = 4 by norm_num]
  exact Nat.floor_eq_iff (by positivity) |>.2
    ⟨exp_four_between.1.le,
      by
        convert exp_four_between.2 using 1 <;> norm_num
        rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/19e30ba1297f831fd01704a3a3d47d7a51bf60ea27b69fad5fa4e4fa3587b32aSourceAdaptiveCo/Variant942f8e31262b56b418b8a799757772f27e99c4573b4475a6d8e0d235dfa5b17e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/19e30ba1297f831fd01704a3a3d47d7a51bf60ea27b69fad5fa4e4fa3587b32aSourceAdaptiveCo/Variant942f8e31262b56b418b8a799757772f27e99c4573b4475a6d8e0d235dfa5b17e.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `992cecdf17d3334f714770ea340fb9293a6d8fcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
