# DiseqCnstr.denoteExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:31879642e62d076421eef3397a80f7a8d9f322ac9f5d656569796f87f5e09347",
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
  "slug": "diseqcnstr-denoteexpr--7225373b3f5ad01977bb4a43",
  "source": {
    "blob": "9f4d8d53eb63e1d001e1584f7d18069215dbc2b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 97,
    "path": "GRWTSK/Algebra/DenoteExpr/Variantd218afa9679fa4d294ab464e3c10da691268cf5bff38f9ac24945c2c7244bd28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7225373b3f5ad01977bb4a437540d8d8f2484b2ffd119d2c37c61ece6b00273c",
  "verification": {
    "reference": "docs/verification/Algebra/DenoteExpr/Variantd218afa9679fa4d294ab464e3c10da691268cf5bff38f9ac24945c2c7244bd28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:31879642e62d076421eef3397a80f7a8d9f322ac9f5d656569796f87f5e09347`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def DiseqCnstr.denoteExpr (c : DiseqCnstr) : M Expr := do
  return mkNot (← mkEq (← c.d.denoteExpr) (← denoteNum 0))

end Lean.Meta.Grind.Arith.CommRing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/DenoteExpr/Variantd218afa9679fa4d294ab464e3c10da691268cf5bff38f9ac24945c2c7244bd28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/DenoteExpr/Variantd218afa9679fa4d294ab464e3c10da691268cf5bff38f9ac24945c2c7244bd28.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f4d8d53eb63e1d001e1584f7d18069215dbc2b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
