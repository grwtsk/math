# mkNatCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:39d33e4da8a9745e43ea0180b46a4d865cdb3b7f7473690ce10325ece3610cad",
  "kind": "def",
  "lexical_name": "mkNatCast",
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
  "slug": "mknatcast--d3a5b00902a8d7cd572af3dc",
  "source": {
    "blob": "d9af8050ec25a626c255ecf71918dc1aece9d1d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 98,
    "path": "GRWTSK/Algebra/FieldNormNum/Varianta5d69a7043a8620b7b09783ec5cf247f0ea12ee7226af6f61fa6c2effc95ae52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d3a5b00902a8d7cd572af3dc45fc0cc0e7c07d984b71a3f54a559c54d24e629a",
  "verification": {
    "reference": "docs/verification/Algebra/FieldNormNum/Varianta5d69a7043a8620b7b09783ec5cf247f0ea12ee7226af6f61fa6c2effc95ae52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:39d33e4da8a9745e43ea0180b46a4d865cdb3b7f7473690ce10325ece3610cad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkNatCast (n : Nat) : M Expr := do
  let ctx ← read
  let n := mkNatLit n
  try
    mkAppOptM ``NatCast.natCast #[ctx.type, none, n]
  catch _ =>
    /-
    **Note**: This may happen because the `NatCast` instances defined in core are not enabled by default.
    We must ensure the normalizer works even when there is not `NatCast` instance available.
    -/
    return mkApp3 (mkConst ``NatCast.natCast [ctx.u]) ctx.type (← mkNatCastInst) n

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FieldNormNum/Varianta5d69a7043a8620b7b09783ec5cf247f0ea12ee7226af6f61fa6c2effc95ae52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FieldNormNum/Varianta5d69a7043a8620b7b09783ec5cf247f0ea12ee7226af6f61fa6c2effc95ae52.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9af8050ec25a626c255ecf71918dc1aece9d1d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
