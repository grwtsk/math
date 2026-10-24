# coordinateHopfAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6800050fe6354a7c04114fa30ae3b01a985d299c07fe5c6d0dcd35dbde9a89be",
  "kind": "def",
  "lexical_name": "coordinateHopfAlgebra",
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
  "slug": "coordinatehopfalgebra--c0d45d51d850aa9f6410bfbd",
  "source": {
    "blob": "dc594f8d81f2a9ac13dab5668dba02cfef8b32a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 865,
    "line": 857,
    "path": "GRWTSK/Algebra/LinearAlgebra/GrothendieckPower/Variant1b94fb5c718e3e4d68fa3203ab2201b8702365ceb9b928725f9f51a749f5a151.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c0d45d51d850aa9f6410bfbd262c766cf63baae8bbcdd76afe3b7c8155db16df",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/GrothendieckPower/Variant1b94fb5c718e3e4d68fa3203ab2201b8702365ceb9b928725f9f51a749f5a151.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6800050fe6354a7c04114fa30ae3b01a985d299c07fe5c6d0dcd35dbde9a89be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 857–865.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coordinateHopfAlgebra : CommHopfAlgCat R :=
  CommHopfAlgCat.of R A

/-- The formal counterexample: over the nontrivial base ring `R`, the commutative Hopf
algebra `A` is finite free of rank four, and its fourth power map is not the convolution
unit.

The freeness and finiteness conjuncts guarantee that the `Module.finrank` conjunct expresses
the honest rank of `A` over `R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/GrothendieckPower/Variant1b94fb5c718e3e4d68fa3203ab2201b8702365ceb9b928725f9f51a749f5a151.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/GrothendieckPower/Variant1b94fb5c718e3e4d68fa3203ab2201b8702365ceb9b928725f9f51a749f5a151.lean#L857).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc594f8d81f2a9ac13dab5668dba02cfef8b32a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
