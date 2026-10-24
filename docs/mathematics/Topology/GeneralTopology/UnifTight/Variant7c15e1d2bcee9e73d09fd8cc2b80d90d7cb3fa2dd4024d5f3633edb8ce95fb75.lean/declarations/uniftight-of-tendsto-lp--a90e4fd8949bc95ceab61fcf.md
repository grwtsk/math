# unifTight_of_tendsto_Lp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b2b8d4d9c70d3649aafa7ebb734ed77fb346644a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 241,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c15e1d2bcee9e73d09fd8cc2b80d90d7cb3fa2dd4024d5f3633edb8ce95fb75.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cb95630c-be79-6eab-cd71-a1f57ce38d7b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1aa4464b-c687-c601-0e34-f1fc04c4d64c",
  "kind": "theorem",
  "lexical_name": "unifTight_of_tendsto_Lp",
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
  "slug": "uniftight-of-tendsto-lp--a90e4fd8949bc95ceab61fcf",
  "source": {
    "blob": "b2b8d4d9c70d3649aafa7ebb734ed77fb346644a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 241,
    "path": "GRWTSK/Topology/GeneralTopology/UnifTight/Variant7c15e1d2bcee9e73d09fd8cc2b80d90d7cb3fa2dd4024d5f3633edb8ce95fb75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a90e4fd8949bc95ceab61fcfcdeace8ef3bfaec75e7499af8b45c22a1055a125",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UnifTight/Variant7c15e1d2bcee9e73d09fd8cc2b80d90d7cb3fa2dd4024d5f3633edb8ce95fb75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1aa4464b-c687-c601-0e34-f1fc04c4d64c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem unifTight_of_tendsto_Lp (hp' : p ≠ ∞) (hf : ∀ n, MemLp (f n) p μ)
    (hfg : Tendsto (fun n => eLpNorm (f n - g) p μ) atTop (𝓝 0)) :
    UnifTight f p μ := by
  have hg : MemLp g p μ := by
    obtain ⟨n, hn⟩ :  ∃ x, eLpNorm (f x - g) p μ < ∞ :=
        ((tendsto_order.1 hfg).2 _ zero_lt_top).exists
    rw [show g = f n - (f n - g) by abel]
    exact MemLp.sub (hf n) hn
  have : f = (fun _ => g) + fun n => f n - g := by ext1 n; simp
  rw [this]
  refine UnifTight.add ?_ ?_
  · exact unifTight_const hp' hg
  · exact unifTight_of_tendsto_Lp_zero hp' (fun n => (hf n).sub hg) hfg

set_option linter.style.whitespace false in -- manual alignment is not recognised
/- Next we deal with the forward direction. The `MemLp` and `TendstoInMeasure` hypotheses
are unwrapped and strengthened (by known lemmas) to also have the `StronglyMeasurable`
and a.e. convergence hypotheses. The bulk of the proof is done under these stronger hypotheses. -/

/-- Bulk of the proof under strengthened hypotheses. Invoked from `tendsto_Lp_of_tendsto_ae`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UnifTight/Variant7c15e1d2bcee9e73d09fd8cc2b80d90d7cb3fa2dd4024d5f3633edb8ce95fb75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UnifTight/Variant7c15e1d2bcee9e73d09fd8cc2b80d90d7cb3fa2dd4024d5f3633edb8ce95fb75.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2b8d4d9c70d3649aafa7ebb734ed77fb346644a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
