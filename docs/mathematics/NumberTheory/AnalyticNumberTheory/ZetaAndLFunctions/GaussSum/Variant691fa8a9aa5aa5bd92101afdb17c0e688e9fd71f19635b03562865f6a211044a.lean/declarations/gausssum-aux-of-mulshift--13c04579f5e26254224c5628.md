# gaussSum_aux_of_mulShift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c76b1409-7a6d-9a81-9c8f-7a7e82148b72",
  "kind": "lemma",
  "lexical_name": "gaussSum_aux_of_mulShift",
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
  "slug": "gausssum-aux-of-mulshift--13c04579f5e26254224c5628",
  "source": {
    "blob": "292fe9d9a6816b35ec81b43de1547cae032fa227",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 24,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/GaussSum/Variant691fa8a9aa5aa5bd92101afdb17c0e688e9fd71f19635b03562865f6a211044a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13c04579f5e26254224c56281a6449df04bf2143aae3727f66346632d2423e46",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/GaussSum/Variant691fa8a9aa5aa5bd92101afdb17c0e688e9fd71f19635b03562865f6a211044a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c76b1409-7a6d-9a81-9c8f-7a7e82148b72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma gaussSum_aux_of_mulShift (χ : DirichletCharacter R N) {d : ℕ}
    (hd : d ∣ N) (he : e.mulShift d = 1) {u : (ZMod N)ˣ} (hu : ZMod.unitsMap hd u = 1) :
    χ u * gaussSum χ e = gaussSum χ e := by
  suffices e.mulShift u = e by conv_lhs => rw [← this, gaussSum_mulShift]
  rw [(by ring : u.val = (u - 1) + 1), ← mulShift_mul, mulShift_one, mul_eq_right]
  rsuffices ⟨a, ha⟩ : (d : ℤ) ∣ (u.val.val - 1 : ℤ)
  · have : u.val - 1 = ↑(u.val.val - 1 : ℤ) := by simp only [ZMod.natCast_val, Int.cast_sub,
      ZMod.intCast_cast, ZMod.cast_id', id_eq, Int.cast_one]
    rw [this, ha]
    ext1 y
    simpa only [Int.cast_mul, Int.cast_natCast, mulShift_apply, mul_assoc, one_apply]
      using DFunLike.ext_iff.mp he (a * y)
  rw [← Units.eq_iff, Units.val_one, ZMod.unitsMap_def, Units.coe_map] at hu
  have : ZMod.castHom hd (ZMod d) u.val = ((u.val.val : ℤ) : ZMod d) := by simp
  rwa [MonoidHom.coe_coe, this, ← Int.cast_one, eq_comm,
    ZMod.intCast_eq_intCast_iff_dvd_sub] at hu

/-- If `gaussSum χ e ≠ 0`, and `d` is such that `e.mulShift d = 1`, then `χ` must factor through
`d`. (This will be used to show that Gauss sums vanish when `χ` is primitive and `e` is not.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/GaussSum/Variant691fa8a9aa5aa5bd92101afdb17c0e688e9fd71f19635b03562865f6a211044a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/GaussSum/Variant691fa8a9aa5aa5bd92101afdb17c0e688e9fd71f19635b03562865f6a211044a.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `292fe9d9a6816b35ec81b43de1547cae032fa227` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
