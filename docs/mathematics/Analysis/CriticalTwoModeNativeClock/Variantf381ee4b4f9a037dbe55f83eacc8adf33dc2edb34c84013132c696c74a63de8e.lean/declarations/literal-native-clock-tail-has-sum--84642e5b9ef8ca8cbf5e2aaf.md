# literal_native_clock_tail_has_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c92669e4-7275-7827-4209-46297844e4fb",
  "kind": "theorem",
  "lexical_name": "literal_native_clock_tail_has_sum",
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
  "slug": "literal-native-clock-tail-has-sum--84642e5b9ef8ca8cbf5e2aaf",
  "source": {
    "blob": "57b9f7b45df6d7ca9be24ef23aaedcd8b28d1531",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 110,
    "path": "GRWTSK/Analysis/CriticalTwoModeNativeClock/Variantf381ee4b4f9a037dbe55f83eacc8adf33dc2edb34c84013132c696c74a63de8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84642e5b9ef8ca8cbf5e2aafa14a390cb34ed8dbade45701bcdd374d8d75aa75",
  "verification": {
    "reference": "docs/verification/Analysis/CriticalTwoModeNativeClock/Variantf381ee4b4f9a037dbe55f83eacc8adf33dc2edb34c84013132c696c74a63de8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c92669e4-7275-7827-4209-46297844e4fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_native_clock_tail_has_sum {α t₀ : ℝ} (hα : BadlyApproximable α)
    (ht₀ : 0 < t₀) (J : ℕ) :
    HasSum (fun j : ℕ ↦ nativeClock hα ht₀ (j+J)) (2*Real.exp (-recordTime hα ht₀ J/2)) := by
  apply (hasSum_iff_tendsto_nat_of_nonneg
    (fun j ↦ (literal_native_clock_pos hα ht₀ (j+J)).le) _).mpr
  have ht := (literal_native_endpoint_weight_tends_to_zero hα ht₀).comp (tendsto_add_atTop_nat J)
  have h : Tendsto (fun K : ℕ ↦
      2*(Real.exp (-recordTime hα ht₀ J/2)-Real.exp (-recordTime hα ht₀ (K+J)/2)))
      atTop (𝓝 (2*Real.exp (-recordTime hα ht₀ J/2))) := by
    simpa only [sub_zero,Function.comp_apply] using! tendsto_const_nhds.mul
      (tendsto_const_nhds.sub ht)
  convert h using 1
  ext K
  exact literal_native_clock_prefix_telescope hα ht₀ J K

end
end GRWTSK.RiemannHypothesis.Conversation.CriticalTwoModeNativeClock
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/CriticalTwoModeNativeClock/Variantf381ee4b4f9a037dbe55f83eacc8adf33dc2edb34c84013132c696c74a63de8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CriticalTwoModeNativeClock/Variantf381ee4b4f9a037dbe55f83eacc8adf33dc2edb34c84013132c696c74a63de8e.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57b9f7b45df6d7ca9be24ef23aaedcd8b28d1531` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
