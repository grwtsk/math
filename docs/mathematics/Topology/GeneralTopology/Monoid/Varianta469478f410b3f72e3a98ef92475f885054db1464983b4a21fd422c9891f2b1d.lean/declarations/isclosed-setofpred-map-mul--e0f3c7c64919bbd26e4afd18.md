# isClosed_setOfPred_map_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ff1c0d0-4ea9-6e9d-87ab-cd5795fccd4b",
  "kind": "theorem",
  "lexical_name": "isClosed_setOfPred_map_mul",
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
  "slug": "isclosed-setofpred-map-mul--e0f3c7c64919bbd26e4afd18",
  "source": {
    "blob": "7e97bd3384a24c3b0ffdafc711bd1ca099d124af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 304,
    "path": "GRWTSK/Topology/GeneralTopology/Monoid/Varianta469478f410b3f72e3a98ef92475f885054db1464983b4a21fd422c9891f2b1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0f3c7c64919bbd26e4afd185161295a7550fba95019a68d85977ef287392df2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Monoid/Varianta469478f410b3f72e3a98ef92475f885054db1464983b4a21fd422c9891f2b1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ff1c0d0-4ea9-6e9d-87ab-cd5795fccd4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isClosed_setOfPred_map_mul [Mul M₁] [Mul M₂] [ContinuousMul M₂] :
    IsClosed { f : M₁ → M₂ | ∀ x y, f (x * y) = f x * f y } := by
  simp only [ofPred_forall]
  exact isClosed_iInter fun x ↦ isClosed_iInter fun y ↦
    isClosed_eq (continuous_apply _) (by fun_prop)

@[deprecated (since := "2026-07-09")] alias isClosed_setOf_map_mul := isClosed_setOfPred_map_mul
@[deprecated (since := "2026-07-09")] alias isClosed_setOf_map_add := isClosed_setOfPred_map_add

section Semigroup

variable {M₁ M₂} [Mul M₁] [Mul M₂] [ContinuousMul M₂]
  {F : Type*} [FunLike F M₁ M₂] [MulHomClass F M₁ M₂] {l : Filter α}

/-- Construct a bundled semigroup homomorphism `M₁ →ₙ* M₂` from a function `f` and a proof that it
belongs to the closure of the range of the coercion from `M₁ →ₙ* M₂` (or another type of bundled
homomorphisms that has a `MulHomClass` instance) to `M₁ → M₂`. -/
@[to_additive (attr := simps -fullyApplied)
  /-- Construct a bundled additive semigroup homomorphism `M₁ →ₙ+ M₂` from a function `f`
and a proof that it belongs to the closure of the range of the coercion from `M₁ →ₙ+ M₂` (or another
type of bundled homomorphisms that has an `AddHomClass` instance) to `M₁ → M₂`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Monoid/Varianta469478f410b3f72e3a98ef92475f885054db1464983b4a21fd422c9891f2b1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Monoid/Varianta469478f410b3f72e3a98ef92475f885054db1464983b4a21fd422c9891f2b1d.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e97bd3384a24c3b0ffdafc711bd1ca099d124af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
