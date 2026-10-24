# parseSignedInt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b8f73f32da5316c24150453d998123f22084c06d2bfa643bea28037004122464",
  "kind": "def",
  "lexical_name": "parseSignedInt",
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
  "slug": "parsesignedint--a926711a74175f421d1a9d9d",
  "source": {
    "blob": "0fe1a21f41a7973712513ff6cf21d3d729138e3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1861,
    "line": 1841,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Discovery/Varianta25030593cb10b1bfe83fb13efc71c052e51b88e5209488a1c83fa40da45711d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a926711a74175f421d1a9d9d45a97c8aa05ed91944ae23ea1eff6ab9b7ae0c87",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Discovery/Varianta25030593cb10b1bfe83fb13efc71c052e51b88e5209488a1c83fa40da45711d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b8f73f32da5316c24150453d998123f22084c06d2bfa643bea28037004122464`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1841–1861.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def parseSignedInt : Syntax → Int
  | `(signedInt| $n:num) => n.getNat
  | `(signedInt| -$n:num) => -(n.getNat : Int)
  | _ => 0

open Lean.Elab.Command in
/-- The `#explore` command analyzes a function on an interval.

Usage:
```lean
#explore (Expr.sin (Expr.var 0)) on [0, 7]
#explore (Expr.cos (Expr.var 0)) on [-1, 2]
```

Output includes:
- Range bounds
- Global minimum/maximum
- Root detection (sign changes)

Note: Bounds must be integer literals (positive or negative).
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Discovery/Varianta25030593cb10b1bfe83fb13efc71c052e51b88e5209488a1c83fa40da45711d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Discovery/Varianta25030593cb10b1bfe83fb13efc71c052e51b88e5209488a1c83fa40da45711d.lean#L1841).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fe1a21f41a7973712513ff6cf21d3d729138e3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
