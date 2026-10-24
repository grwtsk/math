# Mform_eq_iter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e010fcb4ea1553e1e0e674f05839954799b6061d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/41139eba2832c4d77f3e307f86dc4ccccf4ffc04df870ef02d88750c0a2d859f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d33a2d32-5da7-fdf1-5ab0-87bd7c01856c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:052b6c35-432d-6ebf-f030-48109b50c4b3",
  "kind": "lemma",
  "lexical_name": "Mform_eq_iter",
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
  "slug": "mform-eq-iter--1d24b23d665da6d44772af9d",
  "source": {
    "blob": "e010fcb4ea1553e1e0e674f05839954799b6061d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 49,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CrossMuPCore/Variant41139eba2832c4d77f3e307f86dc4ccccf4ffc04df870ef02d88750c0a2d859f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d24b23d665da6d44772af9d7235038d1f14335a0b942187eae97cdb6b282445",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CrossMuPCore/Variant41139eba2832c4d77f3e307f86dc4ccccf4ffc04df870ef02d88750c0a2d859f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:052b6c35-432d-6ebf-f030-48109b50c4b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Mform_eq_iter (hΦ : Continuous Φ) {u v : ℝ → ℝ} (hu : Continuous u) (hv : Continuous v) :
    Mform Φ T u v
      = ∫ τ in Icc T (2 * T), u τ * ∫ τ' in Icc T (2 * T), Φ (τ - τ') ^ 2 * v τ' := by
  unfold Mform
  rw [Measure.volume_eq_prod, setIntegral_prod _ (Mform_integrableOn' hΦ hu hv)]
  refine setIntegral_congr_fun measurableSet_Icc fun τ _ => ?_
  rw [← integral_const_mul]
  exact integral_congr_ae (ae_of_all _ fun τ' => by ring)

/-- `∫_S Φ(y − c)² dy ≤ ∫_ℝ Φ²` (translation invariance, `Φ² ≥ 0`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CrossMuPCore/Variant41139eba2832c4d77f3e307f86dc4ccccf4ffc04df870ef02d88750c0a2d859f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CrossMuPCore/Variant41139eba2832c4d77f3e307f86dc4ccccf4ffc04df870ef02d88750c0a2d859f.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e010fcb4ea1553e1e0e674f05839954799b6061d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
