# existsMulOfLe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6895d5c2c2c910bac7dd32a7d54ea1e122c6e86a30fe74a6c8785fb528296a94",
  "kind": "instance",
  "lexical_name": "existsMulOfLe",
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
  "slug": "existsmulofle--7830477d0a853633b7ab5a89",
  "source": {
    "blob": "acc495b497d98896f4b3d95d53919d863928ef72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 38,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Pi/Variantf43a749432a1b5a0ab1f63266b5e69461ff207fe032d9101a2a2acde8d7ed0a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7830477d0a853633b7ab5a8986549dd5c87510663165f2dfc711fb1a33e87b42",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Pi/Variantf43a749432a1b5a0ab1f63266b5e69461ff207fe032d9101a2a2acde8d7ed0a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6895d5c2c2c910bac7dd32a7d54ea1e122c6e86a30fe74a6c8785fb528296a94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance existsMulOfLe {ι : Type*} {α : ι → Type*} [∀ i, LE (α i)] [∀ i, Mul (α i)]
    [∀ i, ExistsMulOfLE (α i)] : ExistsMulOfLE (∀ i, α i) :=
  ⟨fun h =>
    ⟨fun i => (exists_mul_of_le <| h i).choose,
      funext fun i => (exists_mul_of_le <| h i).choose_spec⟩⟩

/-- The product of a family of canonically ordered monoids is a canonically ordered monoid. -/
@[to_additive
      /-- The product of a family of canonically ordered additive monoids is
a canonically ordered additive monoid. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Pi/Variantf43a749432a1b5a0ab1f63266b5e69461ff207fe032d9101a2a2acde8d7ed0a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Pi/Variantf43a749432a1b5a0ab1f63266b5e69461ff207fe032d9101a2a2acde8d7ed0a5.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `acc495b497d98896f4b3d95d53919d863928ef72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
