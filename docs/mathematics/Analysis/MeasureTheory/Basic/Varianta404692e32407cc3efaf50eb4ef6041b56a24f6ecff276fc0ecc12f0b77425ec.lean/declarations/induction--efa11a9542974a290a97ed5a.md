# induction'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d163b9d-4321-9576-f1fb-9a57a5d0e1f6",
  "kind": "theorem",
  "lexical_name": "induction'",
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
  "slug": "induction--efa11a9542974a290a97ed5a",
  "source": {
    "blob": "387265fdfa927150926529b5ea6818f96cb354e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 870,
    "line": 852,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Varianta404692e32407cc3efaf50eb4ef6041b56a24f6ecff276fc0ecc12f0b77425ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efa11a9542974a290a97ed5a4ec42e09fe584f90171361db2fce41320b096d2c",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Varianta404692e32407cc3efaf50eb4ef6041b56a24f6ecff276fc0ecc12f0b77425ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d163b9d-4321-9576-f1fb-9a57a5d0e1f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 852–870.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem induction' [MeasurableSpace α] [Nonempty β] [TopologicalSpace β]
    {P : (f : α → β) → StronglyMeasurable f → Prop}
    (const : ∀ (c), P (fun _ ↦ c) stronglyMeasurable_const)
    (pcw : ∀ ⦃f g : α → β⦄ {s} (hf : StronglyMeasurable f) (hg : StronglyMeasurable g)
      (hs : MeasurableSet s), P f hf → P g hg → P (s.piecewise f g) (hf.piecewise hs hg))
    (lim : ∀ ⦃f : ℕ → α → β⦄ ⦃g : α → β⦄ (hf : ∀ n, StronglyMeasurable (f n))
      (hg : StronglyMeasurable g), (∀ n, P (f n) (hf n)) →
      (∀ x, Tendsto (f · x) atTop (𝓝 (g x))) → P g hg)
    (f : α → β) (hf : StronglyMeasurable f) : P f hf := by
  let s := hf.approx
  refine lim (fun n ↦ (s n).stronglyMeasurable) hf (fun n ↦ ?_) hf.tendsto_approx
  change P (s n) (s n).stronglyMeasurable
  induction s n with
  | const c => exact const c
  | @pcw f g s hs Pf Pg =>
    simp_rw [SimpleFunc.coe_piecewise]
    exact pcw f.stronglyMeasurable g.stronglyMeasurable hs Pf Pg

@[fun_prop, aesop safe 20 apply (rule_sets := [Measurable])]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Varianta404692e32407cc3efaf50eb4ef6041b56a24f6ecff276fc0ecc12f0b77425ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Varianta404692e32407cc3efaf50eb4ef6041b56a24f6ecff276fc0ecc12f0b77425ec.lean#L852).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `387265fdfa927150926529b5ea6818f96cb354e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
