# sum_eq_zero_of_mem_span_completeFamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "22ee702d4e5918abbd259fc06dfc7d00056637d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 382,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/93b6e055dad737d9b3fca7bf1864a9076a1e23d703a6f86c877635ec0c6140e1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:41635c81-27cc-b3c3-b1c9-4e7b9424fd8f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4627f6e4-d9cc-c852-623e-a5ff8ba695d4",
  "kind": "theorem",
  "lexical_name": "sum_eq_zero_of_mem_span_completeFamily",
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
  "slug": "sum-eq-zero-of-mem-span-completefamily--dcdef2cc7e8d7d05a7f96431",
  "source": {
    "blob": "22ee702d4e5918abbd259fc06dfc7d00056637d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 395,
    "line": 382,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormLeOne/Variant93b6e055dad737d9b3fca7bf1864a9076a1e23d703a6f86c877635ec0c6140e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcdef2cc7e8d7d05a7f964316034c0f8300496aea5ff76136730cf008b823c23",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/NormLeOne/Variant93b6e055dad737d9b3fca7bf1864a9076a1e23d703a6f86c877635ec0c6140e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4627f6e4-d9cc-c852-623e-a5ff8ba695d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–395.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_eq_zero_of_mem_span_completeFamily {x : realSpace K}
    (hx : x ∈ Submodule.span ℝ (Set.range fun w : {w // w ≠ w₀} ↦ completeFamily K w.1)) :
    ∑ w, x w = 0 := by
  induction hx using Submodule.span_induction with
  | mem _ h =>
      obtain ⟨w, rfl⟩ := h
      simp_rw [completeFamily, dite_eq_right w.prop, sum_expMap_symm_apply (coe_ne_zero _),
        Units.norm, Rat.cast_one, Real.log_one]
  | zero => simp
  | add _ _ _ _ hx hy => simp [sum_add_distrib, hx, hy]
  | smul _ _ _ hx => simp [← mul_sum, hx]

variable (K)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/NormLeOne/Variant93b6e055dad737d9b3fca7bf1864a9076a1e23d703a6f86c877635ec0c6140e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormLeOne/Variant93b6e055dad737d9b3fca7bf1864a9076a1e23d703a6f86c877635ec0c6140e1.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22ee702d4e5918abbd259fc06dfc7d00056637d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
