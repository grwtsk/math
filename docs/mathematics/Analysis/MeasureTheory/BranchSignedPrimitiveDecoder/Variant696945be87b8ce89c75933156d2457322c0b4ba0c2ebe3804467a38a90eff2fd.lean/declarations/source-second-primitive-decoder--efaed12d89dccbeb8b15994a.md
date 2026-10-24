# source_second_primitive_decoder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f0e38b2-2f12-0c3e-009a-7962e132a955",
  "kind": "theorem",
  "lexical_name": "source_second_primitive_decoder",
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
  "slug": "source-second-primitive-decoder--efaed12d89dccbeb8b15994a",
  "source": {
    "blob": "fa2a69ac42b44cda1242a485f0a0f00ba1aacb4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 254,
    "path": "GRWTSK/Analysis/MeasureTheory/BranchSignedPrimitiveDecoder/Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efaed12d89dccbeb8b15994a25d40b053f8cb52bb75524578d3913a14baeeb96",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/BranchSignedPrimitiveDecoder/Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f0e38b2-2f12-0c3e-009a-7962e132a955`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_second_primitive_decoder {A t : ℝ} (hA : 1 ≤ A)
    (ht : 2 * Real.log A ≤ t) :
    (∫ u in (2 * Real.log A)..t, (t - u) * logDensity u) =
      mertens (A ^ 2) * secondWeight (A ^ 2) (Real.exp t) +
        ∑ n ∈ Finset.Ioc ⌊A ^ 2⌋₊ ⌊Real.exp t⌋₊, realMoebius n * secondWeight n (Real.exp t) := by
  have hA0 : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have he : Real.exp (2 * Real.log A) = A ^ 2 := by
    rw [show 2 * Real.log A = Real.log A + Real.log A by ring,
      Real.exp_add, Real.exp_log hA0]
    ring
  rw [← secondPrimitive_eq_log_integral, he]
  exact secondPrimitive_finite_decoder (sq_pos_of_pos hA0)
    (he ▸ Real.exp_le_exp.mpr ht)

end FormalResearch.RiemannHypothesis.BranchSignedPrimitiveDecoder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BranchSignedPrimitiveDecoder/Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BranchSignedPrimitiveDecoder/Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa2a69ac42b44cda1242a485f0a0f00ba1aacb4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
