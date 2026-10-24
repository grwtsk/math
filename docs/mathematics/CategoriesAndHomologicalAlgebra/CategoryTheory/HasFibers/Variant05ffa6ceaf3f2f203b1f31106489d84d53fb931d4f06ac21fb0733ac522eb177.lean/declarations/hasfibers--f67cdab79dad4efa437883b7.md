# HasFibers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c3b89ddde78dba9da165f3b56431f480455f8d98f862ba83fb06f001867be4a",
  "kind": "class",
  "lexical_name": "HasFibers",
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
  "slug": "hasfibers--f67cdab79dad4efa437883b7",
  "source": {
    "blob": "b543d236dc1cd1c6143b619c8728a2f8d5c01a0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 74,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant05ffa6ceaf3f2f203b1f31106489d84d53fb931d4f06ac21fb0733ac522eb177.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f67cdab79dad4efa437883b7b0ac1a97adccbd1cc3996aed1e2ee74b9d85ac7d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant05ffa6ceaf3f2f203b1f31106489d84d53fb931d4f06ac21fb0733ac522eb177.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c3b89ddde78dba9da165f3b56431f480455f8d98f862ba83fb06f001867be4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class HasFibers (p : 𝒳 ⥤ 𝒮) where
  /-- The type of objects of the category `Fib S` for each `S`. -/
  Fib (S : 𝒮) : Type u₃
  /-- `Fib S` is a category. -/
  category (S : 𝒮) : Category.{v₃} (Fib S) := by infer_instance
  /-- The functor `ι : Fib S ⥤ 𝒳`. -/
  ι (S : 𝒮) : Fib S ⥤ 𝒳
  /-- The composition with the functor `p` is *equal* to the constant functor mapping to `S`. -/
  comp_const (S : 𝒮) : ι S ⋙ p = (const (Fib S)).obj S
  /-- The induced functor from `Fib S` to the fiber of `𝒳 ⥤ 𝒮` over `S` is an equivalence. -/
  equiv (S : 𝒮) : Functor.IsEquivalence (inducedFunctor (comp_const S)) := by infer_instance

namespace HasFibers

/-- The `HasFibers` on `p : 𝒳 ⥤ 𝒮` given by the fibers of `p` -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant05ffa6ceaf3f2f203b1f31106489d84d53fb931d4f06ac21fb0733ac522eb177.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant05ffa6ceaf3f2f203b1f31106489d84d53fb931d4f06ac21fb0733ac522eb177.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b543d236dc1cd1c6143b619c8728a2f8d5c01a0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
