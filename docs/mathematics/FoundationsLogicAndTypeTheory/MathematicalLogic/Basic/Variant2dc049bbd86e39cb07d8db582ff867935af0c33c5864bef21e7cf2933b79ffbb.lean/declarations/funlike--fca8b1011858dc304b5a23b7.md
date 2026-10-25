# FunLike

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b79cea273418bc898837feeafc1e5a2504f733be0b2e86be6b83c6c3d10f965e",
  "kind": "class",
  "lexical_name": "FunLike",
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
  "slug": "funlike--fca8b1011858dc304b5a23b7",
  "source": {
    "blob": "438496da1ff8fc7d3305e5bda6622e8509ff40ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 129,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2dc049bbd86e39cb07d8db582ff867935af0c33c5864bef21e7cf2933b79ffbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fca8b1011858dc304b5a23b7483ef3d8540ac0c8d6bdcf859677ad7ac4195be7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2dc049bbd86e39cb07d8db582ff867935af0c33c5864bef21e7cf2933b79ffbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b79cea273418bc898837feeafc1e5a2504f733be0b2e86be6b83c6c3d10f965e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class FunLike (F : Sort*) (α : outParam (Sort*)) (β : outParam <| α → Sort*) where
  /-- The coercion from `F` to a function. -/
  coe : F → ∀ a : α, β a
  /-- The coercion to functions must be injective. -/
  coe_injective' : Function.Injective coe
#align fun_like FunLike

-- https://github.com/leanprover/lean4/issues/2096
compile_def% FunLike.coe

section Dependent

/-! ### `FunLike F α β` where `β` depends on `a : α` -/

variable (F α : Sort*) (β : α → Sort*)

namespace FunLike

variable {F α β} [i : FunLike F α β]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2dc049bbd86e39cb07d8db582ff867935af0c33c5864bef21e7cf2933b79ffbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2dc049bbd86e39cb07d8db582ff867935af0c33c5864bef21e7cf2933b79ffbb.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `438496da1ff8fc7d3305e5bda6622e8509ff40ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
