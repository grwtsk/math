# DependencyReachable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:790ac4cebe905d69458b8e3e1289fd979122e882472484b452a4e16836136e2c",
  "kind": "inductive",
  "lexical_name": "DependencyReachable",
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
  "slug": "dependencyreachable--f90a538d32bd58c31d4630a9",
  "source": {
    "blob": "29f6d4e4163206d023e478f2c2c808a5309d25db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 194,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EvolutionSurgeryRestart/Variantd9e1c95765e73d39417e01b18e8726065fb529c803d7572ffa9d8744322bc449.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f90a538d32bd58c31d4630a9223e268b1c515dad5c1cf3b9c6f20d299f3b7306",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EvolutionSurgeryRestart/Variantd9e1c95765e73d39417e01b18e8726065fb529c803d7572ffa9d8744322bc449.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:790ac4cebe905d69458b8e3e1289fd979122e882472484b452a4e16836136e2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive DependencyReachable {count : Nat}
    (entry : Fin count → Declaration count) (root : Fin count) :
    Fin count → Prop where
  | root : DependencyReachable entry root root
  | dependency {source target : Fin count} :
      DependencyReachable entry root source →
      target ∈ (entry source).dependencies →
      DependencyReachable entry root target

/--
A finite evolution root with proof-carrying dependency closure and effective-
status equations.  Arbitrary cyclic inputs are not silently evaluated: a
caller must supply an effective-status fixed point satisfying `effectiveSpec`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EvolutionSurgeryRestart/Variantd9e1c95765e73d39417e01b18e8726065fb529c803d7572ffa9d8744322bc449.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EvolutionSurgeryRestart/Variantd9e1c95765e73d39417e01b18e8726065fb529c803d7572ffa9d8744322bc449.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29f6d4e4163206d023e478f2c2c808a5309d25db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
