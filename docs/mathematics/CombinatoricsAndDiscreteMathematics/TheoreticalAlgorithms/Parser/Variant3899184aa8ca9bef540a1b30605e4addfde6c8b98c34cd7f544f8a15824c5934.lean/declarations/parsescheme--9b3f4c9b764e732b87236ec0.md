# parseScheme

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:04751261d8e64a67e3ae2cc3a3c967d52d2bed8277b1a05335cdd50448cb513d",
  "kind": "def",
  "lexical_name": "parseScheme",
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
  "slug": "parsescheme--9b3f4c9b764e732b87236ec0",
  "source": {
    "blob": "f94031dde7236e6bc30c9f8a1ad9fda83c34e1b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 51,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant3899184aa8ca9bef540a1b30605e4addfde6c8b98c34cd7f544f8a15824c5934.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b3f4c9b764e732b87236ec0db181c312f765b79220826f06614cb1e4552fe23",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant3899184aa8ca9bef540a1b30605e4addfde6c8b98c34cd7f544f8a15824c5934.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:04751261d8e64a67e3ae2cc3a3c967d52d2bed8277b1a05335cdd50448cb513d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def parseScheme (config : URI.Config) : Parser URI.Scheme := do
  if config.maxSchemeLength = 0 then
    fail "scheme length limit is 0 (no scheme allowed)"

  let first : UInt8 ← satisfy isAlphaByte
  let rest ← takeWhileAtMost
    (fun c =>
      isAlphaNum c ∨
      c = '+'.toUInt8 ∨ c = '-'.toUInt8 ∨ c = '.'.toUInt8)
    (config.maxSchemeLength - 1)
  let schemeBytes := ByteArray.empty.push first ++ rest.toByteArray
  let str := String.fromUTF8! schemeBytes |>.toLower

  if h : URI.IsValidScheme str then
    return ⟨str, h⟩
  else
    fail "invalid scheme"

-- port = 1*DIGIT
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant3899184aa8ca9bef540a1b30605e4addfde6c8b98c34cd7f544f8a15824c5934.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant3899184aa8ca9bef540a1b30605e4addfde6c8b98c34cd7f544f8a15824c5934.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f94031dde7236e6bc30c9f8a1ad9fda83c34e1b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
