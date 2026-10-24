# adaptationNoteLinter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d8d6f862bc2de0a2e5318ad7efe15f4238a2f7d75d26720857a017a5d260b81b",
  "kind": "def",
  "lexical_name": "adaptationNoteLinter",
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
  "slug": "adaptationnotelinter--51201cdde31776b04aa81d60",
  "source": {
    "blob": "69f5c02b190bbcf1d3275900c6a37403c0b12275",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 281,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant81369e62c1ea7bca6583908ab42b0382dd8a7528a1725fc660f37ea5beb50f03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:51201cdde31776b04aa81d600e23f0a2c06828e27891a9b56b0f994ae99b534e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant81369e62c1ea7bca6583908ab42b0382dd8a7528a1725fc660f37ea5beb50f03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d8d6f862bc2de0a2e5318ad7efe15f4238a2f7d75d26720857a017a5d260b81b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def adaptationNoteLinter : TextbasedLinter := fun opts lines ↦ Id.run do
  unless getLinterValue linter.adaptationNote opts do return (#[], none)

  let mut errors := Array.mkEmpty 0
  for h : idx in [:lines.size] do
    let line := lines[idx]
    -- Flag lines that look like a hand-written adaptation note comment
    -- (e.g. "-- Adaptation note:" or "-- adaptation note:"), but not lines that
    -- merely reference the concept (e.g. "-- see adaptation note") or that
    -- use the correct #adaptation_note command.
    if line.contains "daptation note" &&
        !line.contains "#adaptation_note" &&
        !line.contains "see adaptation note" then
      errors := errors.push (StyleError.adaptationNote, idx + 1)
  return (errors, none)

/-- Lint a collection of input strings if one of them contains trailing whitespace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant81369e62c1ea7bca6583908ab42b0382dd8a7528a1725fc660f37ea5beb50f03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant81369e62c1ea7bca6583908ab42b0382dd8a7528a1725fc660f37ea5beb50f03.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69f5c02b190bbcf1d3275900c6a37403c0b12275` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
