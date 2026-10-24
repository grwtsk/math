# HasFPowerSeriesAt.isBigO_sub_partialSum_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9fbd45999b04f41db55eab772f33c8f9ba6b3aab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 695,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/56560d18089ed0c608c5a123d91493a9881f345e53133ced8ad34438eb35bb45.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:117d7984-0944-3521-f105-186020bb2daf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:88e6fd18-f498-85a2-0ec6-c0309b950aca",
  "kind": "theorem",
  "lexical_name": "HasFPowerSeriesAt.isBigO_sub_partialSum_pow",
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
  "slug": "hasfpowerseriesat-isbigo-sub-partialsum-pow--0c56d824f9733b96cc732c92",
  "source": {
    "blob": "9fbd45999b04f41db55eab772f33c8f9ba6b3aab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 712,
    "line": 695,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant56560d18089ed0c608c5a123d91493a9881f345e53133ced8ad34438eb35bb45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c56d824f9733b96cc732c9284742af1594e8c967999391306130eb25ef93afe",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Basic/Variant56560d18089ed0c608c5a123d91493a9881f345e53133ced8ad34438eb35bb45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88e6fd18-f498-85a2-0ec6-c0309b950aca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 695–712.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFPowerSeriesAt.isBigO_sub_partialSum_pow (hf : HasFPowerSeriesAt f p x) (n : ℕ) :
    (fun y : E => f (x + y) - p.partialSum n y) =O[𝓝 0] fun y => ‖y‖ ^ n := by
  rcases hf with ⟨r, hf⟩
  rcases ENNReal.lt_iff_exists_nnreal_btwn.1 hf.r_pos with ⟨r', r'0, h⟩
  obtain ⟨a, -, C, -, hp⟩ : ∃ a ∈ Ioo (0 : ℝ) 1, ∃ C > 0, ∀ y ∈ Metric.ball (0 : E) r', ∀ n,
      ‖f (x + y) - p.partialSum n y‖ ≤ C * (a * (‖y‖ / r')) ^ n :=
    hf.uniform_geometric_approx' h
  refine' isBigO_iff.2 ⟨C * (a / r') ^ n, _⟩
  replace r'0 : 0 < (r' : ℝ); · exact_mod_cast r'0
  filter_upwards [Metric.ball_mem_nhds (0 : E) r'0] with y hy
  simpa [mul_pow, mul_div_assoc, mul_assoc, div_mul_eq_mul_div] using hp y hy n
set_option linter.uppercaseLean3 false in
#align has_fpower_series_at.is_O_sub_partial_sum_pow HasFPowerSeriesAt.isBigO_sub_partialSum_pow

/-- If `f` has formal power series `∑ n, pₙ` on a ball of radius `r`, then for `y, z` in any smaller
ball, the norm of the difference `f y - f z - p 1 (fun _ ↦ y - z)` is bounded above by
`C * (max ‖y - x‖ ‖z - x‖) * ‖y - z‖`. This lemma formulates this property using `IsBigO` and
`Filter.principal` on `E × E`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Basic/Variant56560d18089ed0c608c5a123d91493a9881f345e53133ced8ad34438eb35bb45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant56560d18089ed0c608c5a123d91493a9881f345e53133ced8ad34438eb35bb45.lean#L695).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fbd45999b04f41db55eab772f33c8f9ba6b3aab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
