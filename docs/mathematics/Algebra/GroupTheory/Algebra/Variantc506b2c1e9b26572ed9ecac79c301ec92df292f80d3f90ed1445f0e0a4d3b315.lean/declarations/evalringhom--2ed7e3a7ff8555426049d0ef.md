# evalRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6cc715cd732e55e0418e1a8f800b6c9179cbbaf74d8361b8e3be0c86ec781b88",
  "kind": "def",
  "lexical_name": "evalRingHom",
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
  "slug": "evalringhom--2ed7e3a7ff8555426049d0ef",
  "source": {
    "blob": "ac8869b657e57c53cfac3794bfc648c00a7cd3a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 309,
    "path": "GRWTSK/Algebra/GroupTheory/Algebra/Variantc506b2c1e9b26572ed9ecac79c301ec92df292f80d3f90ed1445f0e0a4d3b315.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2ed7e3a7ff8555426049d0ef29459bfa7b18692a9f59904679f6c4eb23624faa",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Algebra/Variantc506b2c1e9b26572ed9ecac79c301ec92df292f80d3f90ed1445f0e0a4d3b315.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6cc715cd732e55e0418e1a8f800b6c9179cbbaf74d8361b8e3be0c86ec781b88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps!] def evalRingHom [Semiring Y] (x : X) : LocallyConstant X Y →+* Y :=
  (Pi.evalRingHom _ x).comp coeFnRingHom

/-- Evaluation as an `AlgHom` -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Algebra/Variantc506b2c1e9b26572ed9ecac79c301ec92df292f80d3f90ed1445f0e0a4d3b315.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Algebra/Variantc506b2c1e9b26572ed9ecac79c301ec92df292f80d3f90ed1445f0e0a4d3b315.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac8869b657e57c53cfac3794bfc648c00a7cd3a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
