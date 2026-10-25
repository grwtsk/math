# assertIneqTrue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c47eb9131d787ff9f1c7e6c09c7d1566f46e138369102c49dd3edda126e86675",
  "kind": "def",
  "lexical_name": "assertIneqTrue",
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
  "slug": "assertineqtrue--fbeae065ad9cc0bb82608340",
  "source": {
    "blob": "594ada1a082947cdf91e044010ea092a8febbc79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 299,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant0686fcbff6e1940a60345812cc98c5aa7a374271649545a411452a5e19ad04a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fbeae065ad9cc0bb826083409bf464eb95bef02ddb36cbe624eeb77ad327e382",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant0686fcbff6e1940a60345812cc98c5aa7a374271649545a411452a5e19ad04a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c47eb9131d787ff9f1c7e6c09c7d1566f46e138369102c49dd3edda126e86675`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def assertIneqTrue (c : Cnstr NodeId) (e : Expr) (he : Expr) : OrderM Unit := do
  trace[grind.order.assert] "{← c.pp}"
  let h ←  if let some h := c.h? then
    pure <| mkApp4 (mkConst ``Grind.Order.eq_mp) e c.e h (mkOfEqTrueCore e he)
  else
    pure <| mkOfEqTrueCore e he
  let k : Weight := { k := c.k, strict := c.kind matches .lt }
  addEdge c.u c.v k h

/--
Asserts constraint `c` associated with `e` where `he : e = False`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant0686fcbff6e1940a60345812cc98c5aa7a374271649545a411452a5e19ad04a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant0686fcbff6e1940a60345812cc98c5aa7a374271649545a411452a5e19ad04a6.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `594ada1a082947cdf91e044010ea092a8febbc79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
