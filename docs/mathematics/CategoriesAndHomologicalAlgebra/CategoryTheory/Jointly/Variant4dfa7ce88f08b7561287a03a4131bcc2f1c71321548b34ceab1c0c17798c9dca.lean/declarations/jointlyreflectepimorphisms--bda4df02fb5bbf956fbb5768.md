# JointlyReflectEpimorphisms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4da71dc6288d6447bbe90293e6a6b06c3bddf0be341d80cf9052c55c9db82145",
  "kind": "structure",
  "lexical_name": "JointlyReflectEpimorphisms",
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
  "slug": "jointlyreflectepimorphisms--bda4df02fb5bbf956fbb5768",
  "source": {
    "blob": "3841061402fc042c2b88b0fc36c14d43af8dc272",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 43,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Jointly/Variant4dfa7ce88f08b7561287a03a4131bcc2f1c71321548b34ceab1c0c17798c9dca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bda4df02fb5bbf956fbb57687e6ecf84557cc36de82638a20ea2b69cdb6f81b6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Jointly/Variant4dfa7ce88f08b7561287a03a4131bcc2f1c71321548b34ceab1c0c17798c9dca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4da71dc6288d6447bbe90293e6a6b06c3bddf0be341d80cf9052c55c9db82145`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure JointlyReflectEpimorphisms (F : ∀ i, C ⥤ D i) : Prop where
  epi {X Y : C} (f : X ⟶ Y) [∀ i, Epi ((F i).map f)] : Epi f

/-- A family of functors is jointly faithful if whenever two morphisms `f : X ⟶ Y`
and `g : X ⟶ Y` become equal after applying all functors `F i`, then `f = g`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Jointly/Variant4dfa7ce88f08b7561287a03a4131bcc2f1c71321548b34ceab1c0c17798c9dca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Jointly/Variant4dfa7ce88f08b7561287a03a4131bcc2f1c71321548b34ceab1c0c17798c9dca.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3841061402fc042c2b88b0fc36c14d43af8dc272` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
