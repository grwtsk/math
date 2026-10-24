# ByteArray.utf8DecodeChar_extract_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6e75c7b-5287-356d-098f-2be35694b2a0",
  "kind": "theorem",
  "lexical_name": "ByteArray.utf8DecodeChar_extract_congr",
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
  "slug": "bytearray-utf8decodechar-extract-congr--d3e878ee7889645ad6e06d15",
  "source": {
    "blob": "3da200bc971a44b65021684a4764c636c429b09c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1375,
    "line": 1370,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Decode/Variantecc89015b44305ae2fd6f129042e41cf63b251a53169264573e59a9f10009315.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3e878ee7889645ad6e06d15852976694fde32f06fc7df631eb03e175b6f66e4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Decode/Variantecc89015b44305ae2fd6f129042e41cf63b251a53169264573e59a9f10009315.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6e75c7b-5287-356d-098f-2be35694b2a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1370–1375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem ByteArray.utf8DecodeChar_extract_congr {bytes : ByteArray} (i j j' : Nat) {h h'} :
    utf8DecodeChar (bytes.extract i j) 0 h = utf8DecodeChar (bytes.extract i j') 0 h' := by
  obtain (hj|hj) := Nat.le_or_le j j'
  · exact utf8DecodeChar_extract_congr_of_le _ _ _ hj
  · exact (utf8DecodeChar_extract_congr_of_le _ _ _ hj).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Decode/Variantecc89015b44305ae2fd6f129042e41cf63b251a53169264573e59a9f10009315.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Decode/Variantecc89015b44305ae2fd6f129042e41cf63b251a53169264573e59a9f10009315.lean#L1370).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3da200bc971a44b65021684a4764c636c429b09c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
