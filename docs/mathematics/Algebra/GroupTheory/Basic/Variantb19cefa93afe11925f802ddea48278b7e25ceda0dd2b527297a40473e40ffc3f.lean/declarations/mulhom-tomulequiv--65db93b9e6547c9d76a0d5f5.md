# MulHom.toMulEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea20e59b2264c23b633ceac743adc35bbe4acf72ddff72fbed71af3983877cf1",
  "kind": "def",
  "lexical_name": "MulHom.toMulEquiv",
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
  "slug": "mulhom-tomulequiv--65db93b9e6547c9d76a0d5f5",
  "source": {
    "blob": "9416be9821ddba597f9222b0b3a2201df1ad34de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 761,
    "line": 749,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantb19cefa93afe11925f802ddea48278b7e25ceda0dd2b527297a40473e40ffc3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:65db93b9e6547c9d76a0d5f58a3e943c9ae4dd3560746b10e0b3cb0f87e85e3e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantb19cefa93afe11925f802ddea48278b7e25ceda0dd2b527297a40473e40ffc3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ea20e59b2264c23b633ceac743adc35bbe4acf72ddff72fbed71af3983877cf1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 749–761.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MulHom.toMulEquiv [Mul M] [Mul N] (f : M →ₙ* N) (g : N →ₙ* M) (h₁ : g.comp f = MulHom.id _)
  (h₂ : f.comp g = MulHom.id _) : M ≃* N where
  toFun := f
  invFun := g
  left_inv := FunLike.congr_fun h₁
  right_inv := FunLike.congr_fun h₂
  map_mul' := f.map_mul
#align mul_hom.to_mul_equiv MulHom.toMulEquiv
#align add_hom.to_add_equiv AddHom.toAddEquiv

-- porting note: the next two lemmas were added manually because `@[simps]` is generating
-- lemmas with `toFun` in
@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantb19cefa93afe11925f802ddea48278b7e25ceda0dd2b527297a40473e40ffc3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantb19cefa93afe11925f802ddea48278b7e25ceda0dd2b527297a40473e40ffc3f.lean#L749).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9416be9821ddba597f9222b0b3a2201df1ad34de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
