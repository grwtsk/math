# Balanced

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8413af4f1400a24f87552cd707577e4b8de564ca29781c3634ed1f4394ffcdb9",
  "kind": "inductive",
  "lexical_name": "Balanced",
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
  "slug": "balanced--f9cacdb36080e33b871ee990",
  "source": {
    "blob": "2921df75acbbb01ebd61ad5c318ef687c0161d74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 592,
    "line": 578,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant96f91109d2b432e4c7c3ad4b009dcb22b7baff3942e2670b1efbb8cd6f0ec9a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f9cacdb36080e33b871ee9903b7b1c567781abdf948775c133e52999763fff02",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant96f91109d2b432e4c7c3ad4b009dcb22b7baff3942e2670b1efbb8cd6f0ec9a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8413af4f1400a24f87552cd707577e4b8de564ca29781c3634ed1f4394ffcdb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 578–592.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive Balanced : RBNode α → RBColor → Nat → Prop where
  /-- A nil node is balanced with black-height 0, and it is considered black. -/
  | protected nil : Balanced nil black 0
  /-- A red node is balanced with black-height `n`
  if its children are both black with with black-height `n`. -/
  | protected red : Balanced x black n → Balanced y black n → Balanced (node red x v y) red n
  /-- A black node is balanced with black-height `n + 1`
  if its children both have black-height `n`. -/
  | protected black : Balanced x c₁ n → Balanced y c₂ n → Balanced (node black x v y) black (n + 1)

/--
The well-formedness invariant for a red-black tree. The first constructor is the real invariant,
and the others allow us to "cheat" in this file and define `insert` and `erase`,
which have more complex proofs that are delayed to `Std.Data.RBMap.Lemmas`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant96f91109d2b432e4c7c3ad4b009dcb22b7baff3942e2670b1efbb8cd6f0ec9a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant96f91109d2b432e4c7c3ad4b009dcb22b7baff3942e2670b1efbb8cd6f0ec9a3.lean#L578).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2921df75acbbb01ebd61ad5c318ef687c0161d74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
