# Anonymous macro

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50f825ec4d3c4a983629f7de7e864c6708f63fb1d7591aff2ae09c7476caf898",
  "kind": "macro",
  "lexical_name": null,
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
  "slug": "macro--ac5bea0abbc0797542bd0c8b",
  "source": {
    "blob": "a0c73a1c703f2af45349317fd89279d2b74dc280",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 206,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04124e5757971c74c6f73168c3d723e13ed64b7f063ce50b1aed1ae0acfda8aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac5bea0abbc0797542bd0c8b75be90a97fb7ad1fe8f03912de2bce54c0401fc2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04124e5757971c74c6f73168c3d723e13ed64b7f063ce50b1aed1ae0acfda8aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50f825ec4d3c4a983629f7de7e864c6708f63fb1d7591aff2ae09c7476caf898`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
macro (name := aesop_cat_nonterminal) "aesop_cat_nonterminal" c:Aesop.tactic_clause* : tactic =>
  `(tactic|
    aesop $c* (config := { introsTransparency? := some .default, warnOnNonterminal := false })
              (rule_sets := [$(Lean.mkIdent `CategoryTheory):ident]))

attribute [aesop safe (rule_sets := [CategoryTheory])] Subsingleton.elim

open Lean Elab Tactic in
/-- A tactic for discharging easy category theory goals, widely used as an autoparameter.
Currently this defaults to the `aesop_cat` wrapper around `aesop`, but by setting
the option `mathlib.tactic.category.grind` to `true`, it will use the `grind` tactic instead.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04124e5757971c74c6f73168c3d723e13ed64b7f063ce50b1aed1ae0acfda8aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04124e5757971c74c6f73168c3d723e13ed64b7f063ce50b1aed1ae0acfda8aa.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0c73a1c703f2af45349317fd89279d2b74dc280` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
