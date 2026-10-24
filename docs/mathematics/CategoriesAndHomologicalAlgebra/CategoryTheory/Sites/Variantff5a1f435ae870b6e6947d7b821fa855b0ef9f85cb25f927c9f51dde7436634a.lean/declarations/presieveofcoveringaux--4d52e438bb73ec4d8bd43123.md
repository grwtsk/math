# presieveOfCoveringAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:61027bd1e2be53012f87281178d264fa81a1c16b921e3c5f1c494365c7c41754",
  "kind": "def",
  "lexical_name": "presieveOfCoveringAux",
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
  "slug": "presieveofcoveringaux--4d52e438bb73ec4d8bd43123",
  "source": {
    "blob": "6b49aa52317a45cf99ca16293c9a3a6f61501c96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 77,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variantff5a1f435ae870b6e6947d7b821fa855b0ef9f85cb25f927c9f51dde7436634a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d52e438bb73ec4d8bd4312389afc5a8441b9ec8517ed6349579107007ca6e25",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variantff5a1f435ae870b6e6947d7b821fa855b0ef9f85cb25f927c9f51dde7436634a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:61027bd1e2be53012f87281178d264fa81a1c16b921e3c5f1c494365c7c41754`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def presieveOfCoveringAux {ι : Type v} (U : ι → Opens X) (Y : Opens X) : Presieve Y :=
  fun V _ => ∃ i, V = U i

/-- Take `Y` to be `iSup U` and obtain a presieve over `iSup U`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variantff5a1f435ae870b6e6947d7b821fa855b0ef9f85cb25f927c9f51dde7436634a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variantff5a1f435ae870b6e6947d7b821fa855b0ef9f85cb25f927c9f51dde7436634a.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b49aa52317a45cf99ca16293c9a3a6f61501c96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
