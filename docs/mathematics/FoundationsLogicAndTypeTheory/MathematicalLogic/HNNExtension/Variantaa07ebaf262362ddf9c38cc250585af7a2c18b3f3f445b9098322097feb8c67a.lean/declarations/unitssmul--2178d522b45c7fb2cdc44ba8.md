# unitsSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:158f1c4be77f0a78485cfce2a766e3d13084bd26ea09e4b4f4915a92177c1699",
  "kind": "def",
  "lexical_name": "unitsSMul",
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
  "slug": "unitssmul--2178d522b45c7fb2cdc44ba8",
  "source": {
    "blob": "2a01288bc39d0afd4d2b3230c62eff275de3ce01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 371,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Variantaa07ebaf262362ddf9c38cc250585af7a2c18b3f3f445b9098322097feb8c67a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2178d522b45c7fb2cdc44ba8bbf73e44688c788a4317ef4be5cf1cec3bc8ec7a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Variantaa07ebaf262362ddf9c38cc250585af7a2c18b3f3f445b9098322097feb8c67a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:158f1c4be77f0a78485cfce2a766e3d13084bd26ea09e4b4f4915a92177c1699`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def unitsSMul (u : ℤˣ) (w : NormalWord d) : NormalWord d :=
  letI := Classical.dec
  if h : Cancels u w
  then unitsSMulWithCancel φ u w h
  else let g' := unitsSMulGroup φ d u w.head
    cons g'.1 u ((g'.2 * w.head⁻¹ : G) • w)
      (by simp)
      (by
        simp only [g', group_smul_toList, Option.mem_def, Option.map_eq_some_iff, Prod.exists,
          exists_and_right, exists_eq_right, group_smul_head, inv_mul_cancel_right,
          forall_exists_index, unitsSMulGroup]
        simp only [Cancels, Option.map_eq_some_iff, Prod.exists, exists_and_right, exists_eq_right,
          not_and, not_exists] at h
        intro u' x hx hmem
        have : w.head ∈ toSubgroup A B u := by
          have := (d.compl u).rightCosetEquivalence_equiv_snd w.head
          rw [RightCosetEquivalence, rightCoset_eq_iff, mul_mem_cancel_left hmem] at this
          simp_all
        have := h this x
        simp_all [Int.units_ne_iff_eq_neg])

/-- A condition for not cancelling whose hypotheses are the same as those of the `cons` function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Variantaa07ebaf262362ddf9c38cc250585af7a2c18b3f3f445b9098322097feb8c67a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Variantaa07ebaf262362ddf9c38cc250585af7a2c18b3f3f445b9098322097feb8c67a.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a01288bc39d0afd4d2b3230c62eff275de3ce01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
