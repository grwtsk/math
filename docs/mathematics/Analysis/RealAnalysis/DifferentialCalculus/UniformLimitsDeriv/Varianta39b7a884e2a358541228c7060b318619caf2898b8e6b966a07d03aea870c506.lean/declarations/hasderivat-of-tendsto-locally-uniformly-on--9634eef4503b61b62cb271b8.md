# hasDerivAt_of_tendsto_locally_uniformly_on'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e05de9ee-451f-efdd-a0f3-09e1c388fb40",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_of_tendsto_locally_uniformly_on'",
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
  "slug": "hasderivat-of-tendsto-locally-uniformly-on--9634eef4503b61b62cb271b8",
  "source": {
    "blob": "4d4fe20e5f4dd124725b1c3f352aec144d77330a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 543,
    "line": 537,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Varianta39b7a884e2a358541228c7060b318619caf2898b8e6b966a07d03aea870c506.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9634eef4503b61b62cb271b82d13382180d868bba7543c4ece663e2d95801fb0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Varianta39b7a884e2a358541228c7060b318619caf2898b8e6b966a07d03aea870c506.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e05de9ee-451f-efdd-a0f3-09e1c388fb40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 537–543.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAt_of_tendsto_locally_uniformly_on' [NeBot l] {s : Set 𝕜} (hs : IsOpen s)
    (hf' : TendstoLocallyUniformlyOn (deriv ∘ f) g' l s)
    (hf : ∀ᶠ n in l, DifferentiableOn 𝕜 (f n) s)
    (hfg : ∀ x ∈ s, Tendsto (fun n => f n x) l (𝓝 (g x))) (hx : x ∈ s) : HasDerivAt g (g' x) x := by
  refine hasDerivAt_of_tendstoLocallyUniformlyOn hs hf' ?_ hfg hx
  filter_upwards [hf] with n h z hz using ((h z hz).differentiableAt (hs.mem_nhds hz)).hasDerivAt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Varianta39b7a884e2a358541228c7060b318619caf2898b8e6b966a07d03aea870c506.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Varianta39b7a884e2a358541228c7060b318619caf2898b8e6b966a07d03aea870c506.lean#L537).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d4fe20e5f4dd124725b1c3f352aec144d77330a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
