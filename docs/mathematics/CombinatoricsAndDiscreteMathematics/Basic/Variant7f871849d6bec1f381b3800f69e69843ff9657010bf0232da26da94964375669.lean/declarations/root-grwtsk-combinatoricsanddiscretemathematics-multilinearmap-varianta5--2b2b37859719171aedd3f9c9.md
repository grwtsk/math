# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.MultilinearMap.Varianta5ce599e060d28eb7a5dbd8fe6cbe77cea6b27ee08b4a863b050f0286af5ff93.LinearEquiv.multilinearMapCongrRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c3cfe261a704493b3c0f0c75e6e4b5f2b657979741f668e8b9096760535d6b92",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.MultilinearMap.Varianta5ce599e060d28eb7a5dbd8fe6cbe77cea6b27ee08b4a863b050f0286af5ff93.LinearEquiv.multilinearMapCongrRight",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-multilinearmap-varianta5--2b2b37859719171aedd3f9c9",
  "source": {
    "blob": "5673e3ee94a2d607bd6a91444f39c8d0be9992ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 943,
    "line": 929,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant7f871849d6bec1f381b3800f69e69843ff9657010bf0232da26da94964375669.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b2b37859719171aedd3f9c9dfb8c259000b8e8d56920905611c5e18443e90ca",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant7f871849d6bec1f381b3800f69e69843ff9657010bf0232da26da94964375669.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c3cfe261a704493b3c0f0c75e6e4b5f2b657979741f668e8b9096760535d6b92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 929–943.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.MultilinearMap.Varianta5ce599e060d28eb7a5dbd8fe6cbe77cea6b27ee08b4a863b050f0286af5ff93.LinearEquiv.multilinearMapCongrRight
    [LinearMap.CompatibleSMul M₂ M₃ S R] [LinearMap.CompatibleSMul M₃ M₂ S R] (g : M₂ ≃ₗ[R] M₃) :
    MultilinearMap R M₁ M₂ ≃ₗ[S] MultilinearMap R M₁ M₃ where
  __ := g.toLinearMap.compMultilinearMapₗ S
  invFun := g.symm.toLinearMap.compMultilinearMapₗ S
  left_inv _ := by ext; simp
  right_inv _ := by ext; simp

variable (R S M₁ M₂ M₃)

section OfSubsingleton

/-- Linear equivalence between linear maps `M₂ →ₗ[R] M₃`
and one-multilinear maps `MultilinearMap R (fun _ : ι ↦ M₂) M₃`. -/
@[simps +simpRhs]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant7f871849d6bec1f381b3800f69e69843ff9657010bf0232da26da94964375669.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant7f871849d6bec1f381b3800f69e69843ff9657010bf0232da26da94964375669.lean#L929).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5673e3ee94a2d607bd6a91444f39c8d0be9992ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
