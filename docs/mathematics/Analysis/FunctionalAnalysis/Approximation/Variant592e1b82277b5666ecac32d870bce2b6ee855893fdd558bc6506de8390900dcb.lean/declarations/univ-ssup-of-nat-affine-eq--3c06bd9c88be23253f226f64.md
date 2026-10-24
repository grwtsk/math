# univ_sSup_of_nat_affine_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0658a7e822f25a8d56985d6617e531fa76d573ad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 219,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/592e1b82277b5666ecac32d870bce2b6ee855893fdd558bc6506de8390900dcb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b829bbc8-0b8b-a33c-dae9-cdc627ab5cee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4554b8c1-b0a2-9411-1f1e-33950db50d61",
  "kind": "theorem",
  "lexical_name": "univ_sSup_of_nat_affine_eq",
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
  "slug": "univ-ssup-of-nat-affine-eq--3c06bd9c88be23253f226f64",
  "source": {
    "blob": "0658a7e822f25a8d56985d6617e531fa76d573ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 219,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Approximation/Variant592e1b82277b5666ecac32d870bce2b6ee855893fdd558bc6506de8390900dcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c06bd9c88be23253f226f6487376ff17162a09a60a07af98795c87f1df91c92",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Approximation/Variant592e1b82277b5666ecac32d870bce2b6ee855893fdd558bc6506de8390900dcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4554b8c1-b0a2-9411-1f1e-33950db50d61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem univ_sSup_of_nat_affine_eq [HereditarilyLindelofSpace E]
    (hφc : LowerSemicontinuous φ) (hφcv : ConvexOn ℝ univ φ) :
    ∃ (l : ℕ → E →L[𝕜] 𝕜) (c : ℕ → ℝ), (∀ i, re ∘ (l i) + const E (c i) ≤ φ)
      ∧ ⨆ i, re ∘ (l i) + const E (c i) = φ := by
  obtain ⟨l, c, hle, hsup⟩ := hφcv.sSup_of_nat_affine_eq (𝕜 := 𝕜) (s := univ) isClosed_univ
    (lowerSemicontinuousOn_univ_iff.2 hφc)
  refine ⟨l, c, fun i x ↦ hle i ⟨x, trivial⟩, ?_⟩
  ext x
  simpa using congrFun hsup ⟨x, trivial⟩

end RCLike

section Real

variable [AddCommGroup E] [Module ℝ E] [IsTopologicalAddGroup E] [ContinuousSMul ℝ E]
  [LocallyConvexSpace ℝ E]

/-- The real version of `sSup_affine_eq`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Approximation/Variant592e1b82277b5666ecac32d870bce2b6ee855893fdd558bc6506de8390900dcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Approximation/Variant592e1b82277b5666ecac32d870bce2b6ee855893fdd558bc6506de8390900dcb.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0658a7e822f25a8d56985d6617e531fa76d573ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
