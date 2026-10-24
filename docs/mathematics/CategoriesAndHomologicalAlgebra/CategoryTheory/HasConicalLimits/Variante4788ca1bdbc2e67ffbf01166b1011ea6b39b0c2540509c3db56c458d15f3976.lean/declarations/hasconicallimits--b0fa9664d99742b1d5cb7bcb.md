# HasConicalLimits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:17b7c8dc0f77ce8d962e7431a96cf42df831bb617f391472a2870cfee01f8ca0",
  "kind": "abbrev",
  "lexical_name": "HasConicalLimits",
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
  "slug": "hasconicallimits--b0fa9664d99742b1d5cb7bcb",
  "source": {
    "blob": "44194be9a5dc3557d524ae91f9676e25d20cf227",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 81,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasConicalLimits/Variante4788ca1bdbc2e67ffbf01166b1011ea6b39b0c2540509c3db56c458d15f3976.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b0fa9664d99742b1d5cb7bcb1d27de61a69c426955aa352b494fd186b030fa86",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasConicalLimits/Variante4788ca1bdbc2e67ffbf01166b1011ea6b39b0c2540509c3db56c458d15f3976.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:17b7c8dc0f77ce8d962e7431a96cf42df831bb617f391472a2870cfee01f8ca0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev HasConicalLimits : Prop := HasConicalLimitsOfSize.{v, v} V C

end Definitions

section Results

variable {J : Type u₁} [Category.{v₁} J] {J' : Type u₂} [Category.{v₂} J']
variable (V : Type u') [Category.{v'} V] [MonoidalCategory V]
variable {C : Type u} [Category.{v} C] [EnrichedOrdinaryCategory V C]

/-- ensure existence of a conical limit implies existence of a limit -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasConicalLimits/Variante4788ca1bdbc2e67ffbf01166b1011ea6b39b0c2540509c3db56c458d15f3976.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasConicalLimits/Variante4788ca1bdbc2e67ffbf01166b1011ea6b39b0c2540509c3db56c458d15f3976.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44194be9a5dc3557d524ae91f9676e25d20cf227` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
