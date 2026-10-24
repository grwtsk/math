# pseudoMetricAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e28c99a42ce6e800ca9a88a08e841f2e5f4356aa4909d9cde9b07a04e10e90d3",
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
  "slug": "pseudometricaux--3c185335459633c75c3f54c6",
  "source": {
    "blob": "7592849e10e9f274cce1fff345663ebcf9fe2125",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 468,
    "line": 442,
    "path": "GRWTSK/Topology/MetricTopology/PiLp/Variantcbabff30df6cde2182d353091eb8dfb798e2b089976b2e71b021671741218deb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c185335459633c75c3f54c6569c21bb9cc55b4ee7297f7b6e4adb1916d42bd6",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PiLp/Variantcbabff30df6cde2182d353091eb8dfb798e2b089976b2e71b021671741218deb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e28c99a42ce6e800ca9a88a08e841f2e5f4356aa4909d9cde9b07a04e10e90d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 442–468.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev pseudoMetricAux : PseudoMetricSpace (PiLp p α) :=
  PseudoEMetricSpace.toPseudoMetricSpaceOfDist dist
    (fun f g => by
      rcases p.dichotomy with (rfl | h)
      · simp only [dist, top_ne_zero, ↓reduceIte]
        exact Real.iSup_nonneg fun i ↦ dist_nonneg
      · simp only [dist]
        split_ifs with hp
        · linarith
        · exact Real.iSup_nonneg fun i ↦ dist_nonneg
        · exact rpow_nonneg (Fintype.sum_nonneg fun i ↦ by positivity) (1 / p.toReal))
    fun f g => by
    rcases p.dichotomy with (rfl | h)
    · rw [edist_eq_iSup, dist_eq_iSup]
      cases isEmpty_or_nonempty ι
      · simp
      · refine ENNReal.eq_of_forall_le_nnreal_iff fun r ↦ ?_
        have : BddAbove <| .range fun i ↦ dist (f i) (g i) := Finite.bddAbove_range _
        simp [ciSup_le_iff this]
    · have : 0 < p.toReal := by rw [ENNReal.toReal_pos_iff_ne_top]; rintro rfl; norm_num at h
      simp only [edist_eq_sum, edist_dist, dist_eq_sum, this]
      rw [← ENNReal.ofReal_rpow_of_nonneg (by simp [Finset.sum_nonneg, Real.rpow_nonneg]) (by simp)]
      simp [Real.rpow_nonneg, ENNReal.ofReal_sum_of_nonneg, ← ENNReal.ofReal_rpow_of_nonneg]

attribute [local instance] PiLp.pseudoMetricAux

variable {p β} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PiLp/Variantcbabff30df6cde2182d353091eb8dfb798e2b089976b2e71b021671741218deb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PiLp/Variantcbabff30df6cde2182d353091eb8dfb798e2b089976b2e71b021671741218deb.lean#L442).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7592849e10e9f274cce1fff345663ebcf9fe2125` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
