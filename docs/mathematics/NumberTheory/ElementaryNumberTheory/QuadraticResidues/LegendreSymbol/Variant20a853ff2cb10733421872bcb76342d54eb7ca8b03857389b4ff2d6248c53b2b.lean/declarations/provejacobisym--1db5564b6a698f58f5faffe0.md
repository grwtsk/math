# proveJacobiSym

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2971ba7a94f6d9c7de180309aee5411f01f6cb56f31b5ced728e1c0500c90cd8",
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
  "slug": "provejacobisym--1db5564b6a698f58f5faffe0",
  "source": {
    "blob": "1f6074dc1143b2b3168bc55b2c3682cd701939fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 334,
    "path": "GRWTSK/NumberTheory/LegendreSymbol/Variant20a853ff2cb10733421872bcb76342d54eb7ca8b03857389b4ff2d6248c53b2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1db5564b6a698f58f5faffe0e5b6c7087df8286e79f1b491af951115f68244ac",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant20a853ff2cb10733421872bcb76342d54eb7ca8b03857389b4ff2d6248c53b2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2971ba7a94f6d9c7de180309aee5411f01f6cb56f31b5ced728e1c0500c90cd8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def proveJacobiSym (ea : Q(ℤ)) (eb : Q(ℕ)) : (er : Q(ℤ)) × Q(jacobiSym $ea $eb = $er) :=
  match eb.natLit! with
  | 0 =>
    haveI : $eb =Q 0 := ⟨⟩
    ⟨mkRawIntLit' 1, q(jacobiSym.zero_right $ea)⟩
  | 1 =>
    haveI : $eb =Q 1 := ⟨⟩
    ⟨mkRawIntLit' 1, q(jacobiSym.one_right $ea)⟩
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

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant20a853ff2cb10733421872bcb76342d54eb7ca8b03857389b4ff2d6248c53b2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/LegendreSymbol/Variant20a853ff2cb10733421872bcb76342d54eb7ca8b03857389b4ff2d6248c53b2b.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f6074dc1143b2b3168bc55b2c3682cd701939fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
