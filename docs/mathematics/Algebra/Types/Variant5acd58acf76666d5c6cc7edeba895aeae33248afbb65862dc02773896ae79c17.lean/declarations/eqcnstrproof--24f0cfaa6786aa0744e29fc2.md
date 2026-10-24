# EqCnstrProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:916e81c65437bdf2d82acf6dcc83f89b4569b2c154b4a421516874e5b86c9248",
  "kind": "inductive",
  "lexical_name": "EqCnstrProof",
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
  "slug": "eqcnstrproof--24f0cfaa6786aa0744e29fc2",
  "source": {
    "blob": "c4638d5afff95049dcda586f6761eb2f018a0c39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 37,
    "path": "GRWTSK/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:24f0cfaa6786aa0744e29fc255de28b779bef2a5d46fe1c6a9225780f213dcd8",
  "verification": {
    "reference": "docs/verification/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:916e81c65437bdf2d82acf6dcc83f89b4569b2c154b4a421516874e5b86c9248`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive EqCnstrProof where
  | core (a b : Expr) (ra rb : RingExpr)
  | coreS (a b : Expr) (sa sb : SemiringExpr) (ra rb : RingExpr)
  | superpose (k₁ : Int) (m₁ : Mon) (c₁ : EqCnstr) (k₂ : Int) (m₂ : Mon) (c₂ : EqCnstr)
  | simp (k₁ : Int) (c₁ : EqCnstr) (k₂ : Int) (m₂ : Mon) (c₂ : EqCnstr)
  | mul (k : Int) (e : EqCnstr)
  | div (k : Int) (e : EqCnstr)
  | gcd (a b : Int) (c₁ c₂ : EqCnstr)
  | numEq0 (k : Nat) (c₁ c₂ : EqCnstr)
end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4638d5afff95049dcda586f6761eb2f018a0c39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
