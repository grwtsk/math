# range_lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb2c6382-227b-f732-6bd3-51237e331525",
  "kind": "theorem",
  "lexical_name": "range_lift",
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
  "slug": "range-lift--a7aa22cd1c7fa617ab911ec1",
  "source": {
    "blob": "e8fe4078847e7178cdfdd10f2983df1804d7fcac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 680,
    "line": 659,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant0027e7996e4549bc04b1f456b1f67d296d81b4756de7e346ef3969764dc254a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7aa22cd1c7fa617ab911ec18d18a3469581abd741789af7de001cb35545e28f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant0027e7996e4549bc04b1f456b1f67d296d81b4756de7e346ef3969764dc254a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb2c6382-227b-f732-6bd3-51237e331525`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 659–680.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive (attr := simp)] theorem range_lift (f : G →* K) (g : H →* K) :
    MonoidHom.range (lift f g) = MonoidHom.range f ⊔ MonoidHom.range g := by
  simp [range_eq]

end Group

end Coprod

open Coprod

namespace MulEquiv

section MulOneClass

variable {M N M' N' : Type*} [MulOneClass M] [MulOneClass N] [MulOneClass M']
  [MulOneClass N']

/-- Lift two monoid equivalences `e : M ≃* N` and `e' : M' ≃* N'` to a monoid equivalence
`(M ∗ M') ≃* (N ∗ N')`. -/
@[to_additive (attr := simps! -fullyApplied) "Lift two additive monoid
equivalences `e : M ≃+ N` and `e' : M' ≃+ N'` to an additive monoid equivalence
`(AddMonoid.Coprod M M') ≃+ (AddMonoid.Coprod N N')`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant0027e7996e4549bc04b1f456b1f67d296d81b4756de7e346ef3969764dc254a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant0027e7996e4549bc04b1f456b1f67d296d81b4756de7e346ef3969764dc254a8.lean#L659).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8fe4078847e7178cdfdd10f2983df1804d7fcac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
