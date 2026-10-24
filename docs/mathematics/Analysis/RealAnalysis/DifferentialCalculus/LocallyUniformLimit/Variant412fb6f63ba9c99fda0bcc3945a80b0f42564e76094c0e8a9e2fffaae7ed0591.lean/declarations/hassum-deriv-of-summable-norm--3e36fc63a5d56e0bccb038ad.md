# hasSum_deriv_of_summable_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea9dc391-21ab-70b7-2895-d18970d54910",
  "kind": "theorem",
  "lexical_name": "hasSum_deriv_of_summable_norm",
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
  "slug": "hassum-deriv-of-summable-norm--3e36fc63a5d56e0bccb038ad",
  "source": {
    "blob": "d691113fbecf81a638eac73916f0c2a3e089be78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 190,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant412fb6f63ba9c99fda0bcc3945a80b0f42564e76094c0e8a9e2fffaae7ed0591.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e36fc63a5d56e0bccb038ad0ccbcc897ac32bd882b62c9cb4618c456e6dccb2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant412fb6f63ba9c99fda0bcc3945a80b0f42564e76094c0e8a9e2fffaae7ed0591.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea9dc391-21ab-70b7-2895-d18970d54910`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_deriv_of_summable_norm {u : ι → ℝ} (hu : Summable u)
    (hf : ∀ i : ι, DifferentiableOn ℂ (F i) U) (hU : IsOpen U)
    (hF_le : ∀ (i : ι) (w : ℂ), w ∈ U → ‖F i w‖ ≤ u i) (hz : z ∈ U) :
    HasSum (fun i : ι => deriv (F i) z) (deriv (fun w : ℂ => ∑' i : ι, F i w) z) := by
  rw [HasSum]
  have hc := (tendstoUniformlyOn_tsum hu hF_le).tendstoLocallyUniformlyOn
  convert!
    (hc.deriv (Eventually.of_forall fun s => DifferentiableOn.fun_sum fun i _ => hf i)
          hU).tendsto_at
      hz using 1
  ext1 s
  exact (deriv_fun_sum fun i _ => (hf i).differentiableAt (hU.mem_nhds hz)).symm

end Tsums

section LogDeriv

/-- The logarithmic derivative of a sequence of functions converging locally uniformly to a
function is the logarithmic derivative of the limit function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant412fb6f63ba9c99fda0bcc3945a80b0f42564e76094c0e8a9e2fffaae7ed0591.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant412fb6f63ba9c99fda0bcc3945a80b0f42564e76094c0e8a9e2fffaae7ed0591.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d691113fbecf81a638eac73916f0c2a3e089be78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
