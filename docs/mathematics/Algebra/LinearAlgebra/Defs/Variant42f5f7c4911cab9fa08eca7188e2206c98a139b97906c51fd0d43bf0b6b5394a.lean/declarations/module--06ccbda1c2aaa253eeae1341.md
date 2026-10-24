# module

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:95f3dc6ac3e587d9727e685cda05979a5d553f3e11e8d91ae628d988b9125e9c",
  "kind": "instance",
  "lexical_name": "module",
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
  "slug": "module--06ccbda1c2aaa253eeae1341",
  "source": {
    "blob": "be636fd42fa83c1568648f3153d1fa7fa81d8010",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 946,
    "line": 932,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant42f5f7c4911cab9fa08eca7188e2206c98a139b97906c51fd0d43bf0b6b5394a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:06ccbda1c2aaa253eeae13413fba032938ce7c4cdc3cac5b9d1790d3630cb756",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant42f5f7c4911cab9fa08eca7188e2206c98a139b97906c51fd0d43bf0b6b5394a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:95f3dc6ac3e587d9727e685cda05979a5d553f3e11e8d91ae628d988b9125e9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 932–946.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance module : Module S (M →ₛₗ[σ₁₂] M₂) where
  add_smul _ _ _ := ext fun _ ↦ add_smul _ _ _
  zero_smul _ := ext fun _ ↦ zero_smul _ _

end Module

end Actions

section RestrictScalarsAsLinearMap

variable {R S M N P : Type*} [Semiring R] [Semiring S] [AddCommMonoid M] [AddCommMonoid N]
  [Module R M] [Module R N] [Module S M] [Module S N] [CompatibleSMul M N R S]

variable (R S M N) in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant42f5f7c4911cab9fa08eca7188e2206c98a139b97906c51fd0d43bf0b6b5394a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant42f5f7c4911cab9fa08eca7188e2206c98a139b97906c51fd0d43bf0b6b5394a.lean#L932).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be636fd42fa83c1568648f3153d1fa7fa81d8010` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
