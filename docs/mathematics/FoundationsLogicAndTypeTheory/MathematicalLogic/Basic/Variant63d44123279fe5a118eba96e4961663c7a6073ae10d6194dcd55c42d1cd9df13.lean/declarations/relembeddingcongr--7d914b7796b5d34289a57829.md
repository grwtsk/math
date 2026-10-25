# relEmbeddingCongr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:49f4bf87be1559633dca6fdc9481517c6974c7665c262bb2b9681e4f4345409d",
  "kind": "def",
  "lexical_name": "relEmbeddingCongr",
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
  "slug": "relembeddingcongr--7d914b7796b5d34289a57829",
  "source": {
    "blob": "311540d0db8cb2155ba005e59cea661a8ae0004b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 845,
    "line": 831,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant63d44123279fe5a118eba96e4961663c7a6073ae10d6194dcd55c42d1cd9df13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d914b7796b5d34289a578296247eeb3b142c13594f033787b6af2b87e0e5680",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant63d44123279fe5a118eba96e4961663c7a6073ae10d6194dcd55c42d1cd9df13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:49f4bf87be1559633dca6fdc9481517c6974c7665c262bb2b9681e4f4345409d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 831–845.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def relEmbeddingCongr {α₁ β₁ α₂ β₂}
    {r₁ : α₁ → α₁ → Prop} {s₁ : β₁ → β₁ → Prop} {r₂ : α₂ → α₂ → Prop} {s₂ : β₂ → β₂ → Prop}
    (e₁ : r₁ ≃r r₂) (e₂ : s₁ ≃r s₂) :
    (r₁ ↪r s₁) ≃ (r₂ ↪r s₂) where
  toFun f₁ := (e₁.symm.toRelEmbedding.trans f₁).trans e₂.toRelEmbedding
  invFun f₂ := (e₁.toRelEmbedding.trans f₂).trans e₂.symm.toRelEmbedding
  left_inv f₁ := by ext; simp
  right_inv f₂ := by ext; simp

attribute [simps! -isSimp apply_apply symm_apply_apply] relEmbeddingCongr

/-- Transport a `RelIso` across a pair of `RelIso`s, by pre- and post-composition.

This is `Equiv.equivCongr` for `RelIso`. -/
@[simps apply symm_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant63d44123279fe5a118eba96e4961663c7a6073ae10d6194dcd55c42d1cd9df13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant63d44123279fe5a118eba96e4961663c7a6073ae10d6194dcd55c42d1cd9df13.lean#L831).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `311540d0db8cb2155ba005e59cea661a8ae0004b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
