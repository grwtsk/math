# IsClosed.vadd_right_of_isCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "21ccb400c54654e31a4f0dec9fb542e75ac00747",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 326,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:30d92a89-deed-c073-4ecd-86d3468bd852",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:170e5f6e-9157-6fe9-5b6a-e9462ee0b917",
  "kind": "theorem",
  "lexical_name": "IsClosed.vadd_right_of_isCompact",
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
  "slug": "isclosed-vadd-right-of-iscompact--35536017ccb4fdf6b6172a36",
  "source": {
    "blob": "21ccb400c54654e31a4f0dec9fb542e75ac00747",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 326,
    "path": "GRWTSK/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35536017ccb4fdf6b6172a36d89faf78985f648ef8ab48d1318daa0a5c11d3c3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:170e5f6e-9157-6fe9-5b6a-e9462ee0b917`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsClosed.vadd_right_of_isCompact {s : Set V} {t : Set P} (hs : IsClosed s)
    (ht : IsCompact t) : IsClosed (s +ᵥ t) := by
  -- This result is still true for any `AddTorsor` where `-ᵥ` is continuous,
  -- but we don't yet have a nice way to state it.
  refine IsSeqClosed.isClosed (fun u p husv hup ↦ ?_)
  choose! a v hav using husv
  rcases ht.isSeqCompact fun n ↦ (hav n).2.1 with ⟨q, hqt, φ, φ_mono, hφq⟩
  refine ⟨p -ᵥ q, q, hs.mem_of_tendsto ((hup.comp φ_mono.tendsto_atTop).vsub hφq)
    (eventually_of_forall fun n ↦ ?_), hqt, vsub_vadd _ _⟩
  convert (hav (φ n)).1 using 1
  exact (eq_vadd_iff_vsub_eq _ _ _).mp (hav (φ n)).2.2.symm

end Pointwise
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21ccb400c54654e31a4f0dec9fb542e75ac00747` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
