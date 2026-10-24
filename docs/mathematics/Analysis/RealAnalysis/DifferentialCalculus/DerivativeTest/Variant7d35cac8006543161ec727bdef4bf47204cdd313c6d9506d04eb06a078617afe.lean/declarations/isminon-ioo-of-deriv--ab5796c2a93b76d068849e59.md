# isMinOn_Ioo_of_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1017da179f46259c0349010e25819d0173d94ed8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 195,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7d/7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:81d3d6a0-bbff-9aaf-cb0e-8a4fc339523e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:446f30a2-d18f-c8ba-8468-80d9217e82f0",
  "kind": "lemma",
  "lexical_name": "isMinOn_Ioo_of_deriv",
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
  "slug": "isminon-ioo-of-deriv--ab5796c2a93b76d068849e59",
  "source": {
    "blob": "1017da179f46259c0349010e25819d0173d94ed8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 195,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab5796c2a93b76d068849e59b2fc401c60f0e19763aab3d0c3464095d2efecf3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:446f30a2-d18f-c8ba-8468-80d9217e82f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isMinOn_Ioo_of_deriv {f : ℝ → ℝ} {a b c : ℝ} (h : ContinuousAt f b)
    (hd₀ : DifferentiableOn ℝ f (Ioo a b)) (hd₁ : DifferentiableOn ℝ f (Ioo b c))
    (h₀ : ∀ x ∈ Ioo a b, deriv f x ≤ 0) (h₁ : ∀ x ∈ Ioo b c, 0 ≤ deriv f x) :
    IsMinOn f (Ioo a c) b := by
  refine isMinOn_Ioo_of_anti_mono ?_ ?_
  · apply antitoneOn_of_deriv_nonpos (convex_Ioc a b) (continuousOn_Ioc h hd₀) <;> simp_all
  · apply monotoneOn_of_deriv_nonneg (convex_Ico b c) (continuousOn_Ico h hd₁) <;> simp_all

/-- Suppose `f : ℝ → ℝ` is continuous at `b` and `c`, the derivative `f'` is nonpositive on
`Ioo a b` and nonnegative on `Ioo b c`. Then `f` attains its minimum on `Ioc a c` at `b`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1017da179f46259c0349010e25819d0173d94ed8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
