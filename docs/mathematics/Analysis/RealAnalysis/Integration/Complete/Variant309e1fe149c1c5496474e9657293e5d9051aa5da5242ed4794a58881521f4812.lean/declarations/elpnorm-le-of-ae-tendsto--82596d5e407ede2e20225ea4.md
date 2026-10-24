# eLpNorm_le_of_ae_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "188f566e1455bea4f8e88435e067e8a5032f9ba5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/309e1fe149c1c5496474e9657293e5d9051aa5da5242ed4794a58881521f4812.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:56515880-b10e-4f0e-7fc3-57ddf10d7612",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ea4080cf-de36-454a-5c02-4576f2edd716",
  "kind": "theorem",
  "lexical_name": "eLpNorm_le_of_ae_tendsto",
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
  "slug": "elpnorm-le-of-ae-tendsto--82596d5e407ede2e20225ea4",
  "source": {
    "blob": "188f566e1455bea4f8e88435e067e8a5032f9ba5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 92,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Complete/Variant309e1fe149c1c5496474e9657293e5d9051aa5da5242ed4794a58881521f4812.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82596d5e407ede2e20225ea49b0f19056d136cf9d0f09289553cc7202d5cd6a1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Complete/Variant309e1fe149c1c5496474e9657293e5d9051aa5da5242ed4794a58881521f4812.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea4080cf-de36-454a-5c02-4576f2edd716`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eLpNorm_le_of_ae_tendsto {ι : Type*} {u : Filter ι} [NeBot u] [IsCountablyGenerated u]
    {f : ι → α → E} {g : α → E} {C : ℝ≥0∞} (bound : ∀ᶠ n in u, eLpNorm (f n) p μ ≤ C)
    (hf : ∀ n, AEStronglyMeasurable (f n) μ) (hg : AEStronglyMeasurable g μ)
    (h_tendsto : ∀ᵐ (x : α) ∂μ, Tendsto (f · x) u (𝓝 (g x))) :
    eLpNorm g p μ ≤ C := by
  obtain ⟨v, hv⟩ := exists_seq_tendsto u
  have : ∀ᵐ (x : α) ∂μ, Tendsto (fun n => f (v n) x) atTop (𝓝 (g x)) := by
    filter_upwards [h_tendsto] with x hx
    exact hx.comp hv
  calc
  _ ≤ atTop.liminf (fun (n : ℕ) => eLpNorm (f (v n)) p μ) :=
    Lp.eLpNorm_lim_le_liminf_eLpNorm (fun n => hf (v n)) g hg this
  _ ≤ C := by
    refine liminf_le_of_le (by isBoundedDefault) (fun b hb => ?_)
    obtain ⟨n, hn⟩ := (hb.and (hv.eventually bound)).exists
    exact hn.1.trans hn.2

/-! ### `Lp` is complete iff Cauchy sequences of `ℒp` have limits in `ℒp` -/

variable {E : Type*} [NormedAddCommGroup E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Complete/Variant309e1fe149c1c5496474e9657293e5d9051aa5da5242ed4794a58881521f4812.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Complete/Variant309e1fe149c1c5496474e9657293e5d9051aa5da5242ed4794a58881521f4812.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `188f566e1455bea4f8e88435e067e8a5032f9ba5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
