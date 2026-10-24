# actualUpperAdjointInterior

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e5796cd99fc8a0f92970fbef747b7b9f9df5e12e767b750cb96c10e9a1308da",
  "kind": "def",
  "lexical_name": "actualUpperAdjointInterior",
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
  "slug": "actualupperadjointinterior--8609ae8959ca67d153952675",
  "source": {
    "blob": "c296e0e804a00a34f7100d49582abf1ab506ed2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 26,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D3a4ba2fccf423a0ea12SourceActualAdjointCompensationLocalization/Variant9f0c019c48367f17eb3bb08ed8e6fca0401a7737cf7adc7ea91bf1929652fcd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8609ae8959ca67d153952675e79a598c46f952f4d401fa6b5620a2a196b13f34",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D3a4ba2fccf423a0ea12SourceActualAdjointCompensationLocalization/Variant9f0c019c48367f17eb3bb08ed8e6fca0401a7737cf7adc7ea91bf1929652fcd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e5796cd99fc8a0f92970fbef747b7b9f9df5e12e767b750cb96c10e9a1308da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualUpperAdjointInterior (A w : ℝ) : ℝ :=
  ∫ t in min (Real.log (sourceKernelCutoff A : ℝ)) (actualTimeLower A + w)..
      Real.log (sourceKernelCutoff A : ℝ),
    ∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..actualColumnUpper A,
      actualAdjointTimePrimitive A 0 t * actualAdjointColumnPrimitive A s *
        covariantMixedDerivative (actualLogMixedDensity A) t s

/-- These literal original compensation terms retain the full signed upper-time interior. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D3a4ba2fccf423a0ea12SourceActualAdjointCompensationLocalization/Variant9f0c019c48367f17eb3bb08ed8e6fca0401a7737cf7adc7ea91bf1929652fcd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D3a4ba2fccf423a0ea12SourceActualAdjointCompensationLocalization/Variant9f0c019c48367f17eb3bb08ed8e6fca0401a7737cf7adc7ea91bf1929652fcd8.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c296e0e804a00a34f7100d49582abf1ab506ed2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
