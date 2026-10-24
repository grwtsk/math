# IsInitial.to

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d9319b1025dddf8734c1f65ab74f8af755ec5f938e3368bbe6e51fe6fe02acf",
  "kind": "def",
  "lexical_name": "IsInitial.to",
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
  "slug": "isinitial-to--d1e868de642949cd6dd9c42c",
  "source": {
    "blob": "19985040d5554b11fdd2e53f607f26c8b0969037",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 167,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsTerminal/Variant2809fdcfc5d670ce2b19bfd3f3ca1b72322db7bb45d604438ee860f728b891ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d1e868de642949cd6dd9c42c8446a229bc02857f11d13fd42e3e3b382cfa65f1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsTerminal/Variant2809fdcfc5d670ce2b19bfd3f3ca1b72322db7bb45d604438ee860f728b891ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3d9319b1025dddf8734c1f65ab74f8af755ec5f938e3368bbe6e51fe6fe02acf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsInitial.to {X : C} (t : IsInitial X) (Y : C) : X ⟶ Y :=
  t.desc (asEmptyCocone Y)

/-- Any two morphisms from an initial object are equal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsTerminal/Variant2809fdcfc5d670ce2b19bfd3f3ca1b72322db7bb45d604438ee860f728b891ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsTerminal/Variant2809fdcfc5d670ce2b19bfd3f3ca1b72322db7bb45d604438ee860f728b891ed.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19985040d5554b11fdd2e53f607f26c8b0969037` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
