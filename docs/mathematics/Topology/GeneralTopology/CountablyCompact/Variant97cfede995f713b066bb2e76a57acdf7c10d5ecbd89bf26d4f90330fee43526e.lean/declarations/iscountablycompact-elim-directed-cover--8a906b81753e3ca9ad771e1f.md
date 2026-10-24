# IsCountablyCompact.elim_directed_cover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70dd4afb-6efe-c894-195c-1c77faef613f",
  "kind": "theorem",
  "lexical_name": "IsCountablyCompact.elim_directed_cover",
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
  "slug": "iscountablycompact-elim-directed-cover--8a906b81753e3ca9ad771e1f",
  "source": {
    "blob": "48f56d45bd4d4af16630beb926970726b1002f46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 113,
    "path": "GRWTSK/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a906b81753e3ca9ad771e1fdb979d30c42b769be194e6edac4e40973ec7774f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70dd4afb-6efe-c894-195c-1c77faef613f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCountablyCompact.elim_directed_cover [Countable ι] [Nonempty ι]
    (hA : IsCountablyCompact A) (U : ι → Set E) (hUo : ∀ i, IsOpen (U i))
    (hAU : A ⊆ ⋃ i, U i) (hdU : Directed (· ⊆ ·) U) : ∃ i, A ⊆ U i := by
  by_contra! h
  have hdir : Directed (· ≥ ·) fun i => 𝓟 (A \ U i) :=
    fun i j => (hdU i j).imp fun _ ⟨hi, hj⟩ => ⟨principal_mono.mpr <| sdiff_subset_sdiff_right hi,
      principal_mono.mpr <| sdiff_subset_sdiff_right hj⟩
  have : NeBot (⨅ i, 𝓟 (A \ U i)) :=
    iInf_neBot_of_directed' hdir fun i => (sdiff_nonempty.mpr (h i)).principal_neBot
  have hle : (⨅ i, 𝓟 (A \ U i)) ≤ 𝓟 A :=
    iInf_le_of_le ‹Nonempty ι›.some <| principal_mono.mpr sdiff_subset
  rcases hA hle with ⟨a, ha, hac⟩
  rcases mem_iUnion.mp (hAU ha) with ⟨k, hk⟩
  exact closure_minimal (fun _ hx => hx.2) (hUo k).isClosed_compl
    (hac.mono (iInf_le _ k)).mem_closure hk

/-- A countably compact set has a finite subcover for any countable open cover. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48f56d45bd4d4af16630beb926970726b1002f46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
