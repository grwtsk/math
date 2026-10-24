# FormulaTree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:91c2ae507119dcc873fac825f35e96f81849c78f22203309b89d0efb8e08dda0",
  "kind": "inductive",
  "lexical_name": "FormulaTree",
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
  "slug": "formulatree--fd1cb64581ee644e2f3138b2",
  "source": {
    "blob": "35ef1b46111255c51ad11bc3b88c7fbf2b000e03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 23,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant283a566caeb54f1d154a6d02745b29f7cf5906796835744b3e088d63a5347da4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd1cb64581ee644e2f3138b2e8b194898260d22d1819e20e61d65c14b2d7fbce",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant283a566caeb54f1d154a6d02745b29f7cf5906796835744b3e088d63a5347da4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:91c2ae507119dcc873fac825f35e96f81849c78f22203309b89d0efb8e08dda0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive FormulaTree (α : Type u) : Type u where
  | var : α → FormulaTree α
  | falsum : FormulaTree α
  | truth : FormulaTree α
  | neg : FormulaTree α → FormulaTree α
  | conj : FormulaTree α → FormulaTree α → FormulaTree α
  | disj : FormulaTree α → FormulaTree α → FormulaTree α
  | impl : FormulaTree α → FormulaTree α → FormulaTree α
  | eqv : FormulaTree α → FormulaTree α → FormulaTree α
  | nand : FormulaTree α → FormulaTree α → FormulaTree α
deriving Repr, DecidableEq

/-- Bottom-up evaluation of a Boolean expression tree. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant283a566caeb54f1d154a6d02745b29f7cf5906796835744b3e088d63a5347da4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant283a566caeb54f1d154a6d02745b29f7cf5906796835744b3e088d63a5347da4.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35ef1b46111255c51ad11bc3b88c7fbf2b000e03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
