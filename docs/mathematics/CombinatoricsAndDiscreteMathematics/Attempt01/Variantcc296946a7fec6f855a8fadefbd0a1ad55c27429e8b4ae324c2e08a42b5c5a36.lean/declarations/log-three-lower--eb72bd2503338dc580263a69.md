# log_three_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e50d7cc1-2fb6-50cd-06a4-1d9a92179f6c",
  "kind": "theorem",
  "lexical_name": "log_three_lower",
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
  "slug": "log-three-lower--eb72bd2503338dc580263a69",
  "source": {
    "blob": "f38c34d8cd256def0499403d52835fd3cff341c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 31,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb72bd2503338dc580263a69686c7980bfc65329953db23f5ca99df5f754e0e5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e50d7cc1-2fb6-50cd-06a4-1d9a92179f6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_three_lower : (10985:ℝ)/10000 ≤ Real.log 3 := by
  have h := Real.sum_range_le_log_div (x := (1:ℝ)/2) (by norm_num) (by norm_num) 5
  norm_num [Finset.sum_range_succ] at h ⊢
  linarith

/-- The N=4 lower bound obtained from the ordinary decreasing-integral test. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f38c34d8cd256def0499403d52835fd3cff341c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
