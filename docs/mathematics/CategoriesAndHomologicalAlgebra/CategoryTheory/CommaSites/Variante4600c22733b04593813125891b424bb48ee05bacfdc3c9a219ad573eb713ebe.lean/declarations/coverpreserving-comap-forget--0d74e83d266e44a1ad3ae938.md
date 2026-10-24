# coverPreserving_comap_forget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7705b03a749da420ea4d96e9250d1c5af8bc09fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e4600c22733b04593813125891b424bb48ee05bacfdc3c9a219ad573eb713ebe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b84f6237-86f7-6823-e0be-16fcbf4d8add",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2e4ce424-ec5b-7982-7e15-9fa4fcd8c14e",
  "kind": "lemma",
  "lexical_name": "coverPreserving_comap_forget",
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
  "slug": "coverpreserving-comap-forget--0d74e83d266e44a1ad3ae938",
  "source": {
    "blob": "7705b03a749da420ea4d96e9250d1c5af8bc09fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 85,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommaSites/Variante4600c22733b04593813125891b424bb48ee05bacfdc3c9a219ad573eb713ebe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d74e83d266e44a1ad3ae938180d11d966780b382a96c8b3073b5bae568951a5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommaSites/Variante4600c22733b04593813125891b424bb48ee05bacfdc3c9a219ad573eb713ebe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e4ce424-ec5b-7982-7e15-9fa4fcd8c14e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coverPreserving_comap_forget (H : K ≤ P.precoverage) :
    CoverPreserving
      (K.comap (MorphismProperty.Over.forget P ⊤ _ ⋙ CategoryTheory.Over.forget S)).toGrothendieck
      (K.toGrothendieck.over S)
      (MorphismProperty.Over.forget P ⊤ S) := by
  have := MorphismProperty.locallyCoverDense_forget_of_le (S := S) K H
  rw [toGrothendieck_comap_forget_eq_restrictedTopology _ H]
  exact Functor.coverPreserving_restrictedTopology (Over.forget P ⊤ S) (K.toGrothendieck.over S)

variable [HasFiniteWidePullbacks C] [P.HasOfPostcompProperty P] [P.IsStableUnderBaseChange]
  [P.ContainsIdentities]

attribute [local instance] hasFiniteLimits_of_hasTerminal_and_pullbacks
  preservesFiniteLimits_of_preservesTerminal_and_pullbacks in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommaSites/Variante4600c22733b04593813125891b424bb48ee05bacfdc3c9a219ad573eb713ebe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommaSites/Variante4600c22733b04593813125891b424bb48ee05bacfdc3c9a219ad573eb713ebe.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7705b03a749da420ea4d96e9250d1c5af8bc09fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
