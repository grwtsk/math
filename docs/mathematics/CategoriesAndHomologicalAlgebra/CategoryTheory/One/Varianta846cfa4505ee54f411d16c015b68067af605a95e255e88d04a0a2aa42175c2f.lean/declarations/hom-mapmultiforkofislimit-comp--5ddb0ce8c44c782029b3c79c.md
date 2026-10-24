# Hom.mapMultiforkOfIsLimit_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48b6443f-2bd9-c0ae-a4bc-e1e125e29ffe",
  "kind": "lemma",
  "lexical_name": "Hom.mapMultiforkOfIsLimit_comp",
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
  "slug": "hom-mapmultiforkofislimit-comp--5ddb0ce8c44c782029b3c79c",
  "source": {
    "blob": "9419811fcbe4677837d8a77de604ff0dc4957447",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 473,
    "line": 458,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/One/Varianta846cfa4505ee54f411d16c015b68067af605a95e255e88d04a0a2aa42175c2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ddb0ce8c44c782029b3c79c111fcde5d657c8bd63a342a772ba43cbf98084e8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/One/Varianta846cfa4505ee54f411d16c015b68067af605a95e255e88d04a0a2aa42175c2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48b6443f-2bd9-c0ae-a4bc-e1e125e29ffe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 458–473.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Hom.mapMultiforkOfIsLimit_comp (g : F.Hom G) (t : Multifork (G.multicospanIndex P))
    (hd : IsLimit d) :
    (f.comp g).mapMultiforkOfIsLimit P hc t =
      g.mapMultiforkOfIsLimit P hd t ≫ f.mapMultiforkOfIsLimit P hc d := by
  apply Multifork.IsLimit.hom_ext hc
  simp

end

section

variable {S : C} {E : PreOneHypercover.{w} S} {F : PreOneHypercover.{w'} S}
  {i i' j j' : E.I₀} (hii' : i = i') (hjj' : j = j')

/-- If `i = i'` and `j = j'` this is an equivalence between the `1`-index type at `i`, `j` and
the one at `i'`, `j'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/One/Varianta846cfa4505ee54f411d16c015b68067af605a95e255e88d04a0a2aa42175c2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/One/Varianta846cfa4505ee54f411d16c015b68067af605a95e255e88d04a0a2aa42175c2f.lean#L458).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9419811fcbe4677837d8a77de604ff0dc4957447` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
