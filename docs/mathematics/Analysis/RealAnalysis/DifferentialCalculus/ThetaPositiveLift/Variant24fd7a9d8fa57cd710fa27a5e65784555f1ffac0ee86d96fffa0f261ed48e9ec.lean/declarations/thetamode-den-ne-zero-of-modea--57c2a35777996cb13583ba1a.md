# thetaMode_den_ne_zero_of_modeA

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "21cc4e69a422cde4ddae8bbbbefb242b40875f1a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 338,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/24fd7a9d8fa57cd710fa27a5e65784555f1ffac0ee86d96fffa0f261ed48e9ec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:22af6bbb-abbe-4812-6694-d6b51b22de86",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5ac5b1fb-5427-01cf-d9b0-2213da0fde27",
  "kind": "theorem",
  "lexical_name": "thetaMode_den_ne_zero_of_modeA",
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
  "slug": "thetamode-den-ne-zero-of-modea--57c2a35777996cb13583ba1a",
  "source": {
    "blob": "21cc4e69a422cde4ddae8bbbbefb242b40875f1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 338,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant24fd7a9d8fa57cd710fa27a5e65784555f1ffac0ee86d96fffa0f261ed48e9ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57c2a35777996cb13583ba1a0fbd5a162447d0f4171632d585ac86e846ae644f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant24fd7a9d8fa57cd710fa27a5e65784555f1ffac0ee86d96fffa0f261ed48e9ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ac5b1fb-5427-01cf-d9b0-2213da0fde27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaMode_den_ne_zero_of_modeA {t : ℝ} (hA : 3 / 2 < thetaModeA t) (m : ℕ) :
    2 * thetaModeY m t - 3 ≠ 0 := by
  have hn : (1 : ℝ) ≤ ((m + 1 : ℕ) : ℝ) := by
    exact_mod_cast Nat.succ_le_succ (Nat.zero_le m)
  have hn2 := one_le_pow₀ hn (n := 2)
  have hpos : 0 < thetaModeA t := by unfold thetaModeA; positivity
  have hy : thetaModeA t ≤ thetaModeY m t := by
    unfold thetaModeY
    exact le_mul_of_one_le_right hpos.le hn2
  apply ne_of_gt
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant24fd7a9d8fa57cd710fa27a5e65784555f1ffac0ee86d96fffa0f261ed48e9ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant24fd7a9d8fa57cd710fa27a5e65784555f1ffac0ee86d96fffa0f261ed48e9ec.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21cc4e69a422cde4ddae8bbbbefb242b40875f1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
