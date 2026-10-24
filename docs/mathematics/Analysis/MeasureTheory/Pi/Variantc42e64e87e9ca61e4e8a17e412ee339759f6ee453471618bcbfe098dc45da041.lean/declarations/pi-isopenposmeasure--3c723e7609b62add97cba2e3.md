# pi.isOpenPosMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b2c07e45f127907cc8a882d1806b4c40c834f76880d1f0bb934e52361c7bf6fd",
  "kind": "instance",
  "lexical_name": "pi.isOpenPosMeasure",
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
  "slug": "pi-isopenposmeasure--3c723e7609b62add97cba2e3",
  "source": {
    "blob": "2a62c773222f631197270b3ac84ea3efaf728458",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 624,
    "line": 614,
    "path": "GRWTSK/Analysis/MeasureTheory/Pi/Variantc42e64e87e9ca61e4e8a17e412ee339759f6ee453471618bcbfe098dc45da041.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c723e7609b62add97cba2e35c1cdbcd686d6f0c824d116cc7090eb61958cccb",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Pi/Variantc42e64e87e9ca61e4e8a17e412ee339759f6ee453471618bcbfe098dc45da041.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b2c07e45f127907cc8a882d1806b4c40c834f76880d1f0bb934e52361c7bf6fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 614–624.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance pi.isOpenPosMeasure [∀ i, TopologicalSpace (α i)] [∀ i, IsOpenPosMeasure (μ i)] :
    IsOpenPosMeasure (MeasureTheory.Measure.pi μ) := by
  constructor
  rintro U U_open ⟨a, ha⟩
  obtain ⟨s, ⟨hs, hsU⟩⟩ := isOpen_pi_iff'.1 U_open a ha
  refine ne_of_gt (lt_of_lt_of_le ?_ (measure_mono hsU))
  simp only [pi_pi]
  rw [CanonicallyOrderedAdd.prod_pos]
  intro i _
  apply (hs i).1.measure_pos (μ i) ⟨a i, (hs i).2⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Pi/Variantc42e64e87e9ca61e4e8a17e412ee339759f6ee453471618bcbfe098dc45da041.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Pi/Variantc42e64e87e9ca61e4e8a17e412ee339759f6ee453471618bcbfe098dc45da041.lean#L614).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a62c773222f631197270b3ac84ea3efaf728458` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
