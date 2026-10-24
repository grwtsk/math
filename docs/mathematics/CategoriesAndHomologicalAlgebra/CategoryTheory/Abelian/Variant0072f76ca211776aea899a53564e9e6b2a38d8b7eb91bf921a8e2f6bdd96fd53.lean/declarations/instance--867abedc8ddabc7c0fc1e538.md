# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:facb017a9a8715ac2744949a61c45ff475f0ee8f820322b218fe4466ddf2e9e3",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--867abedc8ddabc7c0fc1e538",
  "source": {
    "blob": "f52f57dc9d066eb7d955c05a62ced69e566cdcbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 82,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant0072f76ca211776aea899a53564e9e6b2a38d8b7eb91bf921a8e2f6bdd96fd53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:867abedc8ddabc7c0fc1e538d31efff0c617f35b072be7b14b7ef80c319c0985",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant0072f76ca211776aea899a53564e9e6b2a38d8b7eb91bf921a8e2f6bdd96fd53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:facb017a9a8715ac2744949a61c45ff475f0ee8f820322b218fe4466ddf2e9e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Limits.PreservesFiniteLimits (forget C X ⋙ stalkFunctor C p₀) :=
  have : (forget C X ⋙ stalkFunctor C p₀).PreservesHomology := by
    simp only [(forget C X ⋙ stalkFunctor C p₀).exact_tfae.out 3 1]
    intro S h
    have := ((forget C X ⋙ stalkFunctor C p₀).preservesFiniteColimits_tfae.out 4 1).mp
      (inferInstance : (PreservesFiniteColimits _))
    refine ShortComplex.ShortExact.mk' (this S h).left ?_ (this S h).right
    have := h.2
    exact Functor.map_mono (forget C X ⋙ stalkFunctor C p₀) _
  (forget C X ⋙ stalkFunctor C p₀).preservesFiniteLimits_of_preservesHomology

open ZeroObject

include instCC in
/-- A sheaf is zero if and only if its stalks are all zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant0072f76ca211776aea899a53564e9e6b2a38d8b7eb91bf921a8e2f6bdd96fd53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant0072f76ca211776aea899a53564e9e6b2a38d8b7eb91bf921a8e2f6bdd96fd53.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f52f57dc9d066eb7d955c05a62ced69e566cdcbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
