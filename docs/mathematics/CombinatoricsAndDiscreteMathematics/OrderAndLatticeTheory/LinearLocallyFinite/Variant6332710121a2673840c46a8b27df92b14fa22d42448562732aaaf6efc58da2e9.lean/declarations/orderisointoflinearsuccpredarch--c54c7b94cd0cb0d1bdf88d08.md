# orderIsoIntOfLinearSuccPredArch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:69d3f16e6cb6a1bdbf1912bdebaf971b5adabf414cb2193927a547e2d17cf8a9",
  "kind": "def",
  "lexical_name": "orderIsoIntOfLinearSuccPredArch",
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
  "slug": "orderisointoflinearsuccpredarch--c54c7b94cd0cb0d1bdf88d08",
  "source": {
    "blob": "146b2e4a2d9d0bcd6bdaeabd50f0c16bead9d711",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 407,
    "line": 384,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c54c7b94cd0cb0d1bdf88d08fee5722aae8d9e8f7925096d916c376116918c9d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:69d3f16e6cb6a1bdbf1912bdebaf971b5adabf414cb2193927a547e2d17cf8a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–407.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def orderIsoIntOfLinearSuccPredArch [NoMaxOrder ι] [NoMinOrder ι] [hι : Nonempty ι] :
    ι ≃o ℤ where
  toFun := toZ hι.some
  invFun n := if 0 ≤ n then succ^[n.toNat] hι.some else pred^[(-n).toNat] hι.some
  left_inv i := by
    cases' le_or_lt hι.some i with hi hi
    · have h_nonneg : 0 ≤ toZ hι.some i := toZ_nonneg hi
      simp_rw [if_pos h_nonneg]
      exact iterate_succ_toZ i hi
    · have h_neg : toZ hι.some i < 0 := toZ_neg hi
      simp_rw [if_neg (not_le.mpr h_neg)]
      exact iterate_pred_toZ i hi
  right_inv n := by
    cases' le_or_lt 0 n with hn hn
    · simp_rw [if_pos hn]
      rw [toZ_iterate_succ]
      exact Int.toNat_of_nonneg hn
    · simp_rw [if_neg (not_le.mpr hn)]
      rw [toZ_iterate_pred]
      simp only [hn.le, Int.toNat_of_nonneg, Right.nonneg_neg_iff, neg_neg]
  map_rel_iff' := by intro i j; exact toZ_le_iff i j
#align order_iso_int_of_linear_succ_pred_arch orderIsoIntOfLinearSuccPredArch

/-- If the order has a bot but no top, `toZ` defines an `OrderIso` between `ι` and `ℕ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `146b2e4a2d9d0bcd6bdaeabd50f0c16bead9d711` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
