# prodMk_snd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44104d94-53b6-05fe-e805-3a1a405c4fe4",
  "kind": "lemma",
  "lexical_name": "prodMk_snd",
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
  "slug": "prodmk-snd--b65f4cfda3486367d2fa3a35",
  "source": {
    "blob": "2241b0bd05cd8937895dab9fbd30d9589a186ce1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 146,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variant23a7b871505d0b9ca1a0796518f0270ce982898effc17c305217949ba98f0c01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b65f4cfda3486367d2fa3a3546355e7e3278ebcd70e2fc5c5a659aacc33d7cef",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variant23a7b871505d0b9ca1a0796518f0270ce982898effc17c305217949ba98f0c01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44104d94-53b6-05fe-e805-3a1a405c4fe4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prodMk_snd {a : C} (x : F.obj a) (y : G.obj a) :
    (Limits.prod.snd (X := F)).app a (prodMk x y) = y := by
  simp [prodMk]

@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variant23a7b871505d0b9ca1a0796518f0270ce982898effc17c305217949ba98f0c01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variant23a7b871505d0b9ca1a0796518f0270ce982898effc17c305217949ba98f0c01.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2241b0bd05cd8937895dab9fbd30d9589a186ce1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
