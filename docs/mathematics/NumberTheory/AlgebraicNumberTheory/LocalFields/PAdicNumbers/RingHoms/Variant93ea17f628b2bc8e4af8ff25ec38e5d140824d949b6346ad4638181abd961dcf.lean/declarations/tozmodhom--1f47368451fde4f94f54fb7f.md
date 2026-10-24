# toZModHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f9047ae9c3e2c884f222d876915811b641cad7ce88a813e310cfecb8636e61a7",
  "kind": "def",
  "lexical_name": "toZModHom",
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
  "slug": "tozmodhom--1f47368451fde4f94f54fb7f",
  "source": {
    "blob": "1e8c5bffb7d64576fd64ffe8636ca79f37af2dbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 214,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/RingHoms/Variant93ea17f628b2bc8e4af8ff25ec38e5d140824d949b6346ad4638181abd961dcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1f47368451fde4f94f54fb7fe21ae54fe028e36dc2240e99c3a1e445babd15a2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/RingHoms/Variant93ea17f628b2bc8e4af8ff25ec38e5d140824d949b6346ad4638181abd961dcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f9047ae9c3e2c884f222d876915811b641cad7ce88a813e310cfecb8636e61a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toZModHom (v : ℕ) (f : ℤ_[p] → ℕ) (f_spec : ∀ x, x - f x ∈ (Ideal.span {↑v} : Ideal ℤ_[p]))
    (f_congr :
      ∀ (x : ℤ_[p]) (a b : ℕ),
        x - a ∈ (Ideal.span {↑v} : Ideal ℤ_[p]) →
          x - b ∈ (Ideal.span {↑v} : Ideal ℤ_[p]) → (a : ZMod v) = b) :
    ℤ_[p] →+* ZMod v where
  toFun x := f x
  map_zero' := by
    dsimp only
    rw [f_congr (0 : ℤ_[p]) _ 0, cast_zero]
    · exact f_spec _
    · simp only [sub_zero, cast_zero, Submodule.zero_mem]
  map_one' := by
    dsimp only
    rw [f_congr (1 : ℤ_[p]) _ 1, cast_one]
    · exact f_spec _
    · simp only [sub_self, cast_one, Submodule.zero_mem]
  map_add' := by
    intro x y
    dsimp only
    rw [f_congr (x + y) _ (f x + f y), cast_add]
    · exact f_spec _
    · convert Ideal.add_mem _ (f_spec x) (f_spec y) using 1
      rw [cast_add]
      ring
  map_mul' := by
    intro x y
    dsimp only
    rw [f_congr (x * y) _ (f x * f y), cast_mul]
    · exact f_spec _
    · let I : Ideal ℤ_[p] := Ideal.span {↑v}
      convert I.add_mem (I.mul_mem_left x (f_spec y)) (I.mul_mem_right ↑(f y) (f_spec x)) using 1
      rw [cast_mul]
      ring
#align padic_int.to_zmod_hom PadicInt.toZModHom

/-- `toZMod` is a ring hom from `ℤ_[p]` to `ZMod p`,
with the equality `toZMod x = (zmodRepr x : ZMod p)`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/RingHoms/Variant93ea17f628b2bc8e4af8ff25ec38e5d140824d949b6346ad4638181abd961dcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/RingHoms/Variant93ea17f628b2bc8e4af8ff25ec38e5d140824d949b6346ad4638181abd961dcf.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e8c5bffb7d64576fd64ffe8636ca79f37af2dbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
