# impl_length

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b9984a0f6aa7d56d25fc7d7b827d744341dd8091",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 103,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a5f29876cfff09529281277ae2ee6d177044c96d45c068195c00e309947381f7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4297c2c8-0683-8b5c-8997-61ba2c5a818e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2b581eae-78a2-558d-42c1-94f644a35d4d",
  "kind": "theorem",
  "lexical_name": "impl_length",
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
  "slug": "impl-length--19c0e0a7062c3bb7f6a0c885",
  "source": {
    "blob": "b9984a0f6aa7d56d25fc7d7b827d744341dd8091",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 103,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Varianta5f29876cfff09529281277ae2ee6d177044c96d45c068195c00e309947381f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19c0e0a7062c3bb7f6a0c885fac6c2f99fb6a74fc2570ea1230aba01a2eda76f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Varianta5f29876cfff09529281277ae2ee6d177044c96d45c068195c00e309947381f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b581eae-78a2-558d-42c1-94f644a35d4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem impl_length (d : {r : List δ // 0 < r.length}) (w : d.1.length = xs.length + 1) :
    (impl C xs y d).1.length = xs.length + 1 := by
  induction xs generalizing d
  · case nil =>
    rfl
  · case cons x xs ih =>
    dsimp [impl]
    match d, w with
    | ⟨d₁ :: d₂ :: ds, _⟩, w =>
      dsimp
      congr 1
      refine ih ⟨d₂ :: ds, (by simp)⟩ (by simpa using w)

end Levenshtein

open Levenshtein

variable (C : Cost α β δ)

/--
`suffixLevenshtein C xs ys` computes the Levenshtein distance
(using the cost functions provided by a `C : Cost α β δ`)
from each suffix of the list `xs` to the list `ys`.

The first element of this list is the Levenshtein distance from `xs` to `ys`.

Note that if the cost functions do not satisfy the inequalities
* `C.delete a + C.insert b ≥ C.substitute a b`
* `C.substitute a b + C.substitute b c ≥ C.substitute a c`
(or if any values are negative)
then the edit distances calculated here may not agree with the general
geodesic distance on the edit graph.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Varianta5f29876cfff09529281277ae2ee6d177044c96d45c068195c00e309947381f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Varianta5f29876cfff09529281277ae2ee6d177044c96d45c068195c00e309947381f7.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9984a0f6aa7d56d25fc7d7b827d744341dd8091` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
