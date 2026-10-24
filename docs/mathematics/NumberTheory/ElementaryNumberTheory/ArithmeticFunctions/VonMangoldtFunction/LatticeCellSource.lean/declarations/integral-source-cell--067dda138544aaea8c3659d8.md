# integral_source_cell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce73a0bc-0350-fe7d-93e9-208ebfacaab4",
  "kind": "theorem",
  "lexical_name": "integral_source_cell",
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
  "slug": "integral-source-cell--067dda138544aaea8c3659d8",
  "source": {
    "blob": "4f357f78a2fc24c8c7cf71eb0bc367f1b7672181",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 143,
    "path": "GRWTSK/NumberTheory/VonMangoldt/LatticeCellSource.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:067dda138544aaea8c3659d8fb212893c9650268addc0f4f9812685c4c08b5ec",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/LatticeCellSource.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce73a0bc-0350-fe7d-93e9-208ebfacaab4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_source_cell {X k : ℕ} (hX : 0<X) (hk : k<X) :
    (∫ t in edge X k..edge X (k+1), cumulative X t)=
      cellMeanSource X k/(X:ℝ) := by
  have hp : (0:ℝ)<X := by exact_mod_cast hX
  have hab := (edge_lt_next hX k).le
  have heq : (∫ t in edge X k..edge X (k+1), cumulative X t)=
      ∫ t in edge X k..edge X (k+1), prefix X k-logarithm t := by
    apply intervalIntegral.integral_congr_ae_restrict
    rw [uIoc_of_le hab, ← restrict_Ioo_eq_restrict_Ioc]
    filter_upwards [ae_restrict_mem measurableSet_Ioo] with t ht
    exact cumulative_on_open_cell hX ht
  rw [heq]
  have hunit := edges_in_unit hX hk
  have hsub : Icc (edge X k) (edge X (k+1)) ⊆ Icc (0:ℝ) 1 := by
    intro t ht
    exact ⟨hunit.1.trans ht.1, ht.2.trans hunit.2⟩
  have hlog : (∫ t in edge X k..edge X (k+1), logarithm t)=
      logPrimitive (edge X (k+1))-logPrimitive (edge X k) := by
    apply intervalIntegral.integral_eq_sub_of_hasDerivAt
    · intro t ht
      apply logPrimitive_hasDerivAt
      apply hsub
      simpa [uIcc_of_le hab] using ht
    · exact (logarithm_continuousOn.mono hsub).intervalIntegrable_of_Icc hab
  rw [intervalIntegral.integral_sub
    (intervalIntegrable_const) ((logarithm_continuousOn.mono hsub).intervalIntegrable_of_Icc hab),
    intervalIntegral.integral_const, hlog]
  simp only [smul_eq_mul, edge_width hX]
  unfold cellMeanSource cellMeanLog
  field_simp [ne_of_gt hp]
  ring

end GRWTSK.NumberTheory.VonMangoldt.LatticeCellSource
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/LatticeCellSource.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/VonMangoldt/LatticeCellSource.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f357f78a2fc24c8c7cf71eb0bc367f1b7672181` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
