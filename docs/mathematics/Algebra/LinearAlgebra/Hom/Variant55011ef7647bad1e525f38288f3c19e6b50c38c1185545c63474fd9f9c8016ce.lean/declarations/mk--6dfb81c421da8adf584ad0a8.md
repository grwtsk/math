# mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24a9344edaa60480115495d5754da6b05079a07dc736dda3f9c7f00e150c80e7",
  "kind": "def",
  "lexical_name": "mk'",
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
  "slug": "mk--6dfb81c421da8adf584ad0a8",
  "source": {
    "blob": "74980505f91545ca7a800653b57a4baacaeeff25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 522,
    "line": 499,
    "path": "GRWTSK/Algebra/LinearAlgebra/Hom/Variant55011ef7647bad1e525f38288f3c19e6b50c38c1185545c63474fd9f9c8016ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6dfb81c421da8adf584ad0a8615baa1db612c7bf6d2e4afaa72e3ed285a0bbfa",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Hom/Variant55011ef7647bad1e525f38288f3c19e6b50c38c1185545c63474fd9f9c8016ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:24a9344edaa60480115495d5754da6b05079a07dc736dda3f9c7f00e150c80e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 499–522.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mk' [IsDomain R] [CharZero R] [Finite ι₂]
    (P : RootPairing ι R M N) [P.IsRootSystem] (Q : RootPairing ι₂ R M₂ N₂) [Q.IsRootSystem]
    (f : M ≃ₗ[R] M₂) (e : ι ≃ ι₂) (hf : ∀ i, f (P.root i) = Q.root (e i)) :
    P.Equiv Q where
  weightMap := f
  coweightMap := Q.flip.toPerfPair.trans (f.dualMap.trans P.flip.toPerfPair.symm)
  indexEquiv := e
  weight_coweight_transpose := by ext; simp
  root_weightMap := by ext; simp [hf]
  coroot_coweightMap := by
    let g : N ≃ₗ[R] N₂ := P.flip.toPerfPair.trans <| f.symm.dualMap.trans Q.flip.toPerfPair.symm
    suffices Q = P.map e f g by
      ext i
      rw [LinearEquiv.coe_coe, comp_apply, ← LinearEquiv.eq_symm_apply]
      conv_lhs => rw [this]
      rfl
    apply IsRootSystem.ext <;> ext
    · simp [RootPairing.map, RootPairing.map, g]
    · simp [hf, RootPairing.map, RootPairing.map]
  bijective_weightMap := LinearEquiv.bijective _
  bijective_coweightMap := LinearEquiv.bijective _

variable (e : P.Equiv Q) (i : ι) (x : M) (y : N) (i₂ : ι₂) (x₂ : M₂) (y₂ : N₂)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Hom/Variant55011ef7647bad1e525f38288f3c19e6b50c38c1185545c63474fd9f9c8016ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Hom/Variant55011ef7647bad1e525f38288f3c19e6b50c38c1185545c63474fd9f9c8016ce.lean#L499).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74980505f91545ca7a800653b57a4baacaeeff25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
