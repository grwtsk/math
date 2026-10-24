# invariants

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:625d32738cf0d9e4352fdf263b0878553c1cede25532ed0ba9b33e742919ef25",
  "kind": "def",
  "lexical_name": "invariants",
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
  "slug": "invariants--b5402f32dd06e827ef6b1740",
  "source": {
    "blob": "98c60029a276f34d8933e5f61a904332a9068124",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 36,
    "path": "GRWTSK/Analysis/MeasureTheory/Invariants/Variantc63f36cdcd8dca2ca9056dfbcd8f5af3cdd632c6661bcfea63be1f3fba15e0d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b5402f32dd06e827ef6b1740bc0d0bd342f6844bae25e96344bc8cb9f0185615",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Invariants/Variantc63f36cdcd8dca2ca9056dfbcd8f5af3cdd632c6661bcfea63be1f3fba15e0d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:625d32738cf0d9e4352fdf263b0878553c1cede25532ed0ba9b33e742919ef25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def invariants [m : MeasurableSpace α] (f : α → α) : MeasurableSpace α :=
  { m ⊓ ⟨fun s ↦ f ⁻¹' s = s, by simp, by simp, fun f hf ↦ by simp [hf]⟩ with
    MeasurableSet' := fun s ↦ MeasurableSet[m] s ∧ f ⁻¹' s = s }

variable [MeasurableSpace α]

/-- A set `s` is `(invariants f)`-measurable
iff it is meaurable w.r.t. the canonical σ-algebra on `α` and `f ⁻¹' s = s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Invariants/Variantc63f36cdcd8dca2ca9056dfbcd8f5af3cdd632c6661bcfea63be1f3fba15e0d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Invariants/Variantc63f36cdcd8dca2ca9056dfbcd8f5af3cdd632c6661bcfea63be1f3fba15e0d1.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98c60029a276f34d8933e5f61a904332a9068124` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
