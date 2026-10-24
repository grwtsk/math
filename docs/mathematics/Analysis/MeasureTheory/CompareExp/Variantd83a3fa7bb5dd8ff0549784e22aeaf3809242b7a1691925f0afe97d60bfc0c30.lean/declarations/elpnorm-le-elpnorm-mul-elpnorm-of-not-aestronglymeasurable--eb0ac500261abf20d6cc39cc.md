# eLpNorm_le_eLpNorm_mul_eLpNorm_of_not_aestronglyMeasurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ca89c56b1e589d63ce7c4f6721177ccf1e147411",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 236,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d8/d83a3fa7bb5dd8ff0549784e22aeaf3809242b7a1691925f0afe97d60bfc0c30.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1875926f-3d5b-39ed-5973-160efc3817fa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:23f2f54b-2cb9-1fb4-56f7-9a5822c7d783",
  "kind": "theorem",
  "lexical_name": "eLpNorm_le_eLpNorm_mul_eLpNorm_of_not_aestronglyMeasurable",
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
  "slug": "elpnorm-le-elpnorm-mul-elpnorm-of-not-aestronglymeasurable--eb0ac500261abf20d6cc39cc",
  "source": {
    "blob": "ca89c56b1e589d63ce7c4f6721177ccf1e147411",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 236,
    "path": "GRWTSK/Analysis/MeasureTheory/CompareExp/Variantd83a3fa7bb5dd8ff0549784e22aeaf3809242b7a1691925f0afe97d60bfc0c30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb0ac500261abf20d6cc39cc3b0b387185ede76d7ea4dec4ee3aad7d0b464d71",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CompareExp/Variantd83a3fa7bb5dd8ff0549784e22aeaf3809242b7a1691925f0afe97d60bfc0c30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23f2f54b-2cb9-1fb4-56f7-9a5822c7d783`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eLpNorm_le_eLpNorm_mul_eLpNorm_of_not_aestronglyMeasurable
    (p q r : ℝ≥0∞) (b : E → F → G) (c : ℝ≥0)
    (h : ∀ᵐ x ∂μ, ‖b (f x) (g x)‖₊ ≤ c * ‖f x‖₊ * ‖g x‖₊)
    (hfg : ¬ (AEStronglyMeasurable f μ ∧ AEStronglyMeasurable g μ))
    (hp : p ≠ 0) (hq : q ≠ 0) :
    eLpNorm (fun x => b (f x) (g x)) r μ ≤ c * eLpNorm f p μ * eLpNorm g q μ := by
  apply eLpNorm_le_eLpNorm_mul_eLpNorm_of_not_aestronglyMeasurable_ennreal p q r b c ?_ hfg hp hq
  filter_upwards [h] with x hx
  simp only [enorm_eq_nnnorm]
  exact_mod_cast hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CompareExp/Variantd83a3fa7bb5dd8ff0549784e22aeaf3809242b7a1691925f0afe97d60bfc0c30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CompareExp/Variantd83a3fa7bb5dd8ff0549784e22aeaf3809242b7a1691925f0afe97d60bfc0c30.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca89c56b1e589d63ce7c4f6721177ccf1e147411` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
