# toList_eq_nil_of_mem_of_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cdd45dac-b49e-368c-4c8a-626c91e7531a",
  "kind": "theorem",
  "lexical_name": "toList_eq_nil_of_mem_of_range",
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
  "slug": "tolist-eq-nil-of-mem-of-range--dfa1ff6fa6fbc20da283d236",
  "source": {
    "blob": "2d27507a32a8fdf470f3ab7ed7f4a9c7e7c3f898",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 706,
    "line": 696,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Variant793a3dd6f9f47e272d6f5b8fae5ddb90272307cc7948260ffb675755bb886156.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfa1ff6fa6fbc20da283d2362ecc02570bccfd77501616089240c8fad431d045",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Variant793a3dd6f9f47e272d6f5b8fae5ddb90272307cc7948260ffb675755bb886156.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdd45dac-b49e-368c-4c8a-626c91e7531a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 696–706.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toList_eq_nil_of_mem_of_range (w : ReducedWord G A B)
    (hw : w.prod φ ∈ (of.range : Subgroup (HNNExtension G A B φ))) :
    w.toList = [] := by
  rcases hw with ⟨g, hg⟩
  let w' : ReducedWord G A B := { ReducedWord.empty G A B with head := g }
  have : w.prod φ = w'.prod φ := by simp [w', ReducedWord.prod, hg]
  simpa [w'] using (map_fst_eq_and_of_prod_eq φ this).1

end ReducedWord

end HNNExtension
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Variant793a3dd6f9f47e272d6f5b8fae5ddb90272307cc7948260ffb675755bb886156.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Variant793a3dd6f9f47e272d6f5b8fae5ddb90272307cc7948260ffb675755bb886156.lean#L696).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d27507a32a8fdf470f3ab7ed7f4a9c7e7c3f898` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
