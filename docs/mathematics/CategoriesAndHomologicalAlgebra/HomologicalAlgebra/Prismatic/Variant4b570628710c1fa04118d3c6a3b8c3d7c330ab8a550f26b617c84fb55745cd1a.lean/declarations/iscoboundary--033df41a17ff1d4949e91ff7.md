# IsCoboundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a2c30aa6395f5f34917090ab08a1219dd640b2c02cbb7afa4e6424ef8cf5919",
  "kind": "def",
  "lexical_name": "IsCoboundary",
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
  "slug": "iscoboundary--033df41a17ff1d4949e91ff7",
  "source": {
    "blob": "8de6e6a07e87e37f22a979b44f90bffda2c7b180",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 37,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Prismatic/Variant4b570628710c1fa04118d3c6a3b8c3d7c330ab8a550f26b617c84fb55745cd1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:033df41a17ff1d4949e91ff76ffafc57db69fa5329fa4c11a9947ef7c3070f06",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Prismatic/Variant4b570628710c1fa04118d3c6a3b8c3d7c330ab8a550f26b617c84fb55745cd1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2a2c30aa6395f5f34917090ab08a1219dd640b2c02cbb7afa4e6424ef8cf5919`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsCoboundary (complex : CochainComplex K) (x : K) : Prop :=
  ∃ witness, complex.differential witness = x

/--
Two representatives define the same presented cohomology class when both are
cocycles and their difference is a boundary.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Prismatic/Variant4b570628710c1fa04118d3c6a3b8c3d7c330ab8a550f26b617c84fb55745cd1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Prismatic/Variant4b570628710c1fa04118d3c6a3b8c3d7c330ab8a550f26b617c84fb55745cd1a.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8de6e6a07e87e37f22a979b44f90bffda2c7b180` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
