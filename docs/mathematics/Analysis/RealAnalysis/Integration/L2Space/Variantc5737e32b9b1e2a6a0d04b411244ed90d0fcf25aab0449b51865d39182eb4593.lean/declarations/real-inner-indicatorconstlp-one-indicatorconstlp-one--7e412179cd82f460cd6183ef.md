# real_inner_indicatorConstLp_one_indicatorConstLp_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "77e0d3526db347b58cdd46fe666067be7e4fbe35",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 248,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c5737e32b9b1e2a6a0d04b411244ed90d0fcf25aab0449b51865d39182eb4593.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d1e8cb70-1a27-75f4-7cd5-c5fec6926420",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ff796f2e-4803-a7ed-61ac-7e51f9832659",
  "kind": "lemma",
  "lexical_name": "real_inner_indicatorConstLp_one_indicatorConstLp_one",
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
  "slug": "real-inner-indicatorconstlp-one-indicatorconstlp-one--7e412179cd82f460cd6183ef",
  "source": {
    "blob": "77e0d3526db347b58cdd46fe666067be7e4fbe35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 248,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/L2Space/Variantc5737e32b9b1e2a6a0d04b411244ed90d0fcf25aab0449b51865d39182eb4593.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e412179cd82f460cd6183ef279a352d239f148cb5846a04b91d46e945f4a360",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/L2Space/Variantc5737e32b9b1e2a6a0d04b411244ed90d0fcf25aab0449b51865d39182eb4593.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff796f2e-4803-a7ed-61ac-7e51f9832659`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma real_inner_indicatorConstLp_one_indicatorConstLp_one
    (hs : MeasurableSet s) (ht : MeasurableSet t)
    (hμs : μ s ≠ ∞ := by finiteness) (hμt : μ t ≠ ∞ := by finiteness) :
    ⟪indicatorConstLp 2 hs hμs (1 : ℝ), indicatorConstLp 2 ht hμt (1 : ℝ)⟫_ℝ = μ.real (s ∩ t) := by
  simp [inner_indicatorConstLp_indicatorConstLp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/L2Space/Variantc5737e32b9b1e2a6a0d04b411244ed90d0fcf25aab0449b51865d39182eb4593.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/L2Space/Variantc5737e32b9b1e2a6a0d04b411244ed90d0fcf25aab0449b51865d39182eb4593.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77e0d3526db347b58cdd46fe666067be7e4fbe35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
