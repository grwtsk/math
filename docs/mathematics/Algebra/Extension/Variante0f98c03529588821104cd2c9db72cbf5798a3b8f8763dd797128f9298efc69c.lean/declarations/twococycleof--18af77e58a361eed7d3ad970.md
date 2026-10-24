# twoCocycleOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a4df7b1f7651d0d8e998cd55cd9988b85100d8c91adedad1ddb95b115aed37fc",
  "kind": "def",
  "lexical_name": "twoCocycleOf",
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
  "slug": "twococycleof--18af77e58a361eed7d3ad970",
  "source": {
    "blob": "3004ea302df468384135cd2540eb5c44bba4a8f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 427,
    "line": 396,
    "path": "GRWTSK/Algebra/Extension/Variante0f98c03529588821104cd2c9db72cbf5798a3b8f8763dd797128f9298efc69c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:18af77e58a361eed7d3ad97096cf4da6b41572d7903fd3597aae5564c855ba35",
  "verification": {
    "reference": "docs/verification/Algebra/Extension/Variante0f98c03529588821104cd2c9db72cbf5798a3b8f8763dd797128f9298efc69c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a4df7b1f7651d0d8e998cd55cd9988b85100d8c91adedad1ddb95b115aed37fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 396–427.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def twoCocycleOf [IsLieAbelian M] (E : Extension R M L) {s : L →ₗ[R] E.L}
    (hs : LeftInverse E.proj s) :
    letI := E.ringModuleOf
    have := E.lieModuleOf
    twoCocycle R L M where
  val := ⟨(E.twoCocycleAux hs).compr₂ E.toKer.symm, by simp⟩
  property := by
    -- TODO Try to golf this after https://github.com/leanprover-community/mathlib4/pull/27306 lands
    ext x y z
    suffices ⁅s x, ⁅s y, s z⁆⁆ - ⁅s x, s ⁅y, z⁆⁆ -
        (⁅s y, ⁅s x, s z⁆⁆ - ⁅s y, s ⁅x, z⁆⁆) + (⁅s z, ⁅s x, s y⁆⁆ - ⁅s z, s ⁅x, y⁆⁆) -
          (⁅s ⁅x, y⁆, s z⁆ - (s ⁅x, ⁅y, z⁆⁆ - s ⁅y, ⁅x, z⁆⁆)) +
        (⁅s ⁅x, z⁆, s y⁆ - (s ⁅x, ⁅z, y⁆⁆ - s ⁅z, ⁅x, y⁆⁆)) -
        (⁅s ⁅y, z⁆, s x⁆ - (s ⁅y, ⁅z, x⁆⁆ - s ⁅z, ⁅y, x⁆⁆)) = 0 by
      set h := E.proj_surjective.hasRightInverse
      have aux (u : L) (v : E.proj.ker) : ⁅h.choose u, v⁆ = ⁅s u, v⁆ := by
        rw [← E.lie_apply_proj_of_leftInverse_eq hs, h.choose_spec _]
      simpa [← map_sub, ← map_add, ← twoCochain_val_apply, Subtype.ext_iff, twoCocycleAux, aux]
    have hjac := lie_lie (s x) (s y) (s z)
    rw [← lie_skew, neg_eq_iff_eq_neg] at hjac
    have hja := congr_arg s (lie_lie x y z)
    rw [← lie_skew, map_neg, neg_eq_iff_eq_neg] at hja
    have hj := congr_arg s (lie_lie y x z)
    rw [← lie_skew, map_neg, neg_eq_iff_eq_neg] at hj
    rw [hjac, hj, hja, ← lie_skew y z, ← lie_skew _ (s (-⁅z, y⁆)), ← lie_skew (s ⁅x, z⁆),
      ← lie_skew (s ⁅x, y⁆), ← lie_skew x z]
    simp only [map_neg, neg_lie, neg_neg, neg_sub, lie_neg, sub_neg_eq_add,
      sub_add_cancel_right, map_add, neg_add_rev]
    abel_nf

/-- The 1-cochain attached to a pair of splittings of an extension. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Extension/Variante0f98c03529588821104cd2c9db72cbf5798a3b8f8763dd797128f9298efc69c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Extension/Variante0f98c03529588821104cd2c9db72cbf5798a3b8f8763dd797128f9298efc69c.lean#L396).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3004ea302df468384135cd2540eb5c44bba4a8f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
