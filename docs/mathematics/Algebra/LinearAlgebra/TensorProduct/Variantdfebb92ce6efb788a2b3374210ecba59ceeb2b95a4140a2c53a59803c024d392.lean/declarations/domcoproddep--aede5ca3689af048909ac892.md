# domCoprodDep'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cc29cbda7418043332bb7f02706508405965d4cb55effb7edda768bf49a40b60",
  "kind": "def",
  "lexical_name": "domCoprodDep'",
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
  "slug": "domcoproddep--aede5ca3689af048909ac892",
  "source": {
    "blob": "40507fccf0b99c72b6029be641b85b1974e9f950",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 52,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variantdfebb92ce6efb788a2b3374210ecba59ceeb2b95a4140a2c53a59803c024d392.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aede5ca3689af048909ac8921d4483742836b40909d051371080b32841f7675d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Variantdfebb92ce6efb788a2b3374210ecba59ceeb2b95a4140a2c53a59803c024d392.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cc29cbda7418043332bb7f02706508405965d4cb55effb7edda768bf49a40b60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def domCoprodDep' :
    MultilinearMap R (fun i₁ ↦ N (.inl i₁)) N₁ ⊗[R] MultilinearMap R (fun i₂ ↦ N (.inr i₂)) N₂ →ₗ[R]
        MultilinearMap R N (N₁ ⊗[R] N₂) :=
  TensorProduct.lift (LinearMap.mk₂ R domCoprodDep
    (by aesop) (by aesop) (by aesop) (by aesop))

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Variantdfebb92ce6efb788a2b3374210ecba59ceeb2b95a4140a2c53a59803c024d392.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variantdfebb92ce6efb788a2b3374210ecba59ceeb2b95a4140a2c53a59803c024d392.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40507fccf0b99c72b6029be641b85b1974e9f950` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
