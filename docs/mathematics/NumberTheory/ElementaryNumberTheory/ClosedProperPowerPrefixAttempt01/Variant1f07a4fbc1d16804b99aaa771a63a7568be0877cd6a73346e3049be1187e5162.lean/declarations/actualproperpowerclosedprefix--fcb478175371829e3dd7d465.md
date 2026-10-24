# actualProperPowerClosedPrefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:99f91e4ccbfe6295d0c9ca3043c3a921cd6e2dd11359fb581b4958b0630338e5",
  "kind": "def",
  "lexical_name": "actualProperPowerClosedPrefix",
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
  "slug": "actualproperpowerclosedprefix--fcb478175371829e3dd7d465",
  "source": {
    "blob": "09d76ba2cdf071752332df18b9ce3cb4d716e411",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 95,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt01/Variant1f07a4fbc1d16804b99aaa771a63a7568be0877cd6a73346e3049be1187e5162.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fcb478175371829e3dd7d46505a5927b29deb422f3036e5d7170b5f3944011c6",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt01/Variant1f07a4fbc1d16804b99aaa771a63a7568be0877cd6a73346e3049be1187e5162.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:99f91e4ccbfe6295d0c9ca3043c3a921cd6e2dd11359fb581b4958b0630338e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualProperPowerClosedPrefix (t : ℝ) : ℝ :=
  ∑ pk ∈ properExponentInventory ⌊Real.exp t⌋₊,
    Real.log (pk.1 : ℝ)/(pk.1 : ℝ)^pk.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt01/Variant1f07a4fbc1d16804b99aaa771a63a7568be0877cd6a73346e3049be1187e5162.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt01/Variant1f07a4fbc1d16804b99aaa771a63a7568be0877cd6a73346e3049be1187e5162.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09d76ba2cdf071752332df18b9ce3cb4d716e411` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
