# isCompactElement_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f198fa1363e7f01505610a612929bc47299969ac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 329,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4e951f23dca6c675bd5c0b095b3fb80adca4c9e91e4249ca25d3045cae0b854d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ed43b7f0-f065-3512-7471-11e9cb3b4a28",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8a9bc702-d2dd-5c6e-7064-2fb82f16f48e",
  "kind": "theorem",
  "lexical_name": "isCompactElement_iff",
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
  "slug": "iscompactelement-iff--afea6d79346ca1fe4e7da0ce",
  "source": {
    "blob": "f198fa1363e7f01505610a612929bc47299969ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 329,
    "path": "GRWTSK/Topology/GeneralTopology/Opens/Variant4e951f23dca6c675bd5c0b095b3fb80adca4c9e91e4249ca25d3045cae0b854d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afea6d79346ca1fe4e7da0cec149a6929910425899775923a6dc914e4664afe1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Opens/Variant4e951f23dca6c675bd5c0b095b3fb80adca4c9e91e4249ca25d3045cae0b854d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a9bc702-d2dd-5c6e-7064-2fb82f16f48e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCompactElement_iff (s : Opens α) :
    CompleteLattice.IsCompactElement s ↔ IsCompact (s : Set α) := by
  rw [isCompact_iff_finite_subcover, CompleteLattice.isCompactElement_iff]
  refine ⟨?_, fun H ι U hU => ?_⟩
  · introv H hU hU'
    obtain ⟨t, ht⟩ := H ι (fun i => ⟨U i, hU i⟩) (by simpa)
    refine ⟨t, Set.Subset.trans ht ?_⟩
    rw [coe_finset_sup, Finset.sup_eq_iSup]
    rfl
  · obtain ⟨t, ht⟩ :=
      H (fun i => U i) (fun i => (U i).isOpen) (by simpa using show (s : Set α) ⊆ ↑(iSup U) from hU)
    refine ⟨t, Set.Subset.trans ht ?_⟩
    simp only [Set.iUnion_subset_iff]
    show ∀ i ∈ t, U i ≤ t.sup U
    exact fun i => Finset.le_sup

/-- The preimage of an open set, as an open set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Opens/Variant4e951f23dca6c675bd5c0b095b3fb80adca4c9e91e4249ca25d3045cae0b854d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Opens/Variant4e951f23dca6c675bd5c0b095b3fb80adca4c9e91e4249ca25d3045cae0b854d.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f198fa1363e7f01505610a612929bc47299969ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
