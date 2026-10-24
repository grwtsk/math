# pseudoMetricAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:72e5fbb7ab0da231c019000b72a415f90786affb496141dc6ab0dfb63aa1ce3d",
  "kind": "abbrev",
  "lexical_name": "pseudoMetricAux",
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
  "slug": "pseudometricaux--da5afe4c03802c8de2dd48df",
  "source": {
    "blob": "a3b0dbc4ef24118b6e84bb3063adf08f7cab9d2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 380,
    "line": 347,
    "path": "GRWTSK/Topology/MetricTopology/PiLp/Variant321b063184b62cf622deae7fce0fe9d4352d5de59f0f92049712f6adb0f6d811.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da5afe4c03802c8de2dd48df06ca290d3359a37b7d5ab14d3fb1b7e6f1b35d81",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PiLp/Variant321b063184b62cf622deae7fce0fe9d4352d5de59f0f92049712f6adb0f6d811.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:72e5fbb7ab0da231c019000b72a415f90786affb496141dc6ab0dfb63aa1ce3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev pseudoMetricAux : PseudoMetricSpace (PiLp p α) :=
  PseudoEMetricSpace.toPseudoMetricSpaceOfDist dist
    (fun f g => by
      rcases p.dichotomy with (rfl | h)
      · exact iSup_edist_ne_top_aux f g
      · rw [edist_eq_sum (zero_lt_one.trans_le h)]
        exact ENNReal.rpow_ne_top_of_nonneg (by positivity) <| ENNReal.sum_ne_top.2 fun _ _ ↦
          ENNReal.rpow_ne_top_of_nonneg (by positivity) (edist_ne_top _ _))
    fun f g => by
    rcases p.dichotomy with (rfl | h)
    · rw [edist_eq_iSup, dist_eq_iSup]
      cases isEmpty_or_nonempty ι
      · simp only [Real.iSup_of_isEmpty, ciSup_of_empty, ENNReal.bot_eq_zero, ENNReal.toReal_zero]
      · refine le_antisymm (ciSup_le fun i => ?_) ?_
        · rw [← ENNReal.ofReal_le_iff_le_toReal (iSup_edist_ne_top_aux f g), ←
            PseudoMetricSpace.edist_dist]
          -- Porting note: `le_iSup` needed some help
          exact le_iSup (fun k => edist (f k) (g k)) i
        · refine ENNReal.toReal_le_of_le_ofReal (Real.sSup_nonneg ?_) (iSup_le fun i => ?_)
          · rintro - ⟨i, rfl⟩
            exact dist_nonneg
          · change PseudoMetricSpace.edist _ _ ≤ _
            rw [PseudoMetricSpace.edist_dist]
            -- Porting note: `le_ciSup` needed some help
            exact ENNReal.ofReal_le_ofReal
              (le_ciSup (Finite.bddAbove_range (fun k => dist (f k) (g k))) i)
    · have A : ∀ i, edist (f i) (g i) ^ p.toReal ≠ ⊤ := fun i =>
        ENNReal.rpow_ne_top_of_nonneg (zero_le_one.trans h) (edist_ne_top _ _)
      simp only [edist_eq_sum (zero_lt_one.trans_le h), dist_edist, ENNReal.toReal_rpow,
        dist_eq_sum (zero_lt_one.trans_le h), ← ENNReal.toReal_sum fun i _ => A i]

attribute [local instance] PiLp.pseudoMetricAux

variable {p β} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PiLp/Variant321b063184b62cf622deae7fce0fe9d4352d5de59f0f92049712f6adb0f6d811.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PiLp/Variant321b063184b62cf622deae7fce0fe9d4352d5de59f0f92049712f6adb0f6d811.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3b0dbc4ef24118b6e84bb3063adf08f7cab9d2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
