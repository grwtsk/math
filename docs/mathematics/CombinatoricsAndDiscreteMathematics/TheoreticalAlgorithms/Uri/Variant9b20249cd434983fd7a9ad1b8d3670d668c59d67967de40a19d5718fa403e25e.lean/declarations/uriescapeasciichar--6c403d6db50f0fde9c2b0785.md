# uriEscapeAsciiChar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:37bb15904fdc833c1fc701bf82b54014dcc45998c506454a6cc7eeac421dda15",
  "kind": "def",
  "lexical_name": "uriEscapeAsciiChar",
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
  "slug": "uriescapeasciichar--6c403d6db50f0fde9c2b0785",
  "source": {
    "blob": "0104841acf63c6c5dcfd3417e9da9437edb6463e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 80,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Uri/Variant9b20249cd434983fd7a9ad1b8d3670d668c59d67967de40a19d5718fa403e25e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c403d6db50f0fde9c2b0785345aa38c31f9ffa60882c1d5b04858afb2a8b083",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Uri/Variant9b20249cd434983fd7a9ad1b8d3670d668c59d67967de40a19d5718fa403e25e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:37bb15904fdc833c1fc701bf82b54014dcc45998c506454a6cc7eeac421dda15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def uriEscapeAsciiChar (c : Char) : String :=
  if rfc3986ReservedChars.contains c || c < ' ' then
    "%" ++ uInt8ToHex c.toNat.toUInt8
  else if (Char.toNat c) < 127 then
    c.toString
  else
    c.toString.toUTF8.foldl (fun s b => s ++ "%" ++ (uInt8ToHex b)) ""
where
  uInt8ToHex (c : UInt8) : String :=
    let d2 := c / 16;
    let d1 := c % 16;
    (hexDigitRepr d2.toNat ++ hexDigitRepr d1.toNat).toUpper
end UriEscape

/-- Replaces special characters in the given Uri with %HH Uri escapings. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Uri/Variant9b20249cd434983fd7a9ad1b8d3670d668c59d67967de40a19d5718fa403e25e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Uri/Variant9b20249cd434983fd7a9ad1b8d3670d668c59d67967de40a19d5718fa403e25e.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0104841acf63c6c5dcfd3417e9da9437edb6463e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
