# projectiveParityReadout_selected_eigen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70bb07f0-98fd-fc33-9380-1e6f47fc358d",
  "kind": "theorem",
  "lexical_name": "projectiveParityReadout_selected_eigen",
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
  "slug": "projectiveparityreadout-selected-eigen--198b351faadc4dd72f51e9c5",
  "source": {
    "blob": "b061bd5a98174dbb31896e31f16d224321ac01bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 132,
    "path": "GRWTSK/NumberTheory/Farey/ProjectiveKoopmanEigenvalue.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:198b351faadc4dd72f51e9c5469acfdf16e0267de19f3c85d6a962e1e8369eb2",
  "verification": {
    "reference": "docs/verification/NumberTheory/Farey/ProjectiveKoopmanEigenvalue.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70bb07f0-98fd-fc33-9380-1e6f47fc358d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem projectiveParityReadout_selected_eigen (j : Fin 4) :
    projectiveParityReadout
        (modThreeReturn.mulVec (residueOrbit j)) =
      (-1 : ℂ) * projectiveParityReadout (residueOrbit j) := by
  rw [modThreeReturn_orbit,
    projectiveParityReadout_on_orbit (orbitNext j),
    projectiveParityReadout_on_orbit j,
    orbitPhase_next, mul_pow]
  norm_num [Complex.I_mul_I]

/-- Parity identifies the two antipodal pairs in the specified
four-state cyclic orbit. This is an observation on labels, not a
construction of the entire projective space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Farey/ProjectiveKoopmanEigenvalue.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Farey/ProjectiveKoopmanEigenvalue.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b061bd5a98174dbb31896e31f16d224321ac01bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
