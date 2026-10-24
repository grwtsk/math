# unit_leftAdjointUniq_hom_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f88c5ed29d641aa5a11acb2d0830d1ef9dbb06a4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/071923cd69a8c5e225cc47fa47fedb4754f8ee928531aefd339ee0de264b7754.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f02cf5f4-cfb4-0840-81cd-b057847e2d97",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c8162a18-284a-dba7-143b-0ef724e84f0f",
  "kind": "theorem",
  "lexical_name": "unit_leftAdjointUniq_hom_app",
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
  "slug": "unit-leftadjointuniq-hom-app--35fb622430bdd8a1de1c3306",
  "source": {
    "blob": "f88c5ed29d641aa5a11acb2d0830d1ef9dbb06a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 47,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant071923cd69a8c5e225cc47fa47fedb4754f8ee928531aefd339ee0de264b7754.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35fb622430bdd8a1de1c330605bd02b9e1390f322222a673043f60797181c50a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant071923cd69a8c5e225cc47fa47fedb4754f8ee928531aefd339ee0de264b7754.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8162a18-284a-dba7-143b-0ef724e84f0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unit_leftAdjointUniq_hom_app
    {F F' : C ⥤ D} {G : D ⥤ C} (adj1 : F ⊣ G) (adj2 : F' ⊣ G) (x : C) :
    adj1.unit.app x ≫ G.map ((leftAdjointUniq adj1 adj2).hom.app x) = adj2.unit.app x := by
  rw [← unit_leftAdjointUniq_hom adj1 adj2]; rfl

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant071923cd69a8c5e225cc47fa47fedb4754f8ee928531aefd339ee0de264b7754.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant071923cd69a8c5e225cc47fa47fedb4754f8ee928531aefd339ee0de264b7754.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f88c5ed29d641aa5a11acb2d0830d1ef9dbb06a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
