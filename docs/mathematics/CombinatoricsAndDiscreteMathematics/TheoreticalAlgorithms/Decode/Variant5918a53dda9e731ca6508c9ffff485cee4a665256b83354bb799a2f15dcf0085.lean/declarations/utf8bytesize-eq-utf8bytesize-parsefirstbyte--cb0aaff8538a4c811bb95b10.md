# utf8ByteSize_eq_utf8ByteSize_parseFirstByte

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31be6729ed562a3f596d33deabe3d72ea20cc2ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1468,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/5918a53dda9e731ca6508c9ffff485cee4a665256b83354bb799a2f15dcf0085.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4561016e-df8a-d4cd-9786-9ac7a37ce08c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:44e42967-148e-51b3-400c-83870b6ce75b",
  "kind": "theorem",
  "lexical_name": "utf8ByteSize_eq_utf8ByteSize_parseFirstByte",
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
  "slug": "utf8bytesize-eq-utf8bytesize-parsefirstbyte--cb0aaff8538a4c811bb95b10",
  "source": {
    "blob": "31be6729ed562a3f596d33deabe3d72ea20cc2ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1484,
    "line": 1468,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Decode/Variant5918a53dda9e731ca6508c9ffff485cee4a665256b83354bb799a2f15dcf0085.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb0aaff8538a4c811bb95b104e02afa1af5bc3a97bf036f94c17b8bec9b7a169",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Decode/Variant5918a53dda9e731ca6508c9ffff485cee4a665256b83354bb799a2f15dcf0085.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44e42967-148e-51b3-400c-83870b6ce75b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1468–1484.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem utf8ByteSize_eq_utf8ByteSize_parseFirstByte {c : UInt8} {h : c.IsUTF8FirstByte} :
    c.utf8ByteSize h = (parseFirstByte c).utf8ByteSize := by
  simp only [utf8ByteSize, FirstByte.utf8ByteSize, parseFirstByte, beq_iff_eq]
  split
  · simp
  · split
    · simp
    · split
      · simp
      · obtain (h|h|h|h) := h
        · contradiction
        · contradiction
        · contradiction
        · simp [h]

end UInt8

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Decode/Variant5918a53dda9e731ca6508c9ffff485cee4a665256b83354bb799a2f15dcf0085.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Decode/Variant5918a53dda9e731ca6508c9ffff485cee4a665256b83354bb799a2f15dcf0085.lean#L1468).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31be6729ed562a3f596d33deabe3d72ea20cc2ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
