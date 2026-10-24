# symmetricIcc_eq_map_Icc_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7cdb3ce3bc16f5fe3616ce6eb4220d0c10ad7968",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 113,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/266afb38c724c82e7336c2feb2e40050c17328af9fcf3df815f7ff33cc2b5315.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:afa876a5-d1bc-4dff-7756-5221b870af04",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2bf19cd3-72c7-52ed-f8c2-7a42604185fb",
  "kind": "lemma",
  "lexical_name": "symmetricIcc_eq_map_Icc_nat",
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
  "slug": "symmetricicc-eq-map-icc-nat--f9a5594cdb0cb6e95291eddb",
  "source": {
    "blob": "7cdb3ce3bc16f5fe3616ce6eb4220d0c10ad7968",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 113,
    "path": "GRWTSK/Topology/GeneralTopology/ConditionalInt/Variant266afb38c724c82e7336c2feb2e40050c17328af9fcf3df815f7ff33cc2b5315.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9a5594cdb0cb6e95291eddb4b59431a03e83013c44e8d94e94c496bfae677c2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ConditionalInt/Variant266afb38c724c82e7336c2feb2e40050c17328af9fcf3df815f7ff33cc2b5315.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bf19cd3-72c7-52ed-f8c2-7a42604185fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma symmetricIcc_eq_map_Icc_nat :
    (symmetricIcc ℤ).filter = atTop.map (fun N : ℕ ↦ Icc (-(N : ℤ)) N) := by
  simp [← Nat.map_cast_int_atTop, Function.comp_def]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConditionalInt/Variant266afb38c724c82e7336c2feb2e40050c17328af9fcf3df815f7ff33cc2b5315.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConditionalInt/Variant266afb38c724c82e7336c2feb2e40050c17328af9fcf3df815f7ff33cc2b5315.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cdb3ce3bc16f5fe3616ce6eb4220d0c10ad7968` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
