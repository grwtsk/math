# free

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:01b9fe7fea185a37e87696973fd700243df1109dc414c809cf0be6aa820bb119",
  "kind": "instance",
  "lexical_name": "free",
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
  "slug": "free--1e3fb515df9eb6b512eaa752",
  "source": {
    "blob": "f291b5d1fa3752061af0c980c2d2262cc60d0702",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 166,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lattice/Variant7e632529ea2e0ec1a2a1e68883bd9f30c75a0b5453da635c88a99aa73c12fd8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e3fb515df9eb6b512eaa752d6af26094449f298619309aa316b1ab1d25820c1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lattice/Variant7e632529ea2e0ec1a2a1e68883bd9f30c75a0b5453da635c88a99aa73c12fd8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:01b9fe7fea185a37e87696973fd700243df1109dc414c809cf0be6aa820bb119`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance free [NoZeroSMulDivisors R K] (M : Submodule R V) [IsLattice K M] : Module.Free R M := by
  have := NoZeroSMulDivisors.trans_faithfulSMul R K V
  -- any torsion free finite module over a PID is free
  infer_instance

/-- Any lattice has `R`-rank equal to the `K`-rank of `V`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lattice/Variant7e632529ea2e0ec1a2a1e68883bd9f30c75a0b5453da635c88a99aa73c12fd8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lattice/Variant7e632529ea2e0ec1a2a1e68883bd9f30c75a0b5453da635c88a99aa73c12fd8c.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f291b5d1fa3752061af0c980c2d2262cc60d0702` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
