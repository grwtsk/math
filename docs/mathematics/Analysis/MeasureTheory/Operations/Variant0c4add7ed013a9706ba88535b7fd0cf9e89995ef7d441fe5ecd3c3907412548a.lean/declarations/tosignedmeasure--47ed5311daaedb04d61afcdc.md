# toSignedMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50cf4b3fda13b05038ab056b50f56fc2ee0cbeff6314579cfc89c2bd1093e043",
  "kind": "def",
  "lexical_name": "toSignedMeasure",
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
  "slug": "tosignedmeasure--47ed5311daaedb04d61afcdc",
  "source": {
    "blob": "7552b4b019c573d02b4aede0a3abe8f2e1f7fbc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 44,
    "path": "GRWTSK/Analysis/MeasureTheory/Operations/Variant0c4add7ed013a9706ba88535b7fd0cf9e89995ef7d441fe5ecd3c3907412548a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:47ed5311daaedb04d61afcdc204d31e37f234e94ade4b8f8f0d4e34a6041044e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Operations/Variant0c4add7ed013a9706ba88535b7fd0cf9e89995ef7d441fe5ecd3c3907412548a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50cf4b3fda13b05038ab056b50f56fc2ee0cbeff6314579cfc89c2bd1093e043`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toSignedMeasure (μ : Measure α) [hμ : IsFiniteMeasure μ] : SignedMeasure α where
  measureOf' s := if MeasurableSet s then μ.real s else 0
  empty' := by simp
  not_measurable' _ hi := ite_eq_right hi
  m_iUnion' f hf₁ hf₂ := by
    simp only [*, MeasurableSet.iUnion hf₁, ite_true, measure_iUnion hf₂ hf₁, measureReal_def]
    rw [ENNReal.tsum_toReal_eq]
    exacts [(summable_measure_toReal hf₁ hf₂).hasSum, fun _ ↦ measure_ne_top _ _]

open scoped Classical in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Operations/Variant0c4add7ed013a9706ba88535b7fd0cf9e89995ef7d441fe5ecd3c3907412548a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Operations/Variant0c4add7ed013a9706ba88535b7fd0cf9e89995ef7d441fe5ecd3c3907412548a.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7552b4b019c573d02b4aede0a3abe8f2e1f7fbc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
