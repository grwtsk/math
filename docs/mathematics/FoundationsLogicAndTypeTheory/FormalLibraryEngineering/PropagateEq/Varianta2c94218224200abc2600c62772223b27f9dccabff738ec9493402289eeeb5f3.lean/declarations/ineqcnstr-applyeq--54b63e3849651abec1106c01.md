# IneqCnstr.applyEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6518da415ec6df4cf2c7fa6e892064d4fc3b0191449d8fc844d0a2546d41bc40",
  "kind": "def",
  "lexical_name": "IneqCnstr.applyEq",
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
  "slug": "ineqcnstr-applyeq--54b63e3849651abec1106c01",
  "source": {
    "blob": "43a5ffc2a9975ca9467040a2179d061fcd70324f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 101,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Varianta2c94218224200abc2600c62772223b27f9dccabff738ec9493402289eeeb5f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:54b63e3849651abec1106c0149b81f1b463d9883cb60abaa63e105ce30a73b3f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Varianta2c94218224200abc2600c62772223b27f9dccabff738ec9493402289eeeb5f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6518da415ec6df4cf2c7fa6e892064d4fc3b0191449d8fc844d0a2546d41bc40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def IneqCnstr.applyEq (a : Nat) (x : Var) (c₁ : EqCnstr) (b : Int) (c₂ : IneqCnstr) : LinearM IneqCnstr := do
  let p := c₁.p
  let q := c₂.p
  let p := q.mul a |>.combine (p.mul (-b))
  trace[grind.linarith.subst] "{← getVar x}, {← c₁.denoteExpr}, {← c₂.denoteExpr}"
  return { p, h := .subst x c₁ c₂, strict := c₂.strict }

/--
Given an equation `c₁` containing `a*x`, eliminate `x` from the inequalities in `todo`.
`todo` contains pairs of the form `(b, c₂)` where `b` is the coefficient of `x` in `c₂`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Varianta2c94218224200abc2600c62772223b27f9dccabff738ec9493402289eeeb5f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Varianta2c94218224200abc2600c62772223b27f9dccabff738ec9493402289eeeb5f3.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43a5ffc2a9975ca9467040a2179d061fcd70324f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
