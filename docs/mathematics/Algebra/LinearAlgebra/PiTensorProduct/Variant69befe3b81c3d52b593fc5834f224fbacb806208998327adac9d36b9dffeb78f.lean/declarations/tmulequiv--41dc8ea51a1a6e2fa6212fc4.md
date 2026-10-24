# tmulEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:36db36d08b16ca83a140e4f41a96804099f18b5fbfe68e530b96693cc5d69135",
  "kind": "def",
  "lexical_name": "tmulEquiv",
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
  "slug": "tmulequiv--41dc8ea51a1a6e2fa6212fc4",
  "source": {
    "blob": "afb286db93a11610857257f2ff02737ee2cd52be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 633,
    "line": 618,
    "path": "GRWTSK/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:41dc8ea51a1a6e2fa6212fc434b537a5926c964522b40fcf77f312e27f1993e0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:36db36d08b16ca83a140e4f41a96804099f18b5fbfe68e530b96693cc5d69135`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 618–633.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tmulEquiv : ((⨂[R] _ : ι, M) ⊗[R] ⨂[R] _ : ι₂, M) ≃ₗ[R] ⨂[R] _ : Sum ι ι₂, M :=
  LinearEquiv.ofLinear tmul tmulSymm
    (by
      ext x
      show tmul (tmulSymm (tprod R x)) = tprod R x -- Speed up the call to `simp`.
      simp only [tmulSymm_apply, tmul_apply]
      -- Porting note (https://github.com/leanprover-community/mathlib4/issues/5026):
      -- was part of `simp only` above
      erw [Sum.elim_comp_inl_inr])
    (by
      ext x y
      show tmulSymm (tmul (tprod R x ⊗ₜ[R] tprod R y)) = tprod R x ⊗ₜ[R] tprod R y
      simp only [tmul_apply, tmulSymm_apply, Sum.elim_inl, Sum.elim_inr])
#align pi_tensor_product.tmul_equiv PiTensorProduct.tmulEquiv

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean#L618).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afb286db93a11610857257f2ff02737ee2cd52be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
