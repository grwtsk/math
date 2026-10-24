# RegularizedDeterminantAuthority

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd92a1138bdea4d3f5a791dbeec0348955803c19aa2d83b735db27f290e456c0",
  "kind": "structure",
  "lexical_name": "RegularizedDeterminantAuthority",
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
  "slug": "regularizeddeterminantauthority--60a31963b2f2e3277c7f686e",
  "source": {
    "blob": "e715da0c0504a2ae1b1c61a4bbee5474143d482d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 161,
    "path": "GRWTSK/Topology/GeneralTopology/ArithmeticAuthorities/Variant8b4cbe96dca838816f3f66344dbe71daff877c39d7a603b4579bfec1cad85898.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:60a31963b2f2e3277c7f686e4520e17fb89510ebf4a84cb458f02833236f2d7b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ArithmeticAuthorities/Variant8b4cbe96dca838816f3f66344dbe71daff877c39d7a603b4579bfec1cad85898.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd92a1138bdea4d3f5a791dbeec0348955803c19aa2d83b735db27f290e456c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RegularizedDeterminantAuthority where
  label : String
  operatorLabel : String
  determinantCoeffs : List Int
  relativeDeterminantCoeffs : List Int
  determinantDefined : Prop
  determinantDefinedProof : determinantDefined
  regularizationSound : Prop
  regularizationSoundProof : regularizationSound
  finiteApproximationSound : Prop
  finiteApproximationSoundProof : finiteApproximationSound
  errorBoundSound : Prop
  errorBoundSoundProof : errorBoundSound
  compatibleWithSpectralTriple : Prop
  compatibleWithSpectralTripleProof : compatibleWithSpectralTriple
  compatibleWithPrismaticTrace : Prop
  compatibleWithPrismaticTraceProof : compatibleWithPrismaticTrace

/-- The regularized determinant authority exposes finite determinant coefficients. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ArithmeticAuthorities/Variant8b4cbe96dca838816f3f66344dbe71daff877c39d7a603b4579bfec1cad85898.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ArithmeticAuthorities/Variant8b4cbe96dca838816f3f66344dbe71daff877c39d7a603b4579bfec1cad85898.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e715da0c0504a2ae1b1c61a4bbee5474143d482d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
