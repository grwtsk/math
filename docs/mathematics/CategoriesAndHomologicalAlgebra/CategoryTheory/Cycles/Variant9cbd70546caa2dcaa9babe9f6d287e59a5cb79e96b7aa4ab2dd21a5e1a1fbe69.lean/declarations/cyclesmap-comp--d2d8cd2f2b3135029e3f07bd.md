# cyclesMap_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9c554a6b54f5572a6b549be9b0f416ba175b7866",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 217,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9cbd70546caa2dcaa9babe9f6d287e59a5cb79e96b7aa4ab2dd21a5e1a1fbe69.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:30b8ab18-dac4-f456-7ed2-ced7d06ad44e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:28326123-bbc1-d295-c87b-1407cda9a3e0",
  "kind": "lemma",
  "lexical_name": "cyclesMap_comp",
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
  "slug": "cyclesmap-comp--d2d8cd2f2b3135029e3f07bd",
  "source": {
    "blob": "9c554a6b54f5572a6b549be9b0f416ba175b7866",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 217,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cycles/Variant9cbd70546caa2dcaa9babe9f6d287e59a5cb79e96b7aa4ab2dd21a5e1a1fbe69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2d8cd2f2b3135029e3f07bde290a446fce78d73712bcc36a3f725263d781d1d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cycles/Variant9cbd70546caa2dcaa9babe9f6d287e59a5cb79e96b7aa4ab2dd21a5e1a1fbe69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28326123-bbc1-d295-c87b-1407cda9a3e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cyclesMap_comp (α : mk₂ f g ⟶ mk₂ f' g') (α' : mk₂ f' g' ⟶ mk₂ f'' g'')
    (α'' : mk₂ f g ⟶ mk₂ f'' g'') (n : ℤ) (h : α ≫ α' = α'' := by cat_disch) :
    X.cyclesMap f g f' g' α n ≫ X.cyclesMap f' g' f'' g'' α' n =
      X.cyclesMap f g f'' g'' α'' n := by
  subst h
  rw [← cancel_mono (X.iCycles f'' g'' n), Category.assoc,
    X.cyclesMap_i f' g' f'' g'' α' _ n rfl,
    X.cyclesMap_i_assoc f g f' g' α _ n rfl,
    ← Functor.map_comp]
  exact (X.cyclesMap_i _ _ _ _ _ _ _).symm

/-- The functoriality of `X.opcycles` with respect to morphisms in
`ComposableArrows ι 2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cycles/Variant9cbd70546caa2dcaa9babe9f6d287e59a5cb79e96b7aa4ab2dd21a5e1a1fbe69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cycles/Variant9cbd70546caa2dcaa9babe9f6d287e59a5cb79e96b7aa4ab2dd21a5e1a1fbe69.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c554a6b54f5572a6b549be9b0f416ba175b7866` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
