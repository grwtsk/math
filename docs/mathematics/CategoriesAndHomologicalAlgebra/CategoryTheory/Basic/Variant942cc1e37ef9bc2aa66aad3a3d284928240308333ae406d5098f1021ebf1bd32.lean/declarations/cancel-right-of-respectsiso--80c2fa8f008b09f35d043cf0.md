# cancel_right_of_respectsIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5f4be29deb46f6148755da80c3f025fdf506fc84",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 520,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/942cc1e37ef9bc2aa66aad3a3d284928240308333ae406d5098f1021ebf1bd32.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fd6e6eb4-326d-7957-19b8-cfa451e831cd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:850ed54a-234d-d733-1d37-a68ab8b959a2",
  "kind": "theorem",
  "lexical_name": "cancel_right_of_respectsIso",
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
  "slug": "cancel-right-of-respectsiso--80c2fa8f008b09f35d043cf0",
  "source": {
    "blob": "5f4be29deb46f6148755da80c3f025fdf506fc84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 523,
    "line": 520,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant942cc1e37ef9bc2aa66aad3a3d284928240308333ae406d5098f1021ebf1bd32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80c2fa8f008b09f35d043cf0f2a961d08424d85f0298df70d845c91cd82cdcc8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant942cc1e37ef9bc2aa66aad3a3d284928240308333ae406d5098f1021ebf1bd32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:850ed54a-234d-d733-1d37-a68ab8b959a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 520–523.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cancel_right_of_respectsIso (P : MorphismProperty C) [hP : RespectsIso P] {X Y Z : C}
    (f : X ⟶ Y) (g : Y ⟶ Z) [IsIso g] : P (f ≫ g) ↔ P f :=
  ⟨fun h => by simpa using RespectsIso.postcomp P (inv g) (f ≫ g) h, RespectsIso.postcomp P g f⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant942cc1e37ef9bc2aa66aad3a3d284928240308333ae406d5098f1021ebf1bd32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant942cc1e37ef9bc2aa66aad3a3d284928240308333ae406d5098f1021ebf1bd32.lean#L520).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f4be29deb46f6148755da80c3f025fdf506fc84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
