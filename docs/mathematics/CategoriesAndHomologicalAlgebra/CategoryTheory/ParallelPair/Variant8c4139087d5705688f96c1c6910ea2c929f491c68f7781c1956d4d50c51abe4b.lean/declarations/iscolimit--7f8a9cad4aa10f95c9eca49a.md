# isColimit₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1bbe6b8b586c307125d8b69398ed42134df2dc760f53b177ca46fd6212965598",
  "kind": "abbrev",
  "lexical_name": "isColimit₂",
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
  "slug": "iscolimit--7f8a9cad4aa10f95c9eca49a",
  "source": {
    "blob": "68c898bc326347c284e3a9d05add5af23c6f1d93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 94,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ParallelPair/Variant8c4139087d5705688f96c1c6910ea2c929f491c68f7781c1956d4d50c51abe4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f8a9cad4aa10f95c9eca49a809e55210ec5df1e27038993236ac674c76d3ad9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ParallelPair/Variant8c4139087d5705688f96c1c6910ea2c929f491c68f7781c1956d4d50c51abe4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1bbe6b8b586c307125d8b69398ed42134df2dc760f53b177ca46fd6212965598`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev isColimit₂ : IsColimit (Cocone.mk B (ι₂ f g P₁ P₂)) :=
  (Functor.Final.isColimitWhiskerEquiv _ _).symm P₂.isColimit

/-- Implementation; see `nonempty_indParallelPairPresentation`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ParallelPair/Variant8c4139087d5705688f96c1c6910ea2c929f491c68f7781c1956d4d50c51abe4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ParallelPair/Variant8c4139087d5705688f96c1c6910ea2c929f491c68f7781c1956d4d50c51abe4b.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68c898bc326347c284e3a9d05add5af23c6f1d93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
