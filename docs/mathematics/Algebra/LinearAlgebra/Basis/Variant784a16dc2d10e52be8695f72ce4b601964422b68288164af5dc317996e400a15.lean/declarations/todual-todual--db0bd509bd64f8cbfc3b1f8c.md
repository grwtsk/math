# toDual_toDual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd18391f-6a61-d345-e7df-ea16d6987435",
  "kind": "theorem",
  "lexical_name": "toDual_toDual",
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
  "slug": "todual-todual--db0bd509bd64f8cbfc3b1f8c",
  "source": {
    "blob": "9d7c1a821892237d0fe9262da98a64bf8da116a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 178,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db0bd509bd64f8cbfc3b1f8c20c2dfe326800bf7f22602cd5901e98760448565",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd18391f-6a61-d345-e7df-ea16d6987435`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toDual_toDual : b.dualBasis.toDual.comp b.toDual = Dual.eval R M := by
  refine b.ext fun i => b.dualBasis.ext fun j => ?_
  rw [LinearMap.comp_apply, toDual_apply_left, coe_toDual_self, ← coe_dualBasis,
    Dual.eval_apply, Basis.repr_self, Finsupp.single_apply, dualBasis_apply_self]

end Finite

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d7c1a821892237d0fe9262da98a64bf8da116a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
