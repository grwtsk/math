# tendsto_Lp_of_tendstoInMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec232e66-4e97-b159-5a9a-e00d40fb0009",
  "kind": "theorem",
  "lexical_name": "tendsto_Lp_of_tendstoInMeasure",
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
  "slug": "tendsto-lp-of-tendstoinmeasure--524510dfd87fbf38f1b7f473",
  "source": {
    "blob": "fd1a0d9fca4fadf47abf2fe514a1d90c69cfcd84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 362,
    "path": "GRWTSK/Topology/GeneralTopology/UnifTight/Variantabc24083152e9e5d72244f3d73726b9cb52fe4e70df735ff03080cb2fd0a1494.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:524510dfd87fbf38f1b7f473ea14a33776f03fcb3e67873027a40d23b6538d01",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UnifTight/Variantabc24083152e9e5d72244f3d73726b9cb52fe4e70df735ff03080cb2fd0a1494.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec232e66-4e97-b159-5a9a-e00d40fb0009`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_Lp_of_tendstoInMeasure (hp : 1 ≤ p) (hp' : p ≠ ∞)
    (hf : ∀ n, AEStronglyMeasurable (f n) μ) (hg : MemLp g p μ)
    (hui : UnifIntegrable f p μ) (hut : UnifTight f p μ)
    (hfg : TendstoInMeasure μ f atTop g) : Tendsto (fun n ↦ eLpNorm (f n - g) p μ) atTop (𝓝 0) := by
  refine tendsto_of_subseq_tendsto fun ns hns => ?_
  obtain ⟨ms, _, hms'⟩ := TendstoInMeasure.exists_seq_tendsto_ae fun ε hε => (hfg ε hε).comp hns
  exact ⟨ms,
    tendsto_Lp_of_tendsto_ae hp hp' (fun _ => hf _) hg
      (fun ε hε => -- `UnifIntegrable` on a subsequence
        let ⟨δ, hδ, hδ'⟩ := hui hε
        ⟨δ, hδ, fun i s hs hμs => hδ' _ s hs hμs⟩)
      (fun ε hε => -- `UnifTight` on a subsequence
        let ⟨s, hμs, hfε⟩ := hut hε
        ⟨s, hμs, fun i => hfε _⟩)
      hms'⟩

/-- **Vitali's convergence theorem** (non-finite measure version).

A sequence of functions `f` converges to `g` in Lp
if and only if it is uniformly integrable, uniformly tight and converges to `g` in measure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UnifTight/Variantabc24083152e9e5d72244f3d73726b9cb52fe4e70df735ff03080cb2fd0a1494.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UnifTight/Variantabc24083152e9e5d72244f3d73726b9cb52fe4e70df735ff03080cb2fd0a1494.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd1a0d9fca4fadf47abf2fe514a1d90c69cfcd84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
