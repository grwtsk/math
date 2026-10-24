# _root_.GRWTSK.Algebra.DenoteNum.Variantd218afa9679fa4d294ab464e3c10da691268cf5bff38f9ac24945c2c7244bd28.Lean.Grind.CommRing.Mon.denoteExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eb8d97d359ef42e6eb25e5a1c14b14ea1ceec65c0bde3ce071d50394420fea74",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Algebra.DenoteNum.Variantd218afa9679fa4d294ab464e3c10da691268cf5bff38f9ac24945c2c7244bd28.Lean.Grind.CommRing.Mon.denoteExpr",
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
  "slug": "root-grwtsk-algebra-denotenum-variantd218afa9679fa4d294ab464e3c10da69126--f6d7ab838e94759d571a354f",
  "source": {
    "blob": "295e8866aaa002d0793ca60dfc4fd6ce1667833d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 46,
    "path": "GRWTSK/Algebra/DenoteExpr/Variant2352028c541679fb46b3066919f3f1d0fe0391e7899e579c7b3d20a57d462bad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f6d7ab838e94759d571a354f89e07231c02df3c8c53b230d30566ab48bb197b3",
  "verification": {
    "reference": "docs/verification/Algebra/DenoteExpr/Variant2352028c541679fb46b3066919f3f1d0fe0391e7899e579c7b3d20a57d462bad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eb8d97d359ef42e6eb25e5a1c14b14ea1ceec65c0bde3ce071d50394420fea74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Algebra.DenoteNum.Variantd218afa9679fa4d294ab464e3c10da691268cf5bff38f9ac24945c2c7244bd28.Lean.Grind.CommRing.Mon.denoteExpr (m : Mon) : M Expr := do
  match m with
  | .unit => denoteNum 1
  | .mult pw m => go m (← pw.denoteExpr)
where
  go (m : Mon) (acc : Expr) : M Expr := do
    match m with
    | .unit => return acc
    | .mult pw m => go m (mkApp2 (← getMulFn) acc (← pw.denoteExpr))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/DenoteExpr/Variant2352028c541679fb46b3066919f3f1d0fe0391e7899e579c7b3d20a57d462bad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/DenoteExpr/Variant2352028c541679fb46b3066919f3f1d0fe0391e7899e579c7b3d20a57d462bad.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `295e8866aaa002d0793ca60dfc4fd6ce1667833d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
