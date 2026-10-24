# resolventMassKernel_nonneg_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d674ee23-cc18-348c-0c43-dcef22c770ab",
  "kind": "theorem",
  "lexical_name": "resolventMassKernel_nonneg_le_one",
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
  "slug": "resolventmasskernel-nonneg-le-one--ed058ddbfa12544ad97b6e0b",
  "source": {
    "blob": "4b7ee7a50a396f87be2421f957aa67942b38f72d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 33,
    "path": "GRWTSK/Analysis/MeasureTheory/SpectralMeasureAtom/Variant4fd9808d8cc9a2f2871e74ca09119a4b8721c165f26bb4639deac0e0d9adc2a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed058ddbfa12544ad97b6e0b081623a10599c5639b47067e0e7b0dca1e091c4e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SpectralMeasureAtom/Variant4fd9808d8cc9a2f2871e74ca09119a4b8721c165f26bb4639deac0e0d9adc2a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d674ee23-cc18-348c-0c43-dcef22c770ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem resolventMassKernel_nonneg_le_one (α : ℝ) (hα : 0 < α) (x : ℝ≥0) :
    0 ≤ resolventMassKernel α x ∧ resolventMassKernel α x ≤ 1 := by
  have hd : 0 < (x : ℝ) + α := add_pos_of_nonneg_of_pos x.coe_nonneg hα
  constructor
  · exact div_nonneg hα.le hd.le
  · exact (div_le_one hd).2 (le_add_of_nonneg_left x.coe_nonneg)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SpectralMeasureAtom/Variant4fd9808d8cc9a2f2871e74ca09119a4b8721c165f26bb4639deac0e0d9adc2a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SpectralMeasureAtom/Variant4fd9808d8cc9a2f2871e74ca09119a4b8721c165f26bb4639deac0e0d9adc2a2.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b7ee7a50a396f87be2421f957aa67942b38f72d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
