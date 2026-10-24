# neverMatchesAnyString

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1fdd0799f71f377ce3c75212f67a8da181b3eac67303b9726cb247c40c4d2c4e",
  "kind": "def",
  "lexical_name": "neverMatchesAnyString",
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
  "slug": "nevermatchesanystring--2e7d80e9e8b17571550b5203",
  "source": {
    "blob": "f00a5ca7ab670fad523461e0d5e94fa748e331b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 95,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeriveRegExpGenerator/Variantd10f06392e689e2c273e6ba16969e204e0305e2b7eb89a2b9709cdfd918b1eae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e7d80e9e8b17571550b520316ca804721d1ac8d3ed472d39f40e30bc28ccf1b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeriveRegExpGenerator/Variantd10f06392e689e2c273e6ba16969e204e0305e2b7eb89a2b9709cdfd918b1eae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1fdd0799f71f377ce3c75212f67a8da181b3eac67303b9726cb247c40c4d2c4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def neverMatchesAnyString (r : RegExp) : Bool :=
  match r with
  | .EmptySet => true
  | .EmptyStr | .Char _ | .Star _ => false       -- Note that `Star` can always match the empty string
  | .App r1 r2 => neverMatchesAnyString r1 || neverMatchesAnyString r2
  | .Union r1 r2 => neverMatchesAnyString r1 && neverMatchesAnyString r2

/-- A shrinker for regular expressions -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeriveRegExpGenerator/Variantd10f06392e689e2c273e6ba16969e204e0305e2b7eb89a2b9709cdfd918b1eae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeriveRegExpGenerator/Variantd10f06392e689e2c273e6ba16969e204e0305e2b7eb89a2b9709cdfd918b1eae.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f00a5ca7ab670fad523461e0d5e94fa748e331b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
