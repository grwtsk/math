# smulInvariantMeasure_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78b2ed7b-7307-b780-3a67-c09c7344d777",
  "kind": "theorem",
  "lexical_name": "smulInvariantMeasure_map",
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
  "slug": "smulinvariantmeasure-map--5db19f857ea0ddbd6e2c2d93",
  "source": {
    "blob": "63a05cdc8b6e89f9ee6afe4b1a41ae78fbf0b6d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 186,
    "path": "GRWTSK/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5db19f857ea0ddbd6e2c2d93e3f99627dfa2de0bb1c58a27aee5f36a23000cdd",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78b2ed7b-7307-b780-3a67-c09c7344d777`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smulInvariantMeasure_map [SMul M α] [SMul M β]
    [MeasurableSMul M β]
    (μ : Measure α) [SMulInvariantMeasure M α μ] (f : α → β)
    (hsmul : ∀ (m : M) a, f (m • a) = m • f a) (hf : Measurable f) :
    SMulInvariantMeasure M β (map f μ) where
  measure_preimage_smul m S hS := calc
    map f μ ((m • ·) ⁻¹' S)
    _ = μ (f ⁻¹' ((m • ·) ⁻¹' S)) := map_apply hf <| hS.preimage (measurable_const_smul _)
    _ = μ ((m • f ·) ⁻¹' S) := by rw [preimage_preimage]
    _ = μ ((f <| m • ·) ⁻¹' S) := by simp_rw [hsmul]
    _ = μ ((m • ·) ⁻¹' (f ⁻¹' S)) := by rw [← preimage_preimage]
    _ = μ (f ⁻¹' S) := by rw [SMulInvariantMeasure.measure_preimage_smul m (hS.preimage hf)]
    _ = map f μ S := (map_apply hf hS).symm

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63a05cdc8b6e89f9ee6afe4b1a41ae78fbf0b6d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
