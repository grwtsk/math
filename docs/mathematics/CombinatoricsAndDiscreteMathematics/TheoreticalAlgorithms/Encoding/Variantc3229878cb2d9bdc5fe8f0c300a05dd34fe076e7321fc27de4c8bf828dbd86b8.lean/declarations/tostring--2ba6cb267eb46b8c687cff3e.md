# toString

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c4dc6b339ac1c85ca5bbbee42fd5f59a4d264d951f8b6a6abff6b26cd033d295",
  "kind": "def",
  "lexical_name": "toString",
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
  "slug": "tostring--2ba6cb267eb46b8c687cff3e",
  "source": {
    "blob": "f447d5a01f929152d8ec9d0ae965e12c1aefa78f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 510,
    "line": 502,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Encoding/Variantc3229878cb2d9bdc5fe8f0c300a05dd34fe076e7321fc27de4c8bf828dbd86b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2ba6cb267eb46b8c687cff3ea4caf650cbab8eab800fe1f8a9f83f908626e1f2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Encoding/Variantc3229878cb2d9bdc5fe8f0c300a05dd34fe076e7321fc27de4c8bf828dbd86b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c4dc6b339ac1c85ca5bbbee42fd5f59a4d264d951f8b6a6abff6b26cd033d295`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 502–510.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toString (es : EncodedQueryString r) : String :=
  ⟨es.toByteArray, isValidUTF8_of_isAsciiByte es.toByteArray (all_of_all_of_imp es.valid (fun c h => isEncodedQueryChar_isAscii c h))⟩

/--
Decodes an `EncodedQueryString` back to a regular `String`. Converts percent-encoded sequences and '+'
signs back to their original characters. Returns `none` if the decoded bytes are not valid UTF-8.

This is almost the same code from `System.Uri.UriEscape.decodeUri`, but with `Option` instead.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Encoding/Variantc3229878cb2d9bdc5fe8f0c300a05dd34fe076e7321fc27de4c8bf828dbd86b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Encoding/Variantc3229878cb2d9bdc5fe8f0c300a05dd34fe076e7321fc27de4c8bf828dbd86b8.lean#L502).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f447d5a01f929152d8ec9d0ae965e12c1aefa78f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
