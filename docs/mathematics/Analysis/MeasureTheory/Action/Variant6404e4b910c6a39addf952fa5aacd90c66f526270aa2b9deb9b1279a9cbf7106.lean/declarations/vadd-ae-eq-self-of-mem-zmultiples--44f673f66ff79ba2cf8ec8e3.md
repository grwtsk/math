# vadd_ae_eq_self_of_mem_zmultiples

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c79edd0-eb47-aac8-2f14-9f9e5a2e322a",
  "kind": "theorem",
  "lexical_name": "vadd_ae_eq_self_of_mem_zmultiples",
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
  "slug": "vadd-ae-eq-self-of-mem-zmultiples--44f673f66ff79ba2cf8ec8e3",
  "source": {
    "blob": "8385a29014b00306f92d2f13598cb6134846a1f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 285,
    "path": "GRWTSK/Analysis/MeasureTheory/Action/Variant6404e4b910c6a39addf952fa5aacd90c66f526270aa2b9deb9b1279a9cbf7106.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44f673f66ff79ba2cf8ec8e33c5c4fa9fd41ffa15b80bbfb21dd51ffa5c8aa1c",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Action/Variant6404e4b910c6a39addf952fa5aacd90c66f526270aa2b9deb9b1279a9cbf7106.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c79edd0-eb47-aac8-2f14-9f9e5a2e322a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vadd_ae_eq_self_of_mem_zmultiples {G : Type u} {α : Type w} {s : Set α}
    {m : MeasurableSpace α} [AddGroup G] [AddAction G α] [MeasurableSpace G] [MeasurableVAdd G α]
    {μ : Measure α} [VAddInvariantMeasure G α μ] {x y : G}
    (hs : (x +ᵥ s : Set α) =ᵐ[μ] s) (hy : y ∈ AddSubgroup.zmultiples x) :
    (y +ᵥ s : Set α) =ᵐ[μ] s := by
  letI : MeasurableSpace (Multiplicative G) := (inferInstanceAs (MeasurableSpace G))
  letI : SMulInvariantMeasure (Multiplicative G) α μ :=
    ⟨fun g => VAddInvariantMeasure.measure_preimage_vadd (Multiplicative.toAdd g)⟩
  letI : MeasurableSMul (Multiplicative G) α :=
    { measurable_const_smul := fun g => measurable_const_vadd (Multiplicative.toAdd g)
      measurable_smul_const := fun a =>
        @measurable_vadd_const (Multiplicative G) α (inferInstanceAs (VAdd G α)) _ _
          (inferInstanceAs (MeasurableVAdd G α)) a }
  exact @smul_ae_eq_self_of_mem_zpowers (Multiplicative G) α _ _ _ _ _ _ _ _ _ _ hs hy
#align measure_theory.vadd_ae_eq_self_of_mem_zmultiples MeasureTheory.vadd_ae_eq_self_of_mem_zmultiples

attribute [to_additive existing vadd_ae_eq_self_of_mem_zmultiples] smul_ae_eq_self_of_mem_zpowers

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Action/Variant6404e4b910c6a39addf952fa5aacd90c66f526270aa2b9deb9b1279a9cbf7106.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Action/Variant6404e4b910c6a39addf952fa5aacd90c66f526270aa2b9deb9b1279a9cbf7106.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8385a29014b00306f92d2f13598cb6134846a1f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
