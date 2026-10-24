# trace_gen_eq_sum_roots

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de21b825-a897-3a38-c658-f0ed2c9f5b3b",
  "kind": "theorem",
  "lexical_name": "trace_gen_eq_sum_roots",
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
  "slug": "trace-gen-eq-sum-roots--c9b30d09c2c1dcac0f0659fb",
  "source": {
    "blob": "6e3d211175e9b586f92a694232d81f758880f0a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 278,
    "path": "GRWTSK/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9b30d09c2c1dcac0f0659fb0c5978ae0c973d7015868ee0f8a852162ea33a81",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de21b825-a897-3a38-c658-f0ed2c9f5b3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trace_gen_eq_sum_roots (x : L) (hf : (minpoly K x).Splits (algebraMap K F)) :
    algebraMap K F (trace K K⟮x⟯ (AdjoinSimple.gen K x)) =
      ((minpoly K x).map (algebraMap K F)).roots.sum := by
  have injKxL := (algebraMap K⟮x⟯ L).injective
  by_cases hx : IsIntegral K x; swap
  · simp [minpoly.eq_zero hx, trace_gen_eq_zero hx]
  have hx' : IsIntegral K (AdjoinSimple.gen K x) := by
    rwa [← isIntegral_algebraMap_iff injKxL, AdjoinSimple.algebraMap_gen]
  rw [← adjoin.powerBasis_gen hx, (adjoin.powerBasis hx).trace_gen_eq_sum_roots] <;>
      rw [adjoin.powerBasis_gen hx, minpoly.eq_of_algebraMap_eq injKxL hx'] <;>
    try simp only [AdjoinSimple.algebraMap_gen _ _]
  · exact hf
  · rfl
#align intermediate_field.adjoin_simple.trace_gen_eq_sum_roots IntermediateField.AdjoinSimple.trace_gen_eq_sum_roots

end IntermediateField.AdjoinSimple

open IntermediateField

variable (K)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e3d211175e9b586f92a694232d81f758880f0a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
