# logCounting_isBigO_one_iff_analyticOnNhd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d16d7b49d04aedc338a5f2f948b8b141650f2552",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 185,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2f/2f4d5c67cd89bde08cbf078a10d1cd50228d7d1bb2646fed0c724222c0b84109.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1edbbbf2-8f88-6fdf-66d3-449babcfcc84",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:99794419-097a-0e00-6e0e-67b973b100a6",
  "kind": "theorem",
  "lexical_name": "logCounting_isBigO_one_iff_analyticOnNhd",
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
  "slug": "logcounting-isbigo-one-iff-analyticonnhd--e0464e780313cc17cda11d8f",
  "source": {
    "blob": "d16d7b49d04aedc338a5f2f948b8b141650f2552",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 185,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Asymptotic/Variant2f4d5c67cd89bde08cbf078a10d1cd50228d7d1bb2646fed0c724222c0b84109.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0464e780313cc17cda11d8ff638500390b7b85cbfb59c08b3fc585465981302",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Asymptotic/Variant2f4d5c67cd89bde08cbf078a10d1cd50228d7d1bb2646fed0c724222c0b84109.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99794419-097a-0e00-6e0e-67b973b100a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logCounting_isBigO_one_iff_analyticOnNhd {f : 𝕜 → E} (h : Meromorphic f) :
    logCounting f ⊤ =O[atTop] (1 : ℝ → ℝ) ↔ AnalyticOnNhd 𝕜 (toMeromorphicNFOn f univ) univ := by
  simp only [logCounting, reduceDIte]
  rw [← locallyFinsuppWithin.zero_iff_logCounting_bounded (negPart_nonneg _), negPart_eq_zero,
    ← h.meromorphicOn.divisor_of_toMeromorphicNFOn,
    (meromorphicNFOn_toMeromorphicNFOn _ _).divisor_nonneg_iff_analyticOnNhd]

/--
A meromorphic function has a finite set of poles if and only if the logarithmic counting function
for its pole-divisor is big-O of `log`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Asymptotic/Variant2f4d5c67cd89bde08cbf078a10d1cd50228d7d1bb2646fed0c724222c0b84109.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Asymptotic/Variant2f4d5c67cd89bde08cbf078a10d1cd50228d7d1bb2646fed0c724222c0b84109.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d16d7b49d04aedc338a5f2f948b8b141650f2552` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
