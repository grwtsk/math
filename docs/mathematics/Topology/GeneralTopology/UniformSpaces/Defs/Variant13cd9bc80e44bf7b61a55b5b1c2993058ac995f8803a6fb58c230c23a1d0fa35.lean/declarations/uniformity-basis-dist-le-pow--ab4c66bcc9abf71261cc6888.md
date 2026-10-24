# uniformity_basis_dist_le_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "912bc464320d8ea70f002255c59e9f79d41f6ac2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 744,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/13cd9bc80e44bf7b61a55b5b1c2993058ac995f8803a6fb58c230c23a1d0fa35.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bdcd130c-7b87-7814-0e85-e243110f204a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7bf3ae7c-666c-ad24-b026-1d5ff5a80df6",
  "kind": "theorem",
  "lexical_name": "uniformity_basis_dist_le_pow",
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
  "slug": "uniformity-basis-dist-le-pow--ab4c66bcc9abf71261cc6888",
  "source": {
    "blob": "912bc464320d8ea70f002255c59e9f79d41f6ac2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 749,
    "line": 744,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Defs/Variant13cd9bc80e44bf7b61a55b5b1c2993058ac995f8803a6fb58c230c23a1d0fa35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab4c66bcc9abf71261cc68884fc9346cc0ae2ac1151f12489faf268d05867292",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Defs/Variant13cd9bc80e44bf7b61a55b5b1c2993058ac995f8803a6fb58c230c23a1d0fa35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7bf3ae7c-666c-ad24-b026-1d5ff5a80df6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 744–749.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformity_basis_dist_le_pow {r : ℝ} (h0 : 0 < r) (h1 : r < 1) :
    (𝓤 α).HasBasis (fun _ : ℕ => True) fun n : ℕ => { p : α × α | dist p.1 p.2 ≤ r ^ n } :=
  Metric.mk_uniformity_basis_le (fun _ _ => pow_pos h0 _) fun _ε ε0 =>
    let ⟨n, hn⟩ := exists_pow_lt_of_lt_one ε0 h1
    ⟨n, trivial, hn.le⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Defs/Variant13cd9bc80e44bf7b61a55b5b1c2993058ac995f8803a6fb58c230c23a1d0fa35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Defs/Variant13cd9bc80e44bf7b61a55b5b1c2993058ac995f8803a6fb58c230c23a1d0fa35.lean#L744).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `912bc464320d8ea70f002255c59e9f79d41f6ac2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
