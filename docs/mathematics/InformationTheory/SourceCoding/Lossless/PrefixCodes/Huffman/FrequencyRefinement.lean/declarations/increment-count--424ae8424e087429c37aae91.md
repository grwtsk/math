# increment_count

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:95f4ae31-87e0-bbcf-c50a-e4a44330257b",
  "kind": "theorem",
  "lexical_name": "increment_count",
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
  "slug": "increment-count--424ae8424e087429c37aae91",
  "source": {
    "blob": "a49b05f6ae675f709fac087ee6a5d6609cfe1ddd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 69,
    "path": "GRWTSK/InformationTheory/Huffman/FrequencyRefinement.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:424ae8424e087429c37aae913e3a2e9f1be54e4a52822bb67229220991b6da99",
  "verification": {
    "reference": "docs/verification/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/FrequencyRefinement.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95f4ae31-87e0-bbcf-c50a-e4a44330257b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem increment_count (weights : UInt8 → Nat) (byte a : UInt8)
    (source : List UInt8) :
    increment weights byte a + frequencies source a =
      weights a + frequencies (byte :: source) a := by
  by_cases h : a = byte
  · subst a
    simp [increment, frequencies, Nat.add_comm, Nat.add_left_comm]
  · simp [increment, frequencies, h, List.count_cons_of_ne (Ne.symm h)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/FrequencyRefinement.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/InformationTheory/Huffman/FrequencyRefinement.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a49b05f6ae675f709fac087ee6a5d6609cfe1ddd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
