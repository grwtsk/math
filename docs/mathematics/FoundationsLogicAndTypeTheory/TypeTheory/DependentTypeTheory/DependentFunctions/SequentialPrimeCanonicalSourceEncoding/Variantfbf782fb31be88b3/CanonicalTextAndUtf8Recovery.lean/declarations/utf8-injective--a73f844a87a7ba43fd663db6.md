# utf8_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb1f778f-f8bb-d2de-ce66-25cfe870efe1",
  "kind": "theorem",
  "lexical_name": "utf8_injective",
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
  "slug": "utf8-injective--a73f844a87a7ba43fd663db6",
  "source": {
    "blob": "1606dc3757ff8b5e3f43a8b9ff5cbb92cffbe3ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 48,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/SequentialPrimeCanonicalSourceEncoding/Variantfbf782fb31be88b3/CanonicalTextAndUtf8Recovery.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a73f844a87a7ba43fd663db6a9b16106b01fa437d0adf64085ebad01515bf230",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/SequentialPrimeCanonicalSourceEncoding/Variantfbf782fb31be88b3/CanonicalTextAndUtf8Recovery.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb1f778f-f8bb-d2de-ce66-25cfe870efe1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem utf8_injective : Function.Injective utf8 := by
  intro left right equality
  apply ext
  apply String.toList_injective
  have decoded := congrArg ByteArray.utf8Decode? equality
  have arrays : (left.body.toList ++ ['\n']).toArray =
      (right.body.toList ++ ['\n']).toArray := by
    simpa [utf8, text, String.toUTF8_eq_toByteArray,
      ← String.utf8Encode_toList, ← List.utf8Encode_append] using decoded
  have lists : left.body.toList ++ ['\n'] = right.body.toList ++ ['\n'] := by
    simpa using arrays
  exact List.append_cancel_right lists


end CanonicalSource

namespace SequentialPrimeSource

/-- Normalize CRLF and bare CR to LF, preserving every other character. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/SequentialPrimeCanonicalSourceEncoding/Variantfbf782fb31be88b3/CanonicalTextAndUtf8Recovery.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/SequentialPrimeCanonicalSourceEncoding/Variantfbf782fb31be88b3/CanonicalTextAndUtf8Recovery.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1606dc3757ff8b5e3f43a8b9ff5cbb92cffbe3ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
