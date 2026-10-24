# example_compact_interval_authority

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81d20e24-6b5a-bf49-f216-29f9027ccfd5",
  "kind": "theorem",
  "lexical_name": "example_compact_interval_authority",
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
  "slug": "example-compact-interval-authority--c793f6406f931ec3562a34bc",
  "source": {
    "blob": "5f204cef4813cbb104e5fdf2e8c33b9faa21efaa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 241,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/HilbertMeshShadowExamples/Variant870caa70dfc3c4f1973f1016bcda402f90cb4dcb56302a32a2986e59c1d2133c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c793f6406f931ec3562a34bc97fc00f3b38b1f108ad19d66af5738246298f01f",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/HilbertMeshShadowExamples/Variant870caa70dfc3c4f1973f1016bcda402f90cb4dcb56302a32a2986e59c1d2133c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81d20e24-6b5a-bf49-f216-29f9027ccfd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem example_compact_interval_authority :
    IsCompact (Set.Icc (0 : ℝ) 1) ∧
      ∀ f : ℝ → ℝ,
        ContinuousOn f (Set.Icc (0 : ℝ) 1) →
          (∃ x ∈ Set.Icc (0 : ℝ) 1,
            ∀ y ∈ Set.Icc (0 : ℝ) 1, f y ≤ f x) ∧
          (∃ x ∈ Set.Icc (0 : ℝ) 1,
            ∀ y ∈ Set.Icc (0 : ℝ) 1, f x ≤ f y) :=
  MathlibBridge.Compactness.compactness_through_boundary_calculus 0 1 (by norm_num)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/HilbertMeshShadowExamples/Variant870caa70dfc3c4f1973f1016bcda402f90cb4dcb56302a32a2986e59c1d2133c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/HilbertMeshShadowExamples/Variant870caa70dfc3c4f1973f1016bcda402f90cb4dcb56302a32a2986e59c1d2133c.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f204cef4813cbb104e5fdf2e8c33b9faa21efaa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
