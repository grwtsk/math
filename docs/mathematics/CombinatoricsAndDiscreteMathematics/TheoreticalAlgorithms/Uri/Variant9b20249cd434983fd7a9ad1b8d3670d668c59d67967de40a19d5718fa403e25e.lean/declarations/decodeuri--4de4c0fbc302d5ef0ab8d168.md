# decodeUri

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aeda4468e654305e616bbd33cf439498a038855f5f3635c2297e5210970e7b7e",
  "kind": "def",
  "lexical_name": "decodeUri",
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
  "slug": "decodeuri--4de4c0fbc302d5ef0ab8d168",
  "source": {
    "blob": "0104841acf63c6c5dcfd3417e9da9437edb6463e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 44,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Uri/Variant9b20249cd434983fd7a9ad1b8d3670d668c59d67967de40a19d5718fa403e25e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4de4c0fbc302d5ef0ab8d168bd04672376495796fd9a8e5a4f0e60d2bc04084b",
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

Occurrence: `declaration:aeda4468e654305e616bbd33cf439498a038855f5f3635c2297e5210970e7b7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def decodeUri (uri : String) : String := Id.run do
  let mut decoded : ByteArray := ByteArray.empty
  let rawBytes := uri.toUTF8
  let len := rawBytes.size
  let mut i := 0
  let percent := '%'.toNat.toUInt8
  while h : i < len do
    let c := rawBytes[i]
    (decoded, i) := if h₁ : c == percent ∧ i + 1 < len then
      let h1 := rawBytes[i + 1]
      if let some hd1 := hexDigitToUInt8? h1 then
        if h₂ : i + 2 < len then
          let h2 := rawBytes[i + 2]
          if let some hd2 := hexDigitToUInt8? h2 then
            -- decode the hex digits into a byte.
            (decoded.push (hd1 * 16 + hd2), i + 3)
          else
            -- not a valid second hex digit so keep the original bytes
            (((decoded.push c).push h1).push h2, i + 3)
        else
          -- hit end of string, there is no h2.
          ((decoded.push c).push h1, i + 2)
      else
        -- not a valid hex digit so keep the original bytes
        ((decoded.push c).push h1, i + 2)
    else
      (decoded.push c, i + 1)
  return String.fromUTF8! decoded
where hexDigitToUInt8? (c : UInt8) : Option UInt8 :=
  if zero ≤ c ∧ c ≤ nine then some (c - zero)
  else if lettera ≤ c ∧ c ≤ letterf then some (c - lettera + 10)
  else if letterA ≤ c ∧ c ≤ letterF then some (c - letterA + 10)
  else none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Uri/Variant9b20249cd434983fd7a9ad1b8d3670d668c59d67967de40a19d5718fa403e25e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Uri/Variant9b20249cd434983fd7a9ad1b8d3670d668c59d67967de40a19d5718fa403e25e.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0104841acf63c6c5dcfd3417e9da9437edb6463e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
