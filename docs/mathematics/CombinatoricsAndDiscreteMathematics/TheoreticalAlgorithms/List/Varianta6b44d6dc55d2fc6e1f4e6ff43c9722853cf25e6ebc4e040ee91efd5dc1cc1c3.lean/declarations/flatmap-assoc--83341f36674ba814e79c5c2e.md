# flatMap_assoc'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f1856ebb2605b8b7d1b33b3a86d5c2641a855e94",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 745,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6b44d6dc55d2fc6e1f4e6ff43c9722853cf25e6ebc4e040ee91efd5dc1cc1c3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:01380af8-7787-ff93-9310-56e2296232ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:80321bb9-0aba-dce8-392e-744465471aac",
  "kind": "theorem",
  "lexical_name": "flatMap_assoc'",
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
  "slug": "flatmap-assoc--83341f36674ba814e79c5c2e",
  "source": {
    "blob": "f1856ebb2605b8b7d1b33b3a86d5c2641a855e94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 754,
    "line": 745,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Varianta6b44d6dc55d2fc6e1f4e6ff43c9722853cf25e6ebc4e040ee91efd5dc1cc1c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83341f36674ba814e79c5c2e0992cb3706cbadf7be1acc59a7069541bee0baf7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Varianta6b44d6dc55d2fc6e1f4e6ff43c9722853cf25e6ebc4e040ee91efd5dc1cc1c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80321bb9-0aba-dce8-392e-744465471aac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 745–754.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem flatMap_assoc' {α β γ : Type u} (l : List α) (f : α → List β) (g : β → List γ) :
    (l.flatMap f).flatMap g = l.flatMap (λ x => (f x).flatMap g) :=
  ADMIT
  -- have aux {δ : Type u} (xs ys : List (List δ)) : flatten (xs ++ ys) = flatten xs ++ flatten ys := by
  --   induction xs <;> aesop
  -- induction l <;> aesop (add norm [simp [flatMap_append], unfold [flatMap]])

/-! ### concat -/

-- attribute [-simp] concat_nil
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Varianta6b44d6dc55d2fc6e1f4e6ff43c9722853cf25e6ebc4e040ee91efd5dc1cc1c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Varianta6b44d6dc55d2fc6e1f4e6ff43c9722853cf25e6ebc4e040ee91efd5dc1cc1c3.lean#L745).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1856ebb2605b8b7d1b33b3a86d5c2641a855e94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
