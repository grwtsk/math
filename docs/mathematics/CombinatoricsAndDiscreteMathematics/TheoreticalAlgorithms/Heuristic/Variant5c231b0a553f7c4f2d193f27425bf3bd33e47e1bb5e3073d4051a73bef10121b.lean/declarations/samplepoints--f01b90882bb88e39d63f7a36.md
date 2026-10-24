# samplePoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d74dfc9bf72ac6d9f5a05cd0d971cdcfd5cd2a4d1c5004f5b129ea1435c9579d",
  "kind": "def",
  "lexical_name": "samplePoints",
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
  "slug": "samplepoints--f01b90882bb88e39d63f7a36",
  "source": {
    "blob": "e2e38d8c95b7e1d7540459ea61f3bee546aca038",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 119,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant5c231b0a553f7c4f2d193f27425bf3bd33e47e1bb5e3073d4051a73bef10121b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f01b90882bb88e39d63f7a36c41cde61c25232fe1e91c20cf537f022483abab5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant5c231b0a553f7c4f2d193f27425bf3bd33e47e1bb5e3073d4051a73bef10121b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d74dfc9bf72ac6d9f5a05cd0d971cdcfd5cd2a4d1c5004f5b129ea1435c9579d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def samplePoints (fb : FloatBox) (rng : PRNG) (n : Nat) : Array (Nat → Float) × PRNG :=
  let rec loop (i : Nat) (acc : Array (Nat → Float)) (r : PRNG) : Array (Nat → Float) × PRNG :=
    match i with
    | 0 => (acc, r)
    | k + 1 =>
      let (pt, r') := samplePoint fb r
      loop k (acc.push pt) r'
  loop n #[] rng

/-- Get the center point of a float box -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant5c231b0a553f7c4f2d193f27425bf3bd33e47e1bb5e3073d4051a73bef10121b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant5c231b0a553f7c4f2d193f27425bf3bd33e47e1bb5e3073d4051a73bef10121b.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2e38d8c95b7e1d7540459ea61f3bee546aca038` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
