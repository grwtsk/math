# synthesis_stageDuality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0353b165-7062-3ac8-e753-5de8ef170cf0",
  "kind": "theorem",
  "lexical_name": "synthesis_stageDuality",
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
  "slug": "synthesis-stageduality--fde32d0967550714d8f4a943",
  "source": {
    "blob": "ac1303bfce48766587b60221472588ecb7aa6061",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 181,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CertificationOrbitRefinement/Variantfdea390aced26e9b9303765427956e868876a3e5d1c3b2615451aa19234c88fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fde32d0967550714d8f4a943b41ecc6b39470febcc1c622e32b817c407962ed4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CertificationOrbitRefinement/Variantfdea390aced26e9b9303765427956e868876a3e5d1c3b2615451aa19234c88fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0353b165-7062-3ac8-e753-5de8ef170cf0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem synthesis_stageDuality (q : ComplexL2) (I : Finset ℕ)
    (c : OrbitIndex I → ℂ) :
    synthesis q I (stageDuality I c) = angularSignDuality (synthesis q I c) := by
  rw [synthesis_apply, synthesis_apply, map_sum]
  simp only [map_smul]
  apply Fintype.sum_equiv (dualIndexEquiv I)
  intro i
  simp [stageDuality, dualIndexEquiv, orbitGenerator, orbitAtom_duality]

/-- The literal labels also prove compatibility of duality with zero extension. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CertificationOrbitRefinement/Variantfdea390aced26e9b9303765427956e868876a3e5d1c3b2615451aa19234c88fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CertificationOrbitRefinement/Variantfdea390aced26e9b9303765427956e868876a3e5d1c3b2615451aa19234c88fa.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac1303bfce48766587b60221472588ecb7aa6061` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
