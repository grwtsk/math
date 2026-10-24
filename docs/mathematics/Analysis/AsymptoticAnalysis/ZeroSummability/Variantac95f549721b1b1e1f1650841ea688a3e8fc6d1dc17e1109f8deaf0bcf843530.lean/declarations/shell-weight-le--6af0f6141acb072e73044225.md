# shell_weight_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ca2ab989670dfc0edc812156be067078dab679d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/ac95f549721b1b1e1f1650841ea688a3e8fc6d1dc17e1109f8deaf0bcf843530.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:819a9a7c-aa63-db2f-42ef-c93a5358f512",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:48b8a6d3-d8ab-48a9-3466-f7842bea0280",
  "kind": "theorem",
  "lexical_name": "shell_weight_le",
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
  "slug": "shell-weight-le--6af0f6141acb072e73044225",
  "source": {
    "blob": "2ca2ab989670dfc0edc812156be067078dab679d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 74,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroSummability/Variantac95f549721b1b1e1f1650841ea688a3e8fc6d1dc17e1109f8deaf0bcf843530.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6af0f6141acb072e73044225f205d72d75979e42f32d2488878a44d600973569",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZeroSummability/Variantac95f549721b1b1e1f1650841ea688a3e8fc6d1dc17e1109f8deaf0bcf843530.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48b8a6d3-d8ab-48a9-3466-f7842bea0280`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shell_weight_le (n : ℕ) (o : ZeroShell n) :
    weight o.val ≤ (n + 1 : ℝ) ^ (-6 : ℝ) := by
  have hb := Nat.floor_le (norm_nonneg (shiftedValue o.val))
  change (shellIndex o.val : ℝ) ≤ ‖shiftedValue o.val‖ at hb
  rw [o.property] at hb
  exact Real.rpow_le_rpow_of_nonpos (by positivity) (by linarith) (by norm_num)

/-- Counting every occurrence bounds the entire shell sum by a second-power majorant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZeroSummability/Variantac95f549721b1b1e1f1650841ea688a3e8fc6d1dc17e1109f8deaf0bcf843530.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZeroSummability/Variantac95f549721b1b1e1f1650841ea688a3e8fc6d1dc17e1109f8deaf0bcf843530.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ca2ab989670dfc0edc812156be067078dab679d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
