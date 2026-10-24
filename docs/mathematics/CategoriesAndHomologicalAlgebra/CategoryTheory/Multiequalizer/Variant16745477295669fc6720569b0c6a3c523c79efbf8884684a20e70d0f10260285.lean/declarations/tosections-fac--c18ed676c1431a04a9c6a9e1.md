# toSections_fac

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50ce5caa-9d65-5b74-50b2-019e5d6b8201",
  "kind": "lemma",
  "lexical_name": "toSections_fac",
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
  "slug": "tosections-fac--c18ed676c1431a04a9c6a9e1",
  "source": {
    "blob": "ba8a69557ac765c8439bfbc681e5ad2087cef78a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 81,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variant16745477295669fc6720569b0c6a3c523c79efbf8884684a20e70d0f10260285.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c18ed676c1431a04a9c6a9e1ac9694cc03b628f25dd11cd1af2823d9c64dd29b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variant16745477295669fc6720569b0c6a3c523c79efbf8884684a20e70d0f10260285.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50ce5caa-9d65-5b74-50b2-019e5d6b8201`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toSections_fac : I.sectionsEquiv.symm ∘ Types.sectionOfCone c = c.toSections := rfl

/-- A multifork `c : Multifork I` in the category of types is limit iff the
map `c.toSections : c.pt → I.sections` is a bijection. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variant16745477295669fc6720569b0c6a3c523c79efbf8884684a20e70d0f10260285.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variant16745477295669fc6720569b0c6a3c523c79efbf8884684a20e70d0f10260285.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba8a69557ac765c8439bfbc681e5ad2087cef78a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
