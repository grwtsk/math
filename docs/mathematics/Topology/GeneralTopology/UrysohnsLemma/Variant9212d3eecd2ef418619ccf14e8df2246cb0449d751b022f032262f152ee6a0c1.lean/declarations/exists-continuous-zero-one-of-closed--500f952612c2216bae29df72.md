# exists_continuous_zero_one_of_closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bf71c2260dfe1b6d4ae51d3d1f7f9339e85a25f8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 305,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/92/9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:623d130e-5ba2-c7e9-e6a9-b79de3115560",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b66956c7-3687-b605-b9c0-41829d911ef6",
  "kind": "theorem",
  "lexical_name": "exists_continuous_zero_one_of_closed",
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
  "slug": "exists-continuous-zero-one-of-closed--500f952612c2216bae29df72",
  "source": {
    "blob": "bf71c2260dfe1b6d4ae51d3d1f7f9339e85a25f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 305,
    "path": "GRWTSK/Topology/GeneralTopology/UrysohnsLemma/Variant9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:500f952612c2216bae29df72b095ee138473a5772eddb85b190adc4d0336e69f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UrysohnsLemma/Variant9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b66956c7-3687-b605-b9c0-41829d911ef6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_continuous_zero_one_of_closed {s t : Set X} (hs : IsClosed s) (ht : IsClosed t)
    (hd : Disjoint s t) : ∃ f : C(X, ℝ), EqOn f 0 s ∧ EqOn f 1 t ∧ ∀ x, f x ∈ Icc (0 : ℝ) 1 := by
  -- The actual proof is in the code above. Here we just repack it into the expected format.
  set c : Urysohns.CU X := ⟨s, tᶜ, hs, ht.isOpen_compl, disjoint_left.1 hd⟩
  exact ⟨⟨c.lim, c.continuous_lim⟩, c.lim_of_mem_C, fun x hx => c.lim_of_nmem_U _ fun h => h hx,
    c.lim_mem_Icc⟩
#align exists_continuous_zero_one_of_closed exists_continuous_zero_one_of_closed
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UrysohnsLemma/Variant9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UrysohnsLemma/Variant9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf71c2260dfe1b6d4ae51d3d1f7f9339e85a25f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
