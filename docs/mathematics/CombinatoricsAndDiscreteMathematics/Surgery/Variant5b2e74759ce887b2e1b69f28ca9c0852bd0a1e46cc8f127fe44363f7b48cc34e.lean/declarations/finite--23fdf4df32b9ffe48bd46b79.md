# Finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:594d069857548622036d9ba0dbb90fa3e7b88ff0888e4c37aceb854fe834f84a",
  "kind": "def",
  "lexical_name": "Finite",
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
  "slug": "finite--23fdf4df32b9ffe48bd46b79",
  "source": {
    "blob": "0e387de088be96022eb76e382f0b913dbef7a4dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 272,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:23fdf4df32b9ffe48bd46b79f76556f156f1201673ca353df914fa5bb4ab5541",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:594d069857548622036d9ba0dbb90fa3e7b88ff0888e4c37aceb854fe834f84a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Finite (w : BoundedStreamWindow) : Prop :=
  w.startOffset < w.stopOffset ∧
  w.inputSnapshot.value ≠ 0 ∧
  w.plan.value ≠ 0 ∧
  w.receipt.value ≠ 0 ∧
  w.resourceBounds.Positive

end BoundedStreamWindow

/-- An unbounded stream is handled by a sequence of bounded windows. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e387de088be96022eb76e382f0b913dbef7a4dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
