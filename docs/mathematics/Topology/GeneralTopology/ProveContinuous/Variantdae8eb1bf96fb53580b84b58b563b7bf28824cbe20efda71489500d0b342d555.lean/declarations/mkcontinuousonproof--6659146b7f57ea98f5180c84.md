# mkContinuousOnProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:505f753a4ac05132f9e3b16f8e6679639120febc54f5e1548df54e2d1e98b3fe",
  "kind": "def",
  "lexical_name": "mkContinuousOnProof",
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
  "slug": "mkcontinuousonproof--6659146b7f57ea98f5180c84",
  "source": {
    "blob": "0e853a96808a6b4861710db3f8229db8bd735dfd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 442,
    "line": 436,
    "path": "GRWTSK/Topology/GeneralTopology/ProveContinuous/Variantdae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6659146b7f57ea98f5180c84449e71263b1999d0d0f168a4efa8fb9cf7311ab1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ProveContinuous/Variantdae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:505f753a4ac05132f9e3b16f8e6679639120febc54f5e1548df54e2d1e98b3fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 436–442.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkContinuousOnProof (e_ast : Lean.Expr) (interval : Lean.Expr) : MetaM Lean.Expr := do
  -- Generate the ExprContinuousCore proof
  let contProof ← mkContinuousCoreProof e_ast
  -- Apply the continuity theorem
  mkAppM ``exprContinuousCore_continuousOn_interval #[e_ast, contProof, interval]

/-- Alternative: generate ContinuousOn proof with explicit lo/hi bounds -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ProveContinuous/Variantdae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ProveContinuous/Variantdae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean#L436).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e853a96808a6b4861710db3f8229db8bd735dfd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
