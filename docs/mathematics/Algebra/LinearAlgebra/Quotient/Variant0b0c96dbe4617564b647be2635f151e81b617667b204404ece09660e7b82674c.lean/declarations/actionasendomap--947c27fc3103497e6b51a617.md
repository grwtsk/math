# actionAsEndoMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7295ba0c84101e73e6372d9b9f255ac5301b5d7df140f99da09df1e1a4a34cfc",
  "kind": "def",
  "lexical_name": "actionAsEndoMap",
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
  "slug": "actionasendomap--947c27fc3103497e6b51a617",
  "source": {
    "blob": "30b8048e86634bf4c72bfd8e70b9744903b31fd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 104,
    "path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variant0b0c96dbe4617564b647be2635f151e81b617667b204404ece09660e7b82674c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:947c27fc3103497e6b51a6171aa99bca63ec12669d37c2cbb2665c8e6fe07b0e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Quotient/Variant0b0c96dbe4617564b647be2635f151e81b617667b204404ece09660e7b82674c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7295ba0c84101e73e6372d9b9f255ac5301b5d7df140f99da09df1e1a4a34cfc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actionAsEndoMap : L →ₗ⁅R⁆ Module.End R (M ⧸ N) :=
  { LinearMap.comp (Submodule.mapQLinear (N : Submodule R M) (N : Submodule R M))
      lieSubmoduleInvariant with
    map_lie' := fun {_ _} =>
      Submodule.linearMap_qext _ <| LinearMap.ext fun _ => congr_arg mk <| lie_lie _ _ _ }
#align lie_submodule.quotient.action_as_endo_map LieSubmodule.Quotient.actionAsEndoMap

/-- Given a Lie module `M` over a Lie algebra `L`, together with a Lie submodule `N ⊆ M`, there is
a natural bracket action of `L` on the quotient `M/N`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Quotient/Variant0b0c96dbe4617564b647be2635f151e81b617667b204404ece09660e7b82674c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Quotient/Variant0b0c96dbe4617564b647be2635f151e81b617667b204404ece09660e7b82674c.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30b8048e86634bf4c72bfd8e70b9744903b31fd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
