# implementationStateCertified

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:69b127fcfa7d88054740f7ecf8bc1fab85ba33d702d0080496fb638502a07b7b",
  "kind": "def",
  "lexical_name": "implementationStateCertified",
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
  "slug": "implementationstatecertified--ae06ee8ebc5d8291c86b11c7",
  "source": {
    "blob": "779a8b2705f3c82f1d558c11fbecb5201d725f24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 145,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant47f0a022f535caecf554a7c70ee3e16ff6452c106463009bfe1837c2e7559e32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae06ee8ebc5d8291c86b11c769e54bac7b214dd3939a88cf8ee91327e1b4d9d6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant47f0a022f535caecf554a7c70ee3e16ff6452c106463009bfe1837c2e7559e32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:69b127fcfa7d88054740f7ecf8bc1fab85ba33d702d0080496fb638502a07b7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def implementationStateCertified
    {F G : Fabric}
    {reaction : Reaction F G}
    {source : ImplementationFabric F}
    {target : ImplementationFabric G}
    (h : RefinementPreservingReaction reaction source target)
    {n : Nat}
    (x : F.Cell n)
    (coefficientSource coefficientTarget : DAF.Comparison.CoefficientContext)
    (scope : DAF.Comparison.Scope) :
    DAF.Comparison.Certified
      (source.implementation x).impl.State
      (target.implementation (reaction.mapCell x)).impl.State where
  spec := h.implementationStateSpec x
  coefficientSource := coefficientSource
  coefficientTarget := coefficientTarget
  scope := scope
  Property :=
    ∀ state,
      (source.implementation x).refinement.Valid state →
        (target.implementation (reaction.mapCell x)).refinement.abstract
            ((h.implementationMap x).mapState state) =
          (reaction.cellMap x).mapState
            ((source.implementation x).refinement.abstract state)
  Assumptions := True
  certified := fun _ state hstate ↦ h.abstraction_natural x state hstate

end RefinementPreservingReaction

/-- A family of realization functors retaining its representation parameter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant47f0a022f535caecf554a7c70ee3e16ff6452c106463009bfe1837c2e7559e32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant47f0a022f535caecf554a7c70ee3e16ff6452c106463009bfe1837c2e7559e32.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `779a8b2705f3c82f1d558c11fbecb5201d725f24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
