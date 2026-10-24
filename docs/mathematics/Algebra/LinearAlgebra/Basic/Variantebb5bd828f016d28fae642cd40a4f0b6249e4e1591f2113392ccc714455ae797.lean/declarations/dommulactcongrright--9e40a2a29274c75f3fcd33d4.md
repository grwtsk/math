# domMulActCongrRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:67f7b86c167aaedb4a0c0b600f9fb8805d06284d4663d5d0204fe99f0f3dc7bc",
  "kind": "def",
  "lexical_name": "domMulActCongrRight",
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
  "slug": "dommulactcongrright--9e40a2a29274c75f3fcd33d4",
  "source": {
    "blob": "b9f4f22f3093e1cef8fb648b992cb1157d194a25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 525,
    "line": 517,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantebb5bd828f016d28fae642cd40a4f0b6249e4e1591f2113392ccc714455ae797.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e40a2a29274c75f3fcd33d4273155e6f40630bef05ff01752b64049bd63933c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantebb5bd828f016d28fae642cd40a4f0b6249e4e1591f2113392ccc714455ae797.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:67f7b86c167aaedb4a0c0b600f9fb8805d06284d4663d5d0204fe99f0f3dc7bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 517–525.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps] def domMulActCongrRight [Semiring S] [Module S M₁] [SMulCommClass R S M₁]
    (e₂ : M₂₁ ≃ₗ[R] M₂₂) : (M₁ →ₗ[R] M₂₁) ≃ₗ[Sᵈᵐᵃ] (M₁ →ₗ[R] M₂₂) where
  __ := arrowCongrAddEquiv (.refl ..) e₂
  map_smul' := DomMulAct.mk.forall_congr_right.mp fun _ _ ↦ by ext; simp

/-- If `M` and `M₂` are linearly isomorphic then the endomorphism rings of `M` and `M₂`
are isomorphic.

See `LinearEquiv.conj` for the linear version of this isomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantebb5bd828f016d28fae642cd40a4f0b6249e4e1591f2113392ccc714455ae797.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantebb5bd828f016d28fae642cd40a4f0b6249e4e1591f2113392ccc714455ae797.lean#L517).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9f4f22f3093e1cef8fb648b992cb1157d194a25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
