# UsesOnlyVar0

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:229a056ecd04ca3d2cd90a65b2d29d5ad6221aad25ef3b7eb0f8501603a7ac3d",
  "kind": "inductive",
  "lexical_name": "UsesOnlyVar0",
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
  "slug": "usesonlyvar0--147eda9688f5f25b5f76fac7",
  "source": {
    "blob": "1988cb11eec1d32e19cb2fb7e00b68142bade502",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 450,
    "line": 438,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant8b262bd1d21d1d8516e6f1c735f8e20c2880c86007114f3614ef7722c99fb259.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:147eda9688f5f25b5f76fac7f0cd7e1c9667c569b928b2e50bc757b8a3065fff",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant8b262bd1d21d1d8516e6f1c735f8e20c2880c86007114f3614ef7722c99fb259.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:229a056ecd04ca3d2cd90a65b2d29d5ad6221aad25ef3b7eb0f8501603a7ac3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 438–450.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive UsesOnlyVar0 : Expr → Prop where
  | const (q : ℚ) : UsesOnlyVar0 (Expr.const q)
  | var0 : UsesOnlyVar0 (Expr.var 0)
  | add (e₁ e₂ : Expr) (h₁ : UsesOnlyVar0 e₁) (h₂ : UsesOnlyVar0 e₂) : UsesOnlyVar0 (Expr.add e₁ e₂)
  | mul (e₁ e₂ : Expr) (h₁ : UsesOnlyVar0 e₁) (h₂ : UsesOnlyVar0 e₂) : UsesOnlyVar0 (Expr.mul e₁ e₂)
  | neg (e : Expr) (h : UsesOnlyVar0 e) : UsesOnlyVar0 (Expr.neg e)
  | sin (e : Expr) (h : UsesOnlyVar0 e) : UsesOnlyVar0 (Expr.sin e)
  | cos (e : Expr) (h : UsesOnlyVar0 e) : UsesOnlyVar0 (Expr.cos e)
  | exp (e : Expr) (h : UsesOnlyVar0 e) : UsesOnlyVar0 (Expr.exp e)
  | atan (e : Expr) (h : UsesOnlyVar0 e) : UsesOnlyVar0 (Expr.atan e)
  | arsinh (e : Expr) (h : UsesOnlyVar0 e) : UsesOnlyVar0 (Expr.arsinh e)

/-- For expressions using only var 0, evalDual agrees for environments that match at 0 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant8b262bd1d21d1d8516e6f1c735f8e20c2880c86007114f3614ef7722c99fb259.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant8b262bd1d21d1d8516e6f1c735f8e20c2880c86007114f3614ef7722c99fb259.lean#L438).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1988cb11eec1d32e19cb2fb7e00b68142bade502` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
