# nonempty_rankOne_iff_mulArchimedean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "34e24ceff7ab2be991953c1ca88b516b1b4d6561",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/1191a4c17454c212661b7e9a1684b4546d05662793be5d6d52eef47a4b9e1da3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bb345e21-9b8d-129c-a9ef-cf25ae2f0006",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:abca18a6-edea-1e01-6618-0390a1af6355",
  "kind": "lemma",
  "lexical_name": "nonempty_rankOne_iff_mulArchimedean",
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
  "slug": "nonempty-rankone-iff-mularchimedean--ce1b056febd65b976dac6055",
  "source": {
    "blob": "34e24ceff7ab2be991953c1ca88b516b1b4d6561",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 61,
    "path": "GRWTSK/Algebra/UniversalAlgebra/RankOne/Variant1191a4c17454c212661b7e9a1684b4546d05662793be5d6d52eef47a4b9e1da3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce1b056febd65b976dac6055089b194b979d40ec4bdf4adfcbf0acc6c2121128",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/RankOne/Variant1191a4c17454c212661b7e9a1684b4546d05662793be5d6d52eef47a4b9e1da3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abca18a6-edea-1e01-6618-0390a1af6355`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nonempty_rankOne_iff_mulArchimedean {v : Valuation R Γ₀} [v.IsNontrivial] :
    Nonempty v.RankOne ↔ MulArchimedean (ValueGroup₀ (.ofClass v)) := by
  constructor
  · intro h
    obtain hv := Nonempty.some h
    exact MulArchimedean.comap hv.hom'.toMonoidHom hv.strictMono'
  · intro _
    obtain ⟨f, hf⟩ :=
      Archimedean.exists_orderAddMonoidHom_real_injective (Additive (ValueGroup₀ (.ofClass v))ˣ)
    let e := AddMonoidHom.toMultiplicativeRight (α := (ValueGroup₀ (.ofClass v))ˣ) (β := ℝ) f
    have he : StrictMono e := by
      simp only [AddMonoidHom.coe_toMultiplicativeRight, AddMonoidHom.coe_coe, e]
      -- toAdd_strictMono is already in an applied form, do defeq abuse instead
      exact StrictMono.comp strictMono_id (f.monotone'.strictMono_of_injective hf)
    let rf : Multiplicative ℝ →* ℝ≥0ˣ := {
      toFun x := Units.mk0 (.mk ((2 : ℝ) ^ (log (M := ℝ) x)) (by positivity)) <| by
        simp only [ne_eq, NNReal.eq_iff, NNReal.coe_mk, NNReal.coe_zero]
        positivity
      map_one' := by ext; simp
      map_mul' _ _ := by ext; simp [Real.rpow_add]
      }
    have H : StrictMono (map' (rf.comp e)) := by
      refine map'_strictMono ?_
      intro a b h
      simpa [← Units.val_lt_val, ← NNReal.coe_lt_coe, rf] using he h
    exact ⟨{
      hom' := withZeroUnitsEquiv.toMonoidWithZeroHom.comp <| (map' (rf.comp e)).comp
        withZeroUnitsEquiv.symm.toMonoidWithZeroHom
      strictMono' := withZeroUnitsEquiv_strictMono.comp <| H.comp
        withZeroUnitsEquiv_symm_strictMono
    }⟩

namespace RankOne

variable (v : Valuation R Γ₀) [hv : RankOne v]

/-- The inclusion morphism from `Γ₀` to `ℝ≥0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/RankOne/Variant1191a4c17454c212661b7e9a1684b4546d05662793be5d6d52eef47a4b9e1da3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/RankOne/Variant1191a4c17454c212661b7e9a1684b4546d05662793be5d6d52eef47a4b9e1da3.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34e24ceff7ab2be991953c1ca88b516b1b4d6561` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
