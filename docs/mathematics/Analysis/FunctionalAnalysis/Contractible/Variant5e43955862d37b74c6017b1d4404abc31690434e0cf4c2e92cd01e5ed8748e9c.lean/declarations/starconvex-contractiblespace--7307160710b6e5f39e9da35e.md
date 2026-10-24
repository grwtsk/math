# StarConvex.contractibleSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "182826e1e06e5eb5699a646379ac4e5b84868ad9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 21,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5e43955862d37b74c6017b1d4404abc31690434e0cf4c2e92cd01e5ed8748e9c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8c68aec8-ae6e-dcd7-e840-8bed06e046f6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9dbf9e00-39a3-9755-dee5-d78f03bca7d8",
  "kind": "theorem",
  "lexical_name": "StarConvex.contractibleSpace",
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
  "slug": "starconvex-contractiblespace--7307160710b6e5f39e9da35e",
  "source": {
    "blob": "182826e1e06e5eb5699a646379ac4e5b84868ad9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 21,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Contractible/Variant5e43955862d37b74c6017b1d4404abc31690434e0cf4c2e92cd01e5ed8748e9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7307160710b6e5f39e9da35e1a6aca6cf39b65c4bd589ea3caa5475baeb7021f",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Contractible/Variant5e43955862d37b74c6017b1d4404abc31690434e0cf4c2e92cd01e5ed8748e9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9dbf9e00-39a3-9755-dee5-d78f03bca7d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem StarConvex.contractibleSpace (h : StarConvex ℝ x s) (hne : s.Nonempty) :
    ContractibleSpace s := by
  refine
    (contractible_iff_id_nullhomotopic s).2
      ⟨⟨x, h.mem hne⟩,
        ⟨⟨⟨fun p => ⟨p.1.1 • x + (1 - p.1.1) • (p.2 : E), ?_⟩, ?_⟩, fun x => ?_, fun x => ?_⟩⟩⟩
  · exact h p.2.2 p.1.2.1 (sub_nonneg.2 p.1.2.2) (add_sub_cancel _ _)
  · exact
      ((continuous_subtype_val.fst'.smul continuous_const).add
            ((continuous_const.sub continuous_subtype_val.fst').smul
              continuous_subtype_val.snd')).subtype_mk
        _
  · ext1
    simp
  · ext1
    simp

/-- A non-empty convex set is a contractible space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Contractible/Variant5e43955862d37b74c6017b1d4404abc31690434e0cf4c2e92cd01e5ed8748e9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Contractible/Variant5e43955862d37b74c6017b1d4404abc31690434e0cf4c2e92cd01e5ed8748e9c.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `182826e1e06e5eb5699a646379ac4e5b84868ad9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
