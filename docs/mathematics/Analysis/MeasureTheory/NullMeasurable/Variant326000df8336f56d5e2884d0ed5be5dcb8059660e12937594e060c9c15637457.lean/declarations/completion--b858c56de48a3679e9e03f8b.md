# completion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8e31294d9f29803af03ffc61e757a4c0af523f29e260f7e443ab52221cff901a",
  "kind": "def",
  "lexical_name": "completion",
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
  "slug": "completion--b858c56de48a3679e9e03f8b",
  "source": {
    "blob": "114f14d2c1a5a560139b889353edd6e6b223808f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 504,
    "line": 491,
    "path": "GRWTSK/Analysis/MeasureTheory/NullMeasurable/Variant326000df8336f56d5e2884d0ed5be5dcb8059660e12937594e060c9c15637457.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b858c56de48a3679e9e03f8b28be03a4b7bb5254f9359dea472264fe1f516acf",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/NullMeasurable/Variant326000df8336f56d5e2884d0ed5be5dcb8059660e12937594e060c9c15637457.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8e31294d9f29803af03ffc61e757a4c0af523f29e260f7e443ab52221cff901a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 491–504.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def completion {_ : MeasurableSpace α} (μ : Measure α) :
    @MeasureTheory.Measure (NullMeasurableSpace α μ) _ where
  toOuterMeasure := μ.toOuterMeasure
  m_iUnion s hs hd := measure_iUnion₀ (hd.mono fun i j h => h.aedisjoint) hs
  trimmed := by
    refine' le_antisymm (fun s => _)
      (@OuterMeasure.le_trim (NullMeasurableSpace α μ) _ _)
    rw [@OuterMeasure.trim_eq_iInf (NullMeasurableSpace α μ) _];
    have : ∀ s, μ.toOuterMeasure s = μ s := by simp only [forall_const]
    rw [this, measure_eq_iInf]
    apply iInf₂_mono
    exact fun t _ht => iInf_mono' fun h => ⟨MeasurableSet.nullMeasurableSet h, le_rfl⟩
#align measure_theory.measure.completion MeasureTheory.Measure.completion

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/NullMeasurable/Variant326000df8336f56d5e2884d0ed5be5dcb8059660e12937594e060c9c15637457.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/NullMeasurable/Variant326000df8336f56d5e2884d0ed5be5dcb8059660e12937594e060c9c15637457.lean#L491).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `114f14d2c1a5a560139b889353edd6e6b223808f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
