# Char.quoteCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b5624d871da47cf24870b0106bacf466a7f1c63873639fd366f9eed56b445183",
  "kind": "def",
  "lexical_name": "Char.quoteCore",
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
  "slug": "char-quotecore--97892e6daf39671db357f370",
  "source": {
    "blob": "0aa50a1e6033ee111da2f99cd0c26403ee914e6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 360,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Repr/Variant8523393e5c0a9bdce3b06d52a9600c6f2492560f4a68aea2e0548671479babcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:97892e6daf39671db357f3702bd2cd52e786e3c914a987cc635e18083029b80f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Repr/Variant8523393e5c0a9bdce3b06d52a9600c6f2492560f4a68aea2e0548671479babcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b5624d871da47cf24870b0106bacf466a7f1c63873639fd366f9eed56b445183`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Char.quoteCore (c : Char) (inString : Bool := false) : String :=
  if       c = '\n' then "\\n"
  else if  c = '\t' then "\\t"
  else if  c = '\\' then "\\\\"
  else if  c = '\"' then "\\\""
  else if !inString && c = '\'' then "\\\'"
  else if  c.toNat <= 31 ∨ c = '\x7f' then String.Internal.append "\\x" (smallCharToHex c)
  else String.singleton c
where
  smallCharToHex (c : Char) : String :=
    let n  := Char.toNat c;
    let d2 := n / 16;
    let d1 := n % 16;
    String.Internal.append (hexDigitRepr d2) (hexDigitRepr d1)

/--
Quotes the character to its representation as a character literal, surrounded by single quotes and
escaped as necessary.

Examples:
 * `'L'.quote = "'L'"`
 * `'"'.quote = "'\\\"'"`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Repr/Variant8523393e5c0a9bdce3b06d52a9600c6f2492560f4a68aea2e0548671479babcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Repr/Variant8523393e5c0a9bdce3b06d52a9600c6f2492560f4a68aea2e0548671479babcb.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0aa50a1e6033ee111da2f99cd0c26403ee914e6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
