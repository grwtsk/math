# addHaar_affineSubspace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "58e8db04a65a8f78caaa702d66a5ebab016edb0b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 199,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6c224cd565104f7f921deb1c00d43f25d94cb41ee0b07f1c924b3b985fdcb46d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2c20892f-9ed0-afe7-15d2-1ceac926cb0b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d3cca44c-1205-8a11-6ece-2115ee461fb0",
  "kind": "theorem",
  "lexical_name": "addHaar_affineSubspace",
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
  "slug": "addhaar-affinesubspace--356635bb7b2fca0626efd94e",
  "source": {
    "blob": "58e8db04a65a8f78caaa702d66a5ebab016edb0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 199,
    "path": "GRWTSK/Topology/GeneralTopology/EqHaar/Variant6c224cd565104f7f921deb1c00d43f25d94cb41ee0b07f1c924b3b985fdcb46d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:356635bb7b2fca0626efd94e1bef5df7f4ec41f718b760a70e3b2f74ade33372",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EqHaar/Variant6c224cd565104f7f921deb1c00d43f25d94cb41ee0b07f1c924b3b985fdcb46d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3cca44c-1205-8a11-6ece-2115ee461fb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem addHaar_affineSubspace {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    [MeasurableSpace E] [BorelSpace E] [FiniteDimensional ℝ E] (μ : Measure E) [IsAddHaarMeasure μ]
    (s : AffineSubspace ℝ E) (hs : s ≠ ⊤) : μ s = 0 := by
  rcases s.eq_bot_or_nonempty with (rfl | hne)
  · rw [AffineSubspace.bot_coe, measure_empty]
  rw [Ne, ← AffineSubspace.direction_eq_top_iff_of_nonempty hne] at hs
  rcases hne with ⟨x, hx : x ∈ s⟩
  simpa only [AffineSubspace.coe_direction_eq_vsub_set_right hx, vsub_eq_sub, sub_eq_add_neg,
    image_add_right, neg_neg, measure_preimage_add_right] using addHaar_submodule μ s.direction hs

/-!
### Applying a linear map rescales Haar measure by the determinant

We first prove this on `ι → ℝ`, using that this is already known for the product Lebesgue
measure (thanks to matrices computations). Then, we extend this to any finite-dimensional real
vector space by using a linear equiv with a space of the form `ι → ℝ`, and arguing that such a
linear equiv maps Haar measure to Haar measure.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EqHaar/Variant6c224cd565104f7f921deb1c00d43f25d94cb41ee0b07f1c924b3b985fdcb46d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EqHaar/Variant6c224cd565104f7f921deb1c00d43f25d94cb41ee0b07f1c924b3b985fdcb46d.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58e8db04a65a8f78caaa702d66a5ebab016edb0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
