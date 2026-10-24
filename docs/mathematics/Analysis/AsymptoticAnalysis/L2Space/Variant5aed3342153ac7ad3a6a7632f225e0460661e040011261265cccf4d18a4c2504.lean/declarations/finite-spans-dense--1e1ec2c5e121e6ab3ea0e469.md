# finite_spans_dense

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3fb005c5-fbb4-dcda-5dd4-fca73658e933",
  "kind": "theorem",
  "lexical_name": "finite_spans_dense",
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
  "slug": "finite-spans-dense--1e1ec2c5e121e6ab3ea0e469",
  "source": {
    "blob": "1f8ef57385bf24c42aab22ca7ebb64c7ce30a17a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 547,
    "line": 533,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/L2Space/Variant5aed3342153ac7ad3a6a7632f225e0460661e040011261265cccf4d18a4c2504.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e1ec2c5e121e6ab3ea0e469be6de9d876b7e1f3884ea66f27b2de19ebd89d38",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/L2Space/Variant5aed3342153ac7ad3a6a7632f225e0460661e040011261265cccf4d18a4c2504.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3fb005c5-fbb4-dcda-5dd4-fca73658e933`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 533–547.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_spans_dense [DecidableEq E] (b : HilbertBasis ι 𝕜 E) :
    (⨆ J : Finset ι, span 𝕜 (J.image b : Set E)).topologicalClosure = ⊤ :=
  eq_top_iff.mpr <| b.dense_span.ge.trans (by
    simp_rw [← Submodule.span_iUnion]
    exact topologicalClosure_mono (span_mono <| Set.range_subset_iff.mpr fun i =>
      Set.mem_iUnion_of_mem {i} <| Finset.mem_coe.mpr <| Finset.mem_image_of_mem _ <|
      Finset.mem_singleton_self i))

variable [CompleteSpace E]

section
variable {v : ι → E} (hv : Orthonormal 𝕜 v)
include hv

/-- An orthonormal family of vectors whose span is dense in the whole module is a Hilbert basis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/L2Space/Variant5aed3342153ac7ad3a6a7632f225e0460661e040011261265cccf4d18a4c2504.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/L2Space/Variant5aed3342153ac7ad3a6a7632f225e0460661e040011261265cccf4d18a4c2504.lean#L533).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f8ef57385bf24c42aab22ca7ebb64c7ce30a17a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
