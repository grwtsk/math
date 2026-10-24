# exists_seq_comp_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2152dd3acd2e58ace686df75b92ef29e9370de06",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 138,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3c1d68629ce12667363796008d575e8289344ffface525bafae8e9db5e57b909.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:96fb6805-1576-4696-d54f-cc18c41fad55",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bb0f1416-03a9-8539-0870-582b8af18051",
  "kind": "theorem",
  "lexical_name": "exists_seq_comp_tendsto",
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
  "slug": "exists-seq-comp-tendsto--84d6d7776d1623092f66edde",
  "source": {
    "blob": "2152dd3acd2e58ace686df75b92ef29e9370de06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 138,
    "path": "GRWTSK/Topology/GeneralTopology/CountablyGenerated/Variant3c1d68629ce12667363796008d575e8289344ffface525bafae8e9db5e57b909.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84d6d7776d1623092f66edded0e37b8827787405127306c9246313ae51100bec",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CountablyGenerated/Variant3c1d68629ce12667363796008d575e8289344ffface525bafae8e9db5e57b909.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb0f1416-03a9-8539-0870-582b8af18051`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_seq_comp_tendsto {ι : Type*} {g : Filter ι} [IsCountablyGenerated g] {u : ι → α}
    {f : Filter α} [IsCountablyGenerated f]
    (hx : NeBot (f ⊓ map u g)) : ∃ θ : ℕ → ι, Tendsto θ atTop g ∧ Tendsto (u ∘ θ) atTop f := by
  rw [← Filter.push_pull', map_neBot_iff] at hx
  obtain ⟨θ, hθ⟩ := exists_seq_tendsto (comap u f ⊓ g)
  exact ⟨θ, (tendsto_inf.1 hθ).2, tendsto_comap_iff.1 (tendsto_inf.1 hθ).1⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CountablyGenerated/Variant3c1d68629ce12667363796008d575e8289344ffface525bafae8e9db5e57b909.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CountablyGenerated/Variant3c1d68629ce12667363796008d575e8289344ffface525bafae8e9db5e57b909.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2152dd3acd2e58ace686df75b92ef29e9370de06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
