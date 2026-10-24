# validUtf8

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d12aacb7436f4ca8cc65867c80ea68728d371fe200e29d8ce0c1c2001659d6b",
  "kind": "def",
  "lexical_name": "validUtf8",
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
  "slug": "validutf8--8e703e6b46e310daf052ec89",
  "source": {
    "blob": "6905ff6ffd5a0e0328877213c25669b14cb39700",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 273,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Manifest/Variant1bdc25c01cee27dfc8ad418e7997060e16d8bb6b110ea4a7df04c97d6549df26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8e703e6b46e310daf052ec8922b685cb02c7d51017bfe7fdbaa4d99a0edf7227",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Manifest/Variant1bdc25c01cee27dfc8ad418e7997060e16d8bb6b110ea4a7df04c97d6549df26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8d12aacb7436f4ca8cc65867c80ea68728d371fe200e29d8ce0c1c2001659d6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def validUtf8 : List UInt8 → Bool
  | [] => true
  | byte :: rest =>
      if byte ≤ 0x7f then validUtf8 rest else
      match rest with
      | second :: tail =>
          if 0xc2 ≤ byte && byte ≤ 0xdf && continuation second then
            validUtf8 tail
          else
            match tail with
            | third :: tail3 =>
                let ordinary3 :=
                  ((0xe1 ≤ byte && byte ≤ 0xec) ||
                    (0xee ≤ byte && byte ≤ 0xef)) &&
                  continuation second && continuation third
                let edge3 :=
                  (byte = 0xe0 && 0xa0 ≤ second && second ≤ 0xbf &&
                    continuation third) ||
                  (byte = 0xed && 0x80 ≤ second && second ≤ 0x9f &&
                    continuation third)
                if ordinary3 || edge3 then validUtf8 tail3 else
                  match tail3 with
                  | fourth :: tail4 =>
                      let ordinary4 :=
                        0xf1 ≤ byte && byte ≤ 0xf3 &&
                        continuation second && continuation third &&
                        continuation fourth
                      let edge4 :=
                        (byte = 0xf0 && 0x90 ≤ second && second ≤ 0xbf &&
                          continuation third && continuation fourth) ||
                        (byte = 0xf4 && 0x80 ≤ second && second ≤ 0x8f &&
                          continuation third && continuation fourth)
                      if ordinary4 || edge4 then validUtf8 tail4 else false
                  | _ => false
            | _ => false
      | _ => false
termination_by bytes => bytes.length

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Manifest/Variant1bdc25c01cee27dfc8ad418e7997060e16d8bb6b110ea4a7df04c97d6549df26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Manifest/Variant1bdc25c01cee27dfc8ad418e7997060e16d8bb6b110ea4a7df04c97d6549df26.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6905ff6ffd5a0e0328877213c25669b14cb39700` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
