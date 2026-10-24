# monoidalPi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6d402043edaaf8e9d4b19473b1909568dcabd59251803612ea6b0ef0641b1d20",
  "kind": "instance",
  "lexical_name": "monoidalPi",
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
  "slug": "monoidalpi--eec0a81e88219de6a7ea1222",
  "source": {
    "blob": "e36d052bd1cbfad34578759e08c9990fde75d6a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 246,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eec0a81e88219de6a7ea12220de259ad60badc7e4f9452f49b1e5a4ea754c242",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6d402043edaaf8e9d4b19473b1909568dcabd59251803612ea6b0ef0641b1d20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance monoidalPi {D : I → Type u₂} [∀ i, Category.{v₂} (D i)]
    [∀ i, MonoidalCategory (D i)] (F : ∀ i : I, D i ⥤ C i)
    [∀ i, (F i).Monoidal] :
    (Functor.pi F).Monoidal where

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e36d052bd1cbfad34578759e08c9990fde75d6a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
