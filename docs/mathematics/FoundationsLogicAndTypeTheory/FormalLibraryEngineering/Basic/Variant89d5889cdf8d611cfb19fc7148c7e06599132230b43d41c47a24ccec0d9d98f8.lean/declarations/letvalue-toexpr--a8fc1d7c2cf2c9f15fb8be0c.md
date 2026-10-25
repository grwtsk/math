# LetValue.toExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:60d54a0ff7f083de6cd5a2818ab63cb0cb6a8fd47f672fc430dd80c7a338fd1b",
  "kind": "def",
  "lexical_name": "LetValue.toExpr",
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
  "slug": "letvalue-toexpr--a8fc1d7c2cf2c9f15fb8be0c",
  "source": {
    "blob": "c371cf773f9bfea2c1daa81d460c728223aafab3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 333,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant89d5889cdf8d611cfb19fc7148c7e06599132230b43d41c47a24ccec0d9d98f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a8fc1d7c2cf2c9f15fb8be0cca1f936527fa628aa3fbf07a23a8113d46ebbc31",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant89d5889cdf8d611cfb19fc7148c7e06599132230b43d41c47a24ccec0d9d98f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:60d54a0ff7f083de6cd5a2818ab63cb0cb6a8fd47f672fc430dd80c7a338fd1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LetValue.toExpr (e : LetValue pu) : Expr :=
  match e with
  | .lit v => v.toExpr
  | .erased => erasedExpr
  | .proj n i s _ => .proj n i (.fvar s)
  | .const n us as _ => mkAppN (.const n us) (as.map Arg.toExpr)
  | .fvar fvarId as => mkAppN (.fvar fvarId) (as.map Arg.toExpr)
  | .ctor i as _ => mkAppN (.const i.name []) (as.map Arg.toExpr)
  | .fap fn as _ | .pap fn as _ => mkAppN (.const fn []) (as.map Arg.toExpr)
  | .oproj i var _ => mkApp2 (.const `oproj []) (ToExpr.toExpr i) (.fvar var)
  | .uproj i var _ => mkApp2 (.const `uproj []) (ToExpr.toExpr i) (.fvar var)
  | .sproj i offset var _ => mkApp3 (.const `sproj []) (ToExpr.toExpr i) (ToExpr.toExpr offset) (.fvar var)
  | .reset n var _ => mkApp2 (.const `reset []) (ToExpr.toExpr n) (.fvar var)
  | .reuse var i updateHeader args _ =>
    mkAppN (.const `reuse []) <|
      #[.fvar var, .const i.name [], ToExpr.toExpr updateHeader] ++ (args.map Arg.toExpr)
  | .box ty var _ => mkApp2 (.const `box []) ty (.fvar var)
  | .unbox var _ => mkApp (.const `unbox []) (.fvar var)
  | .isShared fvarId _ => mkApp (.const `isShared []) (.fvar fvarId)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant89d5889cdf8d611cfb19fc7148c7e06599132230b43d41c47a24ccec0d9d98f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant89d5889cdf8d611cfb19fc7148c7e06599132230b43d41c47a24ccec0d9d98f8.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c371cf773f9bfea2c1daa81d460c728223aafab3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
