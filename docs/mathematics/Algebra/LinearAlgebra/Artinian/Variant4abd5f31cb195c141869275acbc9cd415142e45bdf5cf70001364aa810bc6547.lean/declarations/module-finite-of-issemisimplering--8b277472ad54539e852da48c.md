# Module.finite_of_isSemisimpleRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb8b8dda-1f01-e6e5-5234-cc19f6a2b055",
  "kind": "lemma",
  "lexical_name": "Module.finite_of_isSemisimpleRing",
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
  "slug": "module-finite-of-issemisimplering--8b277472ad54539e852da48c",
  "source": {
    "blob": "fac834271f96e8f69a3dfef3e204cb1796a032a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 33,
    "path": "GRWTSK/Algebra/LinearAlgebra/Artinian/Variant4abd5f31cb195c141869275acbc9cd415142e45bdf5cf70001364aa810bc6547.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b277472ad54539e852da48c1502f7887d30a3a60cf63f7889d89ed1f60b77f7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Artinian/Variant4abd5f31cb195c141869275acbc9cd415142e45bdf5cf70001364aa810bc6547.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb8b8dda-1f01-e6e5-5234-cc19f6a2b055`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Module.finite_of_isSemisimpleRing [IsJacobsonRing R] [IsSemisimpleRing A] :
    Module.Finite R A :=
  have (I : MaximalSpectrum A) := finite_of_finite_type_of_isJacobsonRing R (A ⧸ I.asIdeal)
  .equiv ((IsArtinianRing.equivPi A).restrictScalars R).toLinearEquiv.symm

/-- If `A` is a finite type algebra over `R`, then `A` is an Artinian ring and `R` is Jacobson
implies `A` is finite over `R`. -/
/- If made an instance, causes timeouts synthesizing `FaithfulSMul R I.ResidueField` at
`Ideal.algebraMap_residueField_eq_zero` and `Ideal.ker_algebraMap_residueField` during
simpNF linting. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Artinian/Variant4abd5f31cb195c141869275acbc9cd415142e45bdf5cf70001364aa810bc6547.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Artinian/Variant4abd5f31cb195c141869275acbc9cd415142e45bdf5cf70001364aa810bc6547.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fac834271f96e8f69a3dfef3e204cb1796a032a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
