# measurable_kernel_prod_mk_left'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae3d7ebc-c3fd-9708-4144-d6964ff1b0b1",
  "kind": "theorem",
  "lexical_name": "measurable_kernel_prod_mk_left'",
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
  "slug": "measurable-kernel-prod-mk-left--909d3920d38313178c2a6724",
  "source": {
    "blob": "54b74624ab94545e380da27bb24f049d4b10958c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 119,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasurableIntegral/Variante9cc3e547e7a6f9171285961aa55b97b683e4adce075ce1bb76a132c2b649e97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:909d3920d38313178c2a67241c918c562da7856d026a61cff57dbd87a8aee034",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MeasurableIntegral/Variante9cc3e547e7a6f9171285961aa55b97b683e4adce075ce1bb76a132c2b649e97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae3d7ebc-c3fd-9708-4144-d6964ff1b0b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurable_kernel_prod_mk_left' [IsSFiniteKernel η] {s : Set (β × γ)} (hs : MeasurableSet s)
    (a : α) : Measurable fun b => η (a, b) (Prod.mk b ⁻¹' s) := by
  have : ∀ b, Prod.mk b ⁻¹' s = {c | ((a, b), c) ∈ {p : (α × β) × γ | (p.1.2, p.2) ∈ s}} := by
    intro b; rfl
  simp_rw [this]
  refine' (measurable_kernel_prod_mk_left _).comp measurable_prod_mk_left
  exact (measurable_fst.snd.prod_mk measurable_snd) hs
#align probability_theory.kernel.measurable_kernel_prod_mk_left' ProbabilityTheory.kernel.measurable_kernel_prod_mk_left'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasurableIntegral/Variante9cc3e547e7a6f9171285961aa55b97b683e4adce075ce1bb76a132c2b649e97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasurableIntegral/Variante9cc3e547e7a6f9171285961aa55b97b683e4adce075ce1bb76a132c2b649e97.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54b74624ab94545e380da27bb24f049d4b10958c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
