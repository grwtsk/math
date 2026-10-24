# measurableSet_eq_fun'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90596549-3507-6252-f5be-92b0dd57cc57",
  "kind": "lemma",
  "lexical_name": "measurableSet_eq_fun'",
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
  "slug": "measurableset-eq-fun--407c67ee03ecf75cd5fe09eb",
  "source": {
    "blob": "5d6578ea38ce5370416650f411568720d058e5d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 322,
    "path": "GRWTSK/Analysis/MeasureTheory/Arithmetic/Variant967c97273abde5bda46c5edce2020e50625947910a6b997239493a9f5936d0ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:407c67ee03ecf75cd5fe09ebf2b00771779d488f9920057a2b4add5f76e8a2fd",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Arithmetic/Variant967c97273abde5bda46c5edce2020e50625947910a6b997239493a9f5936d0ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90596549-3507-6252-f5be-92b0dd57cc57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measurableSet_eq_fun' {β : Type*} [AddCommMonoid β] [PartialOrder β]
    [CanonicallyOrderedAdd β] [Sub β] [OrderedSub β]
    {_ : MeasurableSpace β} [MeasurableSub₂ β] [MeasurableSingletonClass β]
    {f g : α → β} (hf : Measurable f) (hg : Measurable g) :
    MeasurableSet {x | f x = g x} := by
  have : {a | f a = g a} = {a | (f - g) a = 0} ∩ {a | (g - f) a = 0} := by
    ext
    simp only [Set.mem_setOf_eq, Pi.sub_apply, tsub_eq_zero_iff_le, Set.mem_inter_iff]
    exact ⟨fun h ↦ ⟨h.le, h.symm.le⟩, fun h ↦ le_antisymm h.1 h.2⟩
  rw [this]
  exact ((hf.sub hg) (measurableSet_singleton 0)).inter ((hg.sub hf) (measurableSet_singleton 0))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Arithmetic/Variant967c97273abde5bda46c5edce2020e50625947910a6b997239493a9f5936d0ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Arithmetic/Variant967c97273abde5bda46c5edce2020e50625947910a6b997239493a9f5936d0ca.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d6578ea38ce5370416650f411568720d058e5d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
