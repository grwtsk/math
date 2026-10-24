# derivativeFun_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c1a24bf97583e3d2d7cbffcaf3d881986a1f0368",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/64f7b01a0883dade1797297cfd0262bc28b885e554a337b44658d1bf72b586d7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bb86c66e-7935-ab82-bcc0-3bc8f95054e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b3dd3ecc-4e47-d0ec-9563-2af1d66c7fdd",
  "kind": "theorem",
  "lexical_name": "derivativeFun_mul",
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
  "slug": "derivativefun-mul--fe3109851a4769d6048e666a",
  "source": {
    "blob": "c1a24bf97583e3d2d7cbffcaf3d881986a1f0368",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 77,
    "path": "GRWTSK/Algebra/Derivative/Variant64f7b01a0883dade1797297cfd0262bc28b885e554a337b44658d1bf72b586d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe3109851a4769d6048e666a2fda2cf0351fcef64f8cd1ec0f19906bd15c80fb",
  "verification": {
    "reference": "docs/verification/Algebra/Derivative/Variant64f7b01a0883dade1797297cfd0262bc28b885e554a337b44658d1bf72b586d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3dd3ecc-4e47-d0ec-9563-2af1d66c7fdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivativeFun_mul (f g : R⟦X⟧) :
    derivativeFun (f * g) = f • g.derivativeFun + g • f.derivativeFun := by
  ext n
  have h₁ : n < n + 1 := lt_succ_self n
  have h₂ : n < n + 1 + 1 := Nat.lt_add_right _ h₁
  rw [coeff_derivativeFun, map_add, coeff_mul_eq_coeff_trunc_mul_trunc _ _ (lt_succ_self _),
    smul_eq_mul, smul_eq_mul, coeff_mul_eq_coeff_trunc_mul_trunc₂ g f.derivativeFun h₂ h₁,
    coeff_mul_eq_coeff_trunc_mul_trunc₂ f g.derivativeFun h₂ h₁, trunc_derivativeFun,
    trunc_derivativeFun, ← map_add, ← derivativeFun_coe_mul_coe, coeff_derivativeFun]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Derivative/Variant64f7b01a0883dade1797297cfd0262bc28b885e554a337b44658d1bf72b586d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Derivative/Variant64f7b01a0883dade1797297cfd0262bc28b885e554a337b44658d1bf72b586d7.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1a24bf97583e3d2d7cbffcaf3d881986a1f0368` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
