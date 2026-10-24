# instBinomialRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3df6ffab7949155783e516b2c9ab3f0f61f78f56f0723cd8b719faf26baafdc1",
  "kind": "instance",
  "lexical_name": "instBinomialRing",
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
  "slug": "instbinomialring--6f6505c03f523e7a76f3405b",
  "source": {
    "blob": "c1eea98c66d3488a3dce3b861ea4e06b85fdf325",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 78,
    "path": "GRWTSK/Topology/GeneralTopology/MahlerBasis/Variantfee7216cede5fa28e444e63b798a1e8a81c0ed0f4710e1dcf029cfd448a5bf83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6f6505c03f523e7a76f3405b394b92ca3c4d7a25da0fef071d963d08d02fccbf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MahlerBasis/Variantfee7216cede5fa28e444e63b798a1e8a81c0ed0f4710e1dcf029cfd448a5bf83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3df6ffab7949155783e516b2c9ab3f0f61f78f56f0723cd8b719faf26baafdc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance instBinomialRing : BinomialRing ℤ_[p] where
  -- We define `multichoose` as a fraction in `ℚ_[p]` together with a proof that its norm is `≤ 1`.
  multichoose x k := ⟨(ascPochhammer ℤ_[p] k).eval x / (k.factorial : ℚ_[p]), by
    rw [norm_div, div_le_one (by simpa using k.factorial_ne_zero)]
    exact x.norm_ascPochhammer_le k⟩
  factorial_nsmul_multichoose x k := by rw [← Subtype.coe_inj, nsmul_eq_mul, PadicInt.coe_mul,
    PadicInt.coe_natCast, mul_div_cancel₀ _ (mod_cast k.factorial_ne_zero), Subtype.coe_inj,
    Polynomial.eval_eq_smeval, Polynomial.ascPochhammer_smeval_cast]

@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MahlerBasis/Variantfee7216cede5fa28e444e63b798a1e8a81c0ed0f4710e1dcf029cfd448a5bf83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MahlerBasis/Variantfee7216cede5fa28e444e63b798a1e8a81c0ed0f4710e1dcf029cfd448a5bf83.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1eea98c66d3488a3dce3b861ea4e06b85fdf325` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
