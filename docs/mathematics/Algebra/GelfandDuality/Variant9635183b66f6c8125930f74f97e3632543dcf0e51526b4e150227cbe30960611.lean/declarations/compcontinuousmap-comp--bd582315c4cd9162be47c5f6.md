# compContinuousMap_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f65847d-8cc7-a795-3572-02059c358ee9",
  "kind": "theorem",
  "lexical_name": "compContinuousMap_comp",
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
  "slug": "compcontinuousmap-comp--bd582315c4cd9162be47c5f6",
  "source": {
    "blob": "3c2ed642b157d050016e64ba454c4f7c86a2e468",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 232,
    "path": "GRWTSK/Algebra/GelfandDuality/Variant9635183b66f6c8125930f74f97e3632543dcf0e51526b4e150227cbe30960611.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd582315c4cd9162be47c5f602d4cf4decc064a157f4e8055f02ab35ccf78582",
  "verification": {
    "reference": "docs/verification/Algebra/GelfandDuality/Variant9635183b66f6c8125930f74f97e3632543dcf0e51526b4e150227cbe30960611.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f65847d-8cc7-a795-3572-02059c358ee9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem compContinuousMap_comp (ψ₂ : B →⋆ₐ[𝕜] C) (ψ₁ : A →⋆ₐ[𝕜] B) :
    compContinuousMap (ψ₂.comp ψ₁) = (compContinuousMap ψ₁).comp (compContinuousMap ψ₂) :=
  ContinuousMap.ext fun _a => ext fun _x => rfl

end CharacterSpace

end WeakDual

end Functoriality

open CharacterSpace in
/--
Consider the contravariant functors between compact Hausdorff spaces and commutative unital
C⋆algebras `F : Cpct → CommCStarAlg := X ↦ C(X, ℂ)` and
`G : CommCStarAlg → Cpct := A → characterSpace ℂ A` whose actions on morphisms are given by
`WeakDual.CharacterSpace.compContinuousMap` and `ContinuousMap.compStarAlgHom'`, respectively.

Then `η : id → F ∘ G := gelfandStarTransform` is a natural isomorphism implementing (half of)
the duality between these categories. That is, for commutative unital C⋆-algebras `A` and `B` and
`φ : A →⋆ₐ[ℂ] B` the following diagram commutes:

```
A  --- η A ---> C(characterSpace ℂ A, ℂ)

|                     |

φ                  (F ∘ G) φ

|                     |
V                     V

B  --- η B ---> C(characterSpace ℂ B, ℂ)
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GelfandDuality/Variant9635183b66f6c8125930f74f97e3632543dcf0e51526b4e150227cbe30960611.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GelfandDuality/Variant9635183b66f6c8125930f74f97e3632543dcf0e51526b4e150227cbe30960611.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c2ed642b157d050016e64ba454c4f7c86a2e468` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
