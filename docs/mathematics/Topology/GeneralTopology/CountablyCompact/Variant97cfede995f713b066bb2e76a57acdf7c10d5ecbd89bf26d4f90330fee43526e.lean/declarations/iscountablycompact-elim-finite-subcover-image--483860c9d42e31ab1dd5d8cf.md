# IsCountablyCompact.elim_finite_subcover_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7ca6396-29e7-21cc-ce23-35fb35906a2e",
  "kind": "theorem",
  "lexical_name": "IsCountablyCompact.elim_finite_subcover_image",
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
  "slug": "iscountablycompact-elim-finite-subcover-image--483860c9d42e31ab1dd5d8cf",
  "source": {
    "blob": "48f56d45bd4d4af16630beb926970726b1002f46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 159,
    "path": "GRWTSK/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:483860c9d42e31ab1dd5d8cf47ed01a8ed115a30f4839d90ce554be6c8859e97",
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

Occurrence: `result:f7ca6396-29e7-21cc-ce23-35fb35906a2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCountablyCompact.elim_finite_subcover_image (hA : IsCountablyCompact A)
    {b : Set ι} (hb : b.Countable) {U : ι → Set E} (hUo : ∀ i ∈ b, IsOpen (U i))
    (hAU : A ⊆ ⋃ i ∈ b, U i) : ∃ t ⊆ b, t.Finite ∧ A ⊆ ⋃ i ∈ t, U i := by
  have := hb.to_subtype
  obtain ⟨t, ht⟩ := hA.elim_finite_subcover (fun (i : b) ↦ hUo i i.prop) (by simpa using hAU)
  simp only [Subtype.forall', biUnion_eq_iUnion] at hUo hAU
  replace hb := hb.to_subtype
  obtain ⟨d, hd⟩ := hA.elim_finite_subcover hUo hAU
  refine ⟨Subtype.val '' (d : Set b), ?_, d.finite_toSet.image _, ?_⟩
  · simp
  · rwa [biUnion_image]

/-- Variant of `isCountablyCompact_iff_countable_open_cover` with `Set ℕ` instead of `Finset ℕ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48f56d45bd4d4af16630beb926970726b1002f46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
