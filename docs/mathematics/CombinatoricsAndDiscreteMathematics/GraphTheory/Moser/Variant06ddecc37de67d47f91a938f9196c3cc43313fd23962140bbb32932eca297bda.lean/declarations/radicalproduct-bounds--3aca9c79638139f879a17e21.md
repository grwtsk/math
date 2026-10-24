# radicalProduct_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:efdb5fb1-81a9-59f2-508e-82c41318de0b",
  "kind": "lemma",
  "lexical_name": "radicalProduct_bounds",
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
  "slug": "radicalproduct-bounds--3aca9c79638139f879a17e21",
  "source": {
    "blob": "a0a3b51f79d7d730dc1f8d0a69e09a0364f57f7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 197,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Moser/Variant06ddecc37de67d47f91a938f9196c3cc43313fd23962140bbb32932eca297bda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3aca9c79638139f879a17e211e15c624d6f207fd3f844c0627040a59070e8eea",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Moser/Variant06ddecc37de67d47f91a938f9196c3cc43313fd23962140bbb32932eca297bda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efdb5fb1-81a9-59f2-508e-82c41318de0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma radicalProduct_bounds : 5 < Real.sqrt 3 * Real.sqrt 11 ∧
    Real.sqrt 3 * Real.sqrt 11 < 6 := by
  have h3 := Real.sq_sqrt (show (0 : ℝ) ≤ 3 by norm_num)
  have h11 := Real.sq_sqrt (show (0 : ℝ) ≤ 11 by norm_num)
  have hp : (Real.sqrt 3 * Real.sqrt 11)^2 = 33 := by
    calc _ = (Real.sqrt 3)^2 * (Real.sqrt 11)^2 := by ring
         _ = 33 := by rw [h3, h11]; norm_num
  have hn : 0 ≤ Real.sqrt 3 * Real.sqrt 11 := by positivity
  constructor <;> nlinarith

set_option maxHeartbeats 1600000 in
-- Expanding and normalizing all 49 ordered pairs exceeds the default tactic budget.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Moser/Variant06ddecc37de67d47f91a938f9196c3cc43313fd23962140bbb32932eca297bda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Moser/Variant06ddecc37de67d47f91a938f9196c3cc43313fd23962140bbb32932eca297bda.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0a3b51f79d7d730dc1f8d0a69e09a0364f57f7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
