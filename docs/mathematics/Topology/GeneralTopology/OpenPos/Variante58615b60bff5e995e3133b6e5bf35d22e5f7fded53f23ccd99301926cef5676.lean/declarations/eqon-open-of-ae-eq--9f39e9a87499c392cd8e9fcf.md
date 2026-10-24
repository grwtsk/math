# eqOn_open_of_ae_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "64b8663d129b8d5d7613fb2bf7583eabf3a4d1d3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 115,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e58615b60bff5e995e3133b6e5bf35d22e5f7fded53f23ccd99301926cef5676.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:10d50b61-df9d-6586-0532-58b7a1f534e0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:59d93005-4c83-18b9-82a8-4557a68cc8c0",
  "kind": "theorem",
  "lexical_name": "eqOn_open_of_ae_eq",
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
  "slug": "eqon-open-of-ae-eq--9f39e9a87499c392cd8e9fcf",
  "source": {
    "blob": "64b8663d129b8d5d7613fb2bf7583eabf3a4d1d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 115,
    "path": "GRWTSK/Topology/GeneralTopology/OpenPos/Variante58615b60bff5e995e3133b6e5bf35d22e5f7fded53f23ccd99301926cef5676.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f39e9a87499c392cd8e9fcfb7f8d973f23d3168af41b9e7b480094e3b64bf1d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OpenPos/Variante58615b60bff5e995e3133b6e5bf35d22e5f7fded53f23ccd99301926cef5676.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59d93005-4c83-18b9-82a8-4557a68cc8c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eqOn_open_of_ae_eq {f g : X → Y} (h : f =ᵐ[μ.restrict U] g) (hU : IsOpen U)
    (hf : ContinuousOn f U) (hg : ContinuousOn g U) : EqOn f g U := by
  replace h := ae_imp_of_ae_restrict h
  simp only [ae_iff, Classical.not_imp] at h
  have : IsOpen (U ∩ { a | f a ≠ g a }) := by
    refine isOpen_iff_mem_nhds.mpr fun a ha => inter_mem (hU.mem_nhds ha.1) ?_
    rcases ha with ⟨ha : a ∈ U, ha' : (f a, g a) ∈ (diagonal Y)ᶜ⟩
    exact
      (hf.continuousAt (hU.mem_nhds ha)).prodMk_nhds (hg.continuousAt (hU.mem_nhds ha))
        (isClosed_diagonal.isOpen_compl.mem_nhds ha')
  replace := (this.eq_empty_of_measure_zero h).le
  exact fun x hx => Classical.not_not.1 fun h => this ⟨hx, h⟩

/-- If two continuous functions are a.e. equal, then they are equal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OpenPos/Variante58615b60bff5e995e3133b6e5bf35d22e5f7fded53f23ccd99301926cef5676.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OpenPos/Variante58615b60bff5e995e3133b6e5bf35d22e5f7fded53f23ccd99301926cef5676.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64b8663d129b8d5d7613fb2bf7583eabf3a4d1d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
