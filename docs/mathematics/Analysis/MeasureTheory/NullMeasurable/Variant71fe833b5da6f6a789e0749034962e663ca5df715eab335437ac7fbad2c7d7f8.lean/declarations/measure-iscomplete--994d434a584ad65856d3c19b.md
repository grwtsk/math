# Measure.IsComplete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2504843134e93a82dfc1089c4831802ac77eaadcd36793a2db3fcb543eee5f3c",
  "kind": "class",
  "lexical_name": "Measure.IsComplete",
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
  "slug": "measure-iscomplete--994d434a584ad65856d3c19b",
  "source": {
    "blob": "093d65b73a744a094182289d1e3573a3995b8d4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 450,
    "line": 445,
    "path": "GRWTSK/Analysis/MeasureTheory/NullMeasurable/Variant71fe833b5da6f6a789e0749034962e663ca5df715eab335437ac7fbad2c7d7f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:994d434a584ad65856d3c19b9d020c05442020b00ce893e15854054b3aaafa8f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/NullMeasurable/Variant71fe833b5da6f6a789e0749034962e663ca5df715eab335437ac7fbad2c7d7f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2504843134e93a82dfc1089c4831802ac77eaadcd36793a2db3fcb543eee5f3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 445–450.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class Measure.IsComplete {_ : MeasurableSpace α} (μ : Measure α) : Prop where
  out' : ∀ s, μ s = 0 → MeasurableSet s
#align measure_theory.measure.is_complete MeasureTheory.Measure.IsComplete

variable {m0 : MeasurableSpace α} {μ : Measure α} {s t : Set α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/NullMeasurable/Variant71fe833b5da6f6a789e0749034962e663ca5df715eab335437ac7fbad2c7d7f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/NullMeasurable/Variant71fe833b5da6f6a789e0749034962e663ca5df715eab335437ac7fbad2c7d7f8.lean#L445).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `093d65b73a744a094182289d1e3573a3995b8d4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
