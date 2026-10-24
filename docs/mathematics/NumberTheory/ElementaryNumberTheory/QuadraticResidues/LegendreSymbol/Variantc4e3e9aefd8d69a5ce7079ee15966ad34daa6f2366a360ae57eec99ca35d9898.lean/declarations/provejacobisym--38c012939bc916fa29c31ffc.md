# proveJacobiSym

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:72f722c5169a607a3d7709d1ae7753cdea93af91c7286ffbfc9445a1d41bb106",
  "kind": "def",
  "lexical_name": "proveJacobiSym",
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
  "slug": "provejacobisym--38c012939bc916fa29c31ffc",
  "source": {
    "blob": "248764e2acf0de3abc425da088cd215bd1d8263c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 323,
    "path": "GRWTSK/NumberTheory/LegendreSymbol/Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:38c012939bc916fa29c31ffc83b66dedadb72c2d54d00a5d877685c58bfdf422",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:72f722c5169a607a3d7709d1ae7753cdea93af91c7286ffbfc9445a1d41bb106`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def proveJacobiSym (ea : Q(ℤ)) (eb : Q(ℕ)) : (er : Q(ℤ)) × Q(jacobiSym $ea $eb = $er) :=
  match eb.natLit! with
  | 0 =>
    haveI : $eb =Q 0 := ⟨⟩
    ⟨mkRawIntLit 1, q(jacobiSym.zero_right $ea)⟩
  | 1 =>
    haveI : $eb =Q 1 := ⟨⟩
    ⟨mkRawIntLit 1, q(jacobiSym.one_right $ea)⟩
  | b =>
    have eb' := mkRawIntLit b
    have hb' : Q(($eb : ℤ) = $eb') := (q(Eq.refl $eb') : Expr)
    have ab := ea.intLit! % b
    have eab := mkRawIntLit ab
    have hab : Q(Int.emod $ea $eb' = $eab) := (q(Eq.refl $eab) : Expr)
    have eab' : Q(ℕ) := mkRawNatLit ab.toNat
    have hab' : Q(($eab' : ℤ) = $eab) := (q(Eq.refl $eab) : Expr)
    have ⟨er, p⟩ := proveJacobiSymNat eab' eb
    ⟨er, q(JacobiSym.mod_left $ea $eb $eab' $eab $er $eb' $hb' $hab $hab' $p)⟩

end Mathlib.Meta.NormNum

end Evaluation

section Tactic

/-!
### The `norm_num` plug-in
-/


namespace Tactic

namespace NormNum

open Lean Elab Tactic Qq Mathlib.Meta.NormNum

/-- This is the `norm_num` plug-in that evaluates Jacobi symbols. -/
@[norm_num jacobiSym _ _]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/LegendreSymbol/Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `248764e2acf0de3abc425da088cd215bd1d8263c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
