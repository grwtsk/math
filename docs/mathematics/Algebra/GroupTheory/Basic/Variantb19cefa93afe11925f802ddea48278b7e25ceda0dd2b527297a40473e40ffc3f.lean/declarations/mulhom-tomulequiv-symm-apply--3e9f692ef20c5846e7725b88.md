# MulHom.toMulEquiv_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9416be9821ddba597f9222b0b3a2201df1ad34de",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 770,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b19cefa93afe11925f802ddea48278b7e25ceda0dd2b527297a40473e40ffc3f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e1941f3b-2feb-ffea-c7c3-5e953c5a6099",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:69ad3d43-c059-e5ea-feb6-a122cf1a4fd2",
  "kind": "theorem",
  "lexical_name": "MulHom.toMulEquiv_symm_apply",
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
  "slug": "mulhom-tomulequiv-symm-apply--3e9f692ef20c5846e7725b88",
  "source": {
    "blob": "9416be9821ddba597f9222b0b3a2201df1ad34de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 784,
    "line": 770,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantb19cefa93afe11925f802ddea48278b7e25ceda0dd2b527297a40473e40ffc3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e9f692ef20c5846e7725b884f0444f9ea9ac2e06fc1369f814540e59b3e00b6",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantb19cefa93afe11925f802ddea48278b7e25ceda0dd2b527297a40473e40ffc3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69ad3d43-c059-e5ea-feb6-a122cf1a4fd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 770–784.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MulHom.toMulEquiv_symm_apply [Mul M] [Mul N] (f : M →ₙ* N) (g : N →ₙ* M)
    (h₁ : g.comp f = MulHom.id _) (h₂ : f.comp g = MulHom.id _) :
    (MulEquiv.symm (MulHom.toMulEquiv f g h₁ h₂) : N → M) = ↑g :=
  rfl
#align mul_hom.to_mul_equiv_symm_apply MulHom.toMulEquiv_symm_apply
#align add_hom.to_add_equiv_symm_apply AddHom.toAddEquiv_symm_apply

/-- Given a pair of monoid homomorphisms `f`, `g` such that `g.comp f = id` and `f.comp g = id`,
returns a multiplicative equivalence with `toFun = f` and `invFun = g`.  This constructor is
useful if the underlying type(s) have specialized `ext` lemmas for monoid homomorphisms. -/
@[to_additive (attr := simps (config := { fullyApplied := false }))
  "Given a pair of additive monoid homomorphisms `f`, `g` such that `g.comp f = id`
  and `f.comp g = id`, returns an additive equivalence with `toFun = f` and `invFun = g`.  This
  constructor is useful if the underlying type(s) have specialized `ext` lemmas for additive
  monoid homomorphisms."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantb19cefa93afe11925f802ddea48278b7e25ceda0dd2b527297a40473e40ffc3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantb19cefa93afe11925f802ddea48278b7e25ceda0dd2b527297a40473e40ffc3f.lean#L770).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9416be9821ddba597f9222b0b3a2201df1ad34de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
