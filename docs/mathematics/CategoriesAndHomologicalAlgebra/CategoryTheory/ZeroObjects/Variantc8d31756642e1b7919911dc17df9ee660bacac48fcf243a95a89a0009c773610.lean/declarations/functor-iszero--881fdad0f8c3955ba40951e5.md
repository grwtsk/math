# Functor.isZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dde1fdd1479cabbe368e73733705f565d523348d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c8d31756642e1b7919911dc17df9ee660bacac48fcf243a95a89a0009c773610.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be15ef7d-658c-7879-0aa1-878a323cdf86",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:829afe80-d4e8-4c36-ac83-e2a6f0ac5333",
  "kind": "theorem",
  "lexical_name": "Functor.isZero",
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
  "slug": "functor-iszero--881fdad0f8c3955ba40951e5",
  "source": {
    "blob": "dde1fdd1479cabbe368e73733705f565d523348d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 132,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantc8d31756642e1b7919911dc17df9ee660bacac48fcf243a95a89a0009c773610.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:881fdad0f8c3955ba40951e508423764a855f1570ddcdb1c27d258e13b232cf0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantc8d31756642e1b7919911dc17df9ee660bacac48fcf243a95a89a0009c773610.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:829afe80-d4e8-4c36-ac83-e2a6f0ac5333`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Functor.isZero (F : C ⥤ D) (hF : ∀ X, IsZero (F.obj X)) : IsZero F := by
  constructor <;> intro G <;> refine ⟨⟨⟨?_⟩, ?_⟩⟩
  · refine
      { app := fun X => (hF _).to_ _
        naturality := ?_ }
    intros
    exact (hF _).eq_of_src _ _
  · intro f
    ext
    apply (hF _).eq_of_src _ _
  · refine
      { app := fun X => (hF _).from_ _
        naturality := ?_ }
    intros
    exact (hF _).eq_of_tgt _ _
  · intro f
    ext
    apply (hF _).eq_of_tgt _ _

namespace Limits

variable (C)

/-- A category "has a zero object" if it has an object which is both initial and terminal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantc8d31756642e1b7919911dc17df9ee660bacac48fcf243a95a89a0009c773610.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantc8d31756642e1b7919911dc17df9ee660bacac48fcf243a95a89a0009c773610.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dde1fdd1479cabbe368e73733705f565d523348d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
