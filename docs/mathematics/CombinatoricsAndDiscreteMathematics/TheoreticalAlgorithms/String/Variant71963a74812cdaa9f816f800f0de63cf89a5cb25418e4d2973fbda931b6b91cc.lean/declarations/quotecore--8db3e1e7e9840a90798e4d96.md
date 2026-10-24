# quoteCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1d3e7569ba6f125abea43f59aa3c341b11deb8850e628ba446fb5fc7f2419ae7",
  "kind": "def",
  "lexical_name": "quoteCore",
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
  "slug": "quotecore--8db3e1e7e9840a90798e4d96",
  "source": {
    "blob": "d9a8aadd0865af9a1af3584c79cd66bc3a79a077",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 35,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant71963a74812cdaa9f816f800f0de63cf89a5cb25418e4d2973fbda931b6b91cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8db3e1e7e9840a90798e4d96e79853da7b017e4c655b956a6e1e062785c6d678",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant71963a74812cdaa9f816f800f0de63cf89a5cb25418e4d2973fbda931b6b91cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1d3e7569ba6f125abea43f59aa3c341b11deb8850e628ba446fb5fc7f2419ae7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def quoteCore (c : Char) (h₀ : quotedStringChar c) : String :=
  if h : qdtext c then
    .singleton c
  else if h₁ : c = '\"' || c = '\\' then
    .append "\\" (.singleton c)
  else
    absurd h₀ (not_quotedStringChar_of_not_qdtext_not_dquote_backslash _ (quotedStringChar_lt_0x80 h₀) ⟨h, h₁⟩)

/--
Quotes `s` as an HTTP `quoted-string`: `DQUOTE *( qdtext / quoted-pair ) DQUOTE`.

If every character is a `tchar` and the string is non-empty, the string is returned as-is (it is
already a valid token). Otherwise the string is wrapped in double quotes, escaping `"` and `\`
as `quoted-pair`.

Requires a proof that every character passes `quotedStringChar`.
-/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant71963a74812cdaa9f816f800f0de63cf89a5cb25418e4d2973fbda931b6b91cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant71963a74812cdaa9f816f800f0de63cf89a5cb25418e4d2973fbda931b6b91cc.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9a8aadd0865af9a1af3584c79cd66bc3a79a077` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
