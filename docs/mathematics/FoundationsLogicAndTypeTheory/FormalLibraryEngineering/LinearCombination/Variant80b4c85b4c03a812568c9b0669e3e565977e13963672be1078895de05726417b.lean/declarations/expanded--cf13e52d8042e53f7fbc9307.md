# Expanded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:874a63ecf6d4657fd959e436ab7278edb68023fcadc0de77285da50bdd96513e",
  "kind": "inductive",
  "lexical_name": "Expanded",
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
  "slug": "expanded--cf13e52d8042e53f7fbc9307",
  "source": {
    "blob": "88ba7708252df5e7c1b5636afa68a0bea180546c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant80b4c85b4c03a812568c9b0669e3e565977e13963672be1078895de05726417b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf13e52d8042e53f7fbc9307484fb067b0a9327d57526d393e1037ac41d13575",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant80b4c85b4c03a812568c9b0669e3e565977e13963672be1078895de05726417b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:874a63ecf6d4657fd959e436ab7278edb68023fcadc0de77285da50bdd96513e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive Expanded
  /-- A proof of `a = b`, `a ≤ b`, or `a < b` (according to the value of `Ineq`). -/
  | proof (rel : Ineq) (pf : Syntax.Term)
  /-- A value, equivalently a proof of `c = c`. -/
  | const (c : Syntax.Term)

/-- The handling in `linear_combination` of left- and right-multiplication and scalar-multiplication
and of division all five proceed according to the same logic, specified here: given a proof `p` of
an (in)equality and a constant `c`,
* if `p` is a proof of an equation, multiply/divide through by `c`;
* if `p` is a proof of a non-strict inequality, run `positivity` to find a proof that `c` is
  nonnegative, then multiply/divide through by `c`, invoking the nonnegativity of `c` where needed;
* if `p` is a proof of a strict inequality, run `positivity` to find a proof that `c` is positive
  (if possible) or nonnegative (if not), then multiply/divide through by `c`, invoking the
  positivity or nonnegativity of `c` where needed.

This generic logic takes as a parameter the object `lems`: the four lemmas corresponding to the four
cases. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant80b4c85b4c03a812568c9b0669e3e565977e13963672be1078895de05726417b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant80b4c85b4c03a812568c9b0669e3e565977e13963672be1078895de05726417b.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88ba7708252df5e7c1b5636afa68a0bea180546c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
