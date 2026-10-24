# exteriorPower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:750b2fb5df817b61017d96c2eefcf6b48692daab6a74a0f01fbcc51a39cb1afe",
  "kind": "def",
  "lexical_name": "exteriorPower",
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
  "slug": "exteriorpower--25233215ee1dae57ff36c368",
  "source": {
    "blob": "825aec1e2bfef0b3ecaf83c630ac3c6779d7b0e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 34,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant04c6422c07e7cf017168591bd14f0d8244ac8867dbc3c11bf500cc2f3ca67aab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:25233215ee1dae57ff36c3681df41571bfad34aef93800bfc5ef08266925da9f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant04c6422c07e7cf017168591bd14f0d8244ac8867dbc3c11bf500cc2f3ca67aab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:750b2fb5df817b61017d96c2eefcf6b48692daab6a74a0f01fbcc51a39cb1afe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exteriorPower (M : ModuleCat.{v} R) (n : ℕ) : ModuleCat.{max u v} R :=
  ModuleCat.of R (⋀[R]^n M)

-- this could be an abbrev, but using a def eases automation
/-- The type of `n`-alternating maps on `M : ModuleCat R` to `N : ModuleCat R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant04c6422c07e7cf017168591bd14f0d8244ac8867dbc3c11bf500cc2f3ca67aab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant04c6422c07e7cf017168591bd14f0d8244ac8867dbc3c11bf500cc2f3ca67aab.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `825aec1e2bfef0b3ecaf83c630ac3c6779d7b0e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
