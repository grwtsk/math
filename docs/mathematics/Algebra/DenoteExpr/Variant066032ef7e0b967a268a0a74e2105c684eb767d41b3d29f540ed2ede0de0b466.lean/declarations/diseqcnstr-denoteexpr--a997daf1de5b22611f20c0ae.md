# DiseqCnstr.denoteExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ac250b1c23ee7a86819dbb4aea6ddd5dc8e95d741498801126bf0a6ae5822a37",
  "kind": "def",
  "lexical_name": "DiseqCnstr.denoteExpr",
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
  "slug": "diseqcnstr-denoteexpr--a997daf1de5b22611f20c0ae",
  "source": {
    "blob": "72b07756733549c239d68f726ee235608ba74592",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 59,
    "path": "GRWTSK/Algebra/DenoteExpr/Variant066032ef7e0b967a268a0a74e2105c684eb767d41b3d29f540ed2ede0de0b466.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a997daf1de5b22611f20c0ae2ac5d17d301de9b8aea6d53247751026f7573006",
  "verification": {
    "reference": "docs/verification/Algebra/DenoteExpr/Variant066032ef7e0b967a268a0a74e2105c684eb767d41b3d29f540ed2ede0de0b466.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ac250b1c23ee7a86819dbb4aea6ddd5dc8e95d741498801126bf0a6ae5822a37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def DiseqCnstr.denoteExpr (c : DiseqCnstr) : M Expr := do
  return mkNot (← mkEq (← c.p.denoteExpr) (← getStruct).ofNatZero)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/DenoteExpr/Variant066032ef7e0b967a268a0a74e2105c684eb767d41b3d29f540ed2ede0de0b466.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/DenoteExpr/Variant066032ef7e0b967a268a0a74e2105c684eb767d41b3d29f540ed2ede0de0b466.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72b07756733549c239d68f726ee235608ba74592` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
