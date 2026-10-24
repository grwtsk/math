# integral_integral_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70e21a0e-bc4f-6606-f69e-7738767cf7ac",
  "kind": "theorem",
  "lexical_name": "integral_integral_smul",
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
  "slug": "integral-integral-smul--95500a8d4d8e342d47b5e5e2",
  "source": {
    "blob": "ccbd4a15c5845619bac6d506fe64148062840dfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 422,
    "line": 416,
    "path": "GRWTSK/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95500a8d4d8e342d47b5e5e214fd8da3de67e5aa1e67734528abfbb8792b8963",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70e21a0e-bc4f-6606-f69e-7738767cf7ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 416–422.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_integral_smul [CompleteSpace F] {B : E →L[ℝ] F →L[ℝ] H}
    [IsFiniteMeasure ν.variation] [IsFiniteMeasure μ.variation]
    {f : X → Y → ℝ} (hf : Integrable (uncurry f) (μ.variation.prod ν.variation)) :
    ∫ᵛ x, (∫ᵛ y, f x y ∂•ν) ∂[B.flip; μ] = ∫ᵛ z, f z.1 z.2 ∂•(μ.prod ν B) :=
  (integral_prod_smul hf).symm

/-- Reversed version of **Fubini's Theorem** (symmetric version). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean#L416).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccbd4a15c5845619bac6d506fe64148062840dfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
