# lowerPowerPhaseDefect_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:440d8007-6d5a-9204-76cf-499d202d32db",
  "kind": "theorem",
  "lexical_name": "lowerPowerPhaseDefect_nonneg",
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
  "slug": "lowerpowerphasedefect-nonneg--ab22346e52c6e37c3b638f11",
  "source": {
    "blob": "d58fdbf444615471baf0cb8d65729b1faecac0e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 43,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianteb772530b564c1a6046735a49b146d74831f8de423f2272487a9e53a1864f171.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab22346e52c6e37c3b638f11e1524d86b014ebd7877ffc74d9d64b7b0e9585c4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianteb772530b564c1a6046735a49b146d74831f8de423f2272487a9e53a1864f171.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:440d8007-6d5a-9204-76cf-499d202d32db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lowerPowerPhaseDefect_nonneg (A ξ : ℝ) : 0 ≤ lowerPowerPhaseDefect A ξ :=
  Finset.sum_nonneg (fun n _ ↦
    mul_nonneg (primeWeight_nonneg n) (Complex.normSq_nonneg _))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianteb772530b564c1a6046735a49b146d74831f8de423f2272487a9e53a1864f171.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianteb772530b564c1a6046735a49b146d74831f8de423f2272487a9e53a1864f171.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d58fdbf444615471baf0cb8d65729b1faecac0e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
