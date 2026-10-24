# prod.instIsOpenPosMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:df562ccef52784dec9c51bf8c039c8f38af2ba6aab4528a8ffbfc6d7fa203125",
  "kind": "instance",
  "lexical_name": "prod.instIsOpenPosMeasure",
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
  "slug": "prod-instisopenposmeasure--541388439d1459534fec5a4f",
  "source": {
    "blob": "ec42012f3ef56d56a62b0b643e9b0dede2e15700",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 348,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variante50679355347a34d673b634646d9d8aaca61ae1d2f08f77b7f71b1d12f6ab1b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:541388439d1459534fec5a4f1dcc8fc12a28a0e35bc0bbf8ab4abf5d522b5d84",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variante50679355347a34d673b634646d9d8aaca61ae1d2f08f77b7f71b1d12f6ab1b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:df562ccef52784dec9c51bf8c039c8f38af2ba6aab4528a8ffbfc6d7fa203125`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance prod.instIsOpenPosMeasure {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
    {m : MeasurableSpace X} {μ : Measure X} [IsOpenPosMeasure μ] {m' : MeasurableSpace Y}
    {ν : Measure Y} [IsOpenPosMeasure ν] [SigmaFinite ν] : IsOpenPosMeasure (μ.prod ν) := by
  constructor
  rintro U U_open ⟨⟨x, y⟩, hxy⟩
  rcases isOpen_prod_iff.1 U_open x y hxy with ⟨u, v, u_open, v_open, xu, yv, huv⟩
  refine' ne_of_gt (lt_of_lt_of_le _ (measure_mono huv))
  simp only [prod_prod, CanonicallyOrderedCommSemiring.mul_pos]
  constructor
  · exact u_open.measure_pos μ ⟨x, xu⟩
  · exact v_open.measure_pos ν ⟨y, yv⟩
#align measure_theory.measure.prod.is_open_pos_measure MeasureTheory.Measure.prod.instIsOpenPosMeasure

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variante50679355347a34d673b634646d9d8aaca61ae1d2f08f77b7f71b1d12f6ab1b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variante50679355347a34d673b634646d9d8aaca61ae1d2f08f77b7f71b1d12f6ab1b3.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec42012f3ef56d56a62b0b643e9b0dede2e15700` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
