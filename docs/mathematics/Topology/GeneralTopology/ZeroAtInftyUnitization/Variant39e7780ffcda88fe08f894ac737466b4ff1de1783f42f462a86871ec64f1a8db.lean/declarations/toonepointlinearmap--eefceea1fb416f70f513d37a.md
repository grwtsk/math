# toOnePointLinearMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:59607eb93b32808c4b7894eb1a7407b737f0c3223c8800f564d25344e93344bd",
  "kind": "def",
  "lexical_name": "toOnePointLinearMap",
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
  "slug": "toonepointlinearmap--eefceea1fb416f70f513d37a",
  "source": {
    "blob": "35565494c9e3e68d00d7460cb20cfd9c6aad3e55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 112,
    "path": "GRWTSK/Topology/GeneralTopology/ZeroAtInftyUnitization/Variant39e7780ffcda88fe08f894ac737466b4ff1de1783f42f462a86871ec64f1a8db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eefceea1fb416f70f513d37a030abdee15d706a2e457dffa7761246f23284b44",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ZeroAtInftyUnitization/Variant39e7780ffcda88fe08f894ac737466b4ff1de1783f42f462a86871ec64f1a8db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:59607eb93b32808c4b7894eb1a7407b737f0c3223c8800f564d25344e93344bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toOnePointLinearMap [Semiring S] [AddCommMonoid R] [ContinuousAdd R] [Module S R]
    [ContinuousConstSMul S R] : C₀(X, R) →ₗ[S] C(OnePoint X, R) where
  toFun := toOnePoint
  map_add' := toOnePoint_add
  map_smul' := toOnePoint_smul

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ZeroAtInftyUnitization/Variant39e7780ffcda88fe08f894ac737466b4ff1de1783f42f462a86871ec64f1a8db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ZeroAtInftyUnitization/Variant39e7780ffcda88fe08f894ac737466b4ff1de1783f42f462a86871ec64f1a8db.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35565494c9e3e68d00d7460cb20cfd9c6aad3e55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
