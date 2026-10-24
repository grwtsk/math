# lintegral_eq_tsum'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b3b0246c7de95c6f2f9f04d8e60615abe127267",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 229,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/eece52df6e552dc627867dbb8f402b2092fc57d8151dbd24557c98d3db6a2b89.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:43e8d728-efa5-f8c8-af8a-7664c519a9ed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8128ba2a-b8a0-ac97-f020-f7e6dc9f7553",
  "kind": "theorem",
  "lexical_name": "lintegral_eq_tsum'",
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
  "slug": "lintegral-eq-tsum--4923c0679df55f635bb8022b",
  "source": {
    "blob": "7b3b0246c7de95c6f2f9f04d8e60615abe127267",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 229,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FundamentalDomain/Varianteece52df6e552dc627867dbb8f402b2092fc57d8151dbd24557c98d3db6a2b89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4923c0679df55f635bb8022bb8a8ed25c00463f2d58d3a6f39ae4238803c7836",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FundamentalDomain/Varianteece52df6e552dc627867dbb8f402b2092fc57d8151dbd24557c98d3db6a2b89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8128ba2a-b8a0-ac97-f020-f7e6dc9f7553`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_eq_tsum' (h : IsFundamentalDomain G s μ) (f : α → ℝ≥0∞) :
    ∫⁻ x, f x ∂μ = ∑' g : G, ∫⁻ x in s, f (g⁻¹ • x) ∂μ :=
  calc
    ∫⁻ x, f x ∂μ = ∑' g : G, ∫⁻ x in g • s, f x ∂μ := h.lintegral_eq_tsum f
    _ = ∑' g : G, ∫⁻ x in g⁻¹ • s, f x ∂μ := ((Equiv.inv G).tsum_eq _).symm
    _ = ∑' g : G, ∫⁻ x in s, f (g⁻¹ • x) ∂μ := tsum_congr fun g => Eq.symm <|
      (measurePreserving_smul g⁻¹ μ).setLIntegral_comp_emb (measurableEmbedding_const_smul _) _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FundamentalDomain/Varianteece52df6e552dc627867dbb8f402b2092fc57d8151dbd24557c98d3db6a2b89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FundamentalDomain/Varianteece52df6e552dc627867dbb8f402b2092fc57d8151dbd24557c98d3db6a2b89.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b3b0246c7de95c6f2f9f04d8e60615abe127267` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
