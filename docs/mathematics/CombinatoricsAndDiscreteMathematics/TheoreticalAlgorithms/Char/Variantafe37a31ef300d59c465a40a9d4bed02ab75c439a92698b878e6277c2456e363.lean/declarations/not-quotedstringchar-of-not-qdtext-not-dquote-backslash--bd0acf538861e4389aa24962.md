# not_quotedStringChar_of_not_qdtext_not_dquote_backslash

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8356c2f9-bd98-13ce-4fed-6fac33be9802",
  "kind": "theorem",
  "lexical_name": "not_quotedStringChar_of_not_qdtext_not_dquote_backslash",
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
  "slug": "not-quotedstringchar-of-not-qdtext-not-dquote-backslash--bd0acf538861e4389aa24962",
  "source": {
    "blob": "25b5da05060ca5c771c44ecb20ee3e2da44571c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 121,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantafe37a31ef300d59c465a40a9d4bed02ab75c439a92698b878e6277c2456e363.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd0acf538861e4389aa24962c074984fbe57d8bf5e7b8f5c2d41b6ad51b7cdfa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantafe37a31ef300d59c465a40a9d4bed02ab75c439a92698b878e6277c2456e363.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8356c2f9-bd98-13ce-4fed-6fac33be9802`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_quotedStringChar_of_not_qdtext_not_dquote_backslash :
    ∀ c : Char, c < '\x80' → ¬(qdtext (c)) ∧ ¬((c = '\"') || (c = '\\')) →
    ¬(quotedStringChar c) := by
  intro c hlt hq
  simpa [Char.ofNat_toNat] using
    (not_quotedStringChar_ofNat_aux
      c.toNat hlt (by simpa [Char.ofNat_toNat] using hq))

/--
field-vchar = VCHAR
; ASCII-only variant (no obs-text).
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantafe37a31ef300d59c465a40a9d4bed02ab75c439a92698b878e6277c2456e363.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantafe37a31ef300d59c465a40a9d4bed02ab75c439a92698b878e6277c2456e363.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25b5da05060ca5c771c44ecb20ee3e2da44571c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
