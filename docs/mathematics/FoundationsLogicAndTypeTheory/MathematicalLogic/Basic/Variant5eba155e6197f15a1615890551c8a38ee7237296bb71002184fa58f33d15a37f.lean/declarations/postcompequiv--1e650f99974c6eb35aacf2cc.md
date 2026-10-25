# postcompEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:db8c19cff2bbc0695d6c624aaf8cc82d85b3aa66dd64185e92ed6038f1b6dcbd",
  "kind": "def",
  "lexical_name": "postcompEquiv",
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
  "slug": "postcompequiv--1e650f99974c6eb35aacf2cc",
  "source": {
    "blob": "f99afcdda0c5af4eac76c642493c1e4d89ec975e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 159,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5eba155e6197f15a1615890551c8a38ee7237296bb71002184fa58f33d15a37f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e650f99974c6eb35aacf2cc92ea377ced561691d7e13a155a9120e241e33162",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5eba155e6197f15a1615890551c8a38ee7237296bb71002184fa58f33d15a37f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:db8c19cff2bbc0695d6c624aaf8cc82d85b3aa66dd64185e92ed6038f1b6dcbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def postcompEquiv {α β : Type*} [Monoid α] [Monoid β] (e : α ≃* β) (γ : Type*) [Monoid γ] :
    (γ →* α) ≃ (γ →* β) where
  toFun f := e.toMonoidHom.comp f
  invFun g := e.symm.toMonoidHom.comp g
  left_inv _ := by ext; simp
  right_inv _ := by ext; simp

end MonoidHom

namespace Equiv

section InvolutiveInv

variable (G) [InvolutiveInv G]

/-- Inversion on a `Group` or `GroupWithZero` is a permutation of the underlying type. -/
@[to_additive (attr := simps! -fullyApplied apply)
    "Negation on an `AddGroup` is a permutation of the underlying type."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5eba155e6197f15a1615890551c8a38ee7237296bb71002184fa58f33d15a37f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5eba155e6197f15a1615890551c8a38ee7237296bb71002184fa58f33d15a37f.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f99afcdda0c5af4eac76c642493c1e4d89ec975e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
