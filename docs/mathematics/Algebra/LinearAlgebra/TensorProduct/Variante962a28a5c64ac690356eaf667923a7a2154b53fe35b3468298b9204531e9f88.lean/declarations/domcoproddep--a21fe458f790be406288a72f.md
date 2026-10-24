# domCoprodDep'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:92efe218d5f7f8e6430d46191e7c1f127de4c04193404745d2ccb17a5136be0e",
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
  "slug": "domcoproddep--a21fe458f790be406288a72f",
  "source": {
    "blob": "d6df8861b4de7ddaf14ecfe4f41beda487dd4895",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 60,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variante962a28a5c64ac690356eaf667923a7a2154b53fe35b3468298b9204531e9f88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a21fe458f790be406288a72fc9fc5bbebd499ec3271f0dc609f7b1d996e8a979",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Variante962a28a5c64ac690356eaf667923a7a2154b53fe35b3468298b9204531e9f88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:92efe218d5f7f8e6430d46191e7c1f127de4c04193404745d2ccb17a5136be0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–66.

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

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Variante962a28a5c64ac690356eaf667923a7a2154b53fe35b3468298b9204531e9f88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variante962a28a5c64ac690356eaf667923a7a2154b53fe35b3468298b9204531e9f88.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6df8861b4de7ddaf14ecfe4f41beda487dd4895` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
