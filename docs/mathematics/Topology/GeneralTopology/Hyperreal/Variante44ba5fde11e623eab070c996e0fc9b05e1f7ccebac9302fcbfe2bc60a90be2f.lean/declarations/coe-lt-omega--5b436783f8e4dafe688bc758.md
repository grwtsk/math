# coe_lt_omega

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "08d4754ea30ac52294a7d8d064288c50e563fb74",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 197,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e44ba5fde11e623eab070c996e0fc9b05e1f7ccebac9302fcbfe2bc60a90be2f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5a78d785-d410-d8e1-35b7-19d6d907bfeb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b18372f4-eabe-687f-9f35-74f765c32fd2",
  "kind": "theorem",
  "lexical_name": "coe_lt_omega",
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
  "slug": "coe-lt-omega--5b436783f8e4dafe688bc758",
  "source": {
    "blob": "08d4754ea30ac52294a7d8d064288c50e563fb74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 197,
    "path": "GRWTSK/Topology/GeneralTopology/Hyperreal/Variante44ba5fde11e623eab070c996e0fc9b05e1f7ccebac9302fcbfe2bc60a90be2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b436783f8e4dafe688bc758c999641b92e0bfb878104867e51f56ed0856a3b7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hyperreal/Variante44ba5fde11e623eab070c996e0fc9b05e1f7ccebac9302fcbfe2bc60a90be2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b18372f4-eabe-687f-9f35-74f765c32fd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_lt_omega (r : ℝ) : r < ω := by
  apply ofSeq_lt_ofSeq.2 <| Filter.Eventually.filter_mono Nat.hyperfilter_le_atTop _
  obtain ⟨n, hn⟩ := exists_nat_gt r
  rw [eventually_atTop]
  exact ⟨n, fun m hm ↦ hn.trans_le (mod_cast hm)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hyperreal/Variante44ba5fde11e623eab070c996e0fc9b05e1f7ccebac9302fcbfe2bc60a90be2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hyperreal/Variante44ba5fde11e623eab070c996e0fc9b05e1f7ccebac9302fcbfe2bc60a90be2f.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08d4754ea30ac52294a7d8d064288c50e563fb74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
