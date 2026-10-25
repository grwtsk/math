# psigmaCongrRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1de701107ffd953093204f84c7c6bc0cba77b94a01a7c8dd473cf3c537f7d04c",
  "kind": "def",
  "lexical_name": "psigmaCongrRight",
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
  "slug": "psigmacongrright--580b2a59347ddb5dc2a9b0a5",
  "source": {
    "blob": "782e9a48a71ac879243cbc6a07c1eb1bf641272f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 702,
    "line": 694,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant7a90b6394c236ec9d3e87b8ff763b09229c2e08ab458a4d525b482d66242ac7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:580b2a59347ddb5dc2a9b0a5964ee9240c99bc418c9bd8b80e22df1803e23cb0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant7a90b6394c236ec9d3e87b8ff763b09229c2e08ab458a4d525b482d66242ac7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1de701107ffd953093204f84c7c6bc0cba77b94a01a7c8dd473cf3c537f7d04c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 694–702.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def psigmaCongrRight {β₁ β₂ : α → Sort*} (F : ∀ a, β₁ a ≃ β₂ a) : (Σ' a, β₁ a) ≃ Σ' a, β₂ a where
  toFun a := ⟨a.1, F a.1 a.2⟩
  invFun a := ⟨a.1, (F a.1).symm a.2⟩
  left_inv | ⟨a, b⟩ => congr_arg (PSigma.mk a) <| symm_apply_apply (F a) b
  right_inv | ⟨a, b⟩ => congr_arg (PSigma.mk a) <| apply_symm_apply (F a) b
#align equiv.psigma_congr_right Equiv.psigmaCongrRight
#align equiv.psigma_congr_right_apply Equiv.psigmaCongrRight_apply

-- Porting note: simp can now simplify the LHS, so I have removed `@[simp]`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant7a90b6394c236ec9d3e87b8ff763b09229c2e08ab458a4d525b482d66242ac7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant7a90b6394c236ec9d3e87b8ff763b09229c2e08ab458a4d525b482d66242ac7f.lean#L694).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `782e9a48a71ac879243cbc6a07c1eb1bf641272f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
