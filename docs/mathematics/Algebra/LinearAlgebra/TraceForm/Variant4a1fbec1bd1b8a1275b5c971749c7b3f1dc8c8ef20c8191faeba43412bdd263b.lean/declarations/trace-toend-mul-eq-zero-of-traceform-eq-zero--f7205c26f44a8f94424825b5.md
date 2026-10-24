# trace_toEnd_mul_eq_zero_of_traceForm_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e4d61758f64d289935127f8992d689b242c9fdd8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2b060ee3-5eac-9d73-ff05-e969b6a724f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9aef1395-b952-fa3e-e69f-4daf9aaa33ed",
  "kind": "lemma",
  "lexical_name": "trace_toEnd_mul_eq_zero_of_traceForm_eq_zero",
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
  "slug": "trace-toend-mul-eq-zero-of-traceform-eq-zero--f7205c26f44a8f94424825b5",
  "source": {
    "blob": "e4d61758f64d289935127f8992d689b242c9fdd8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 118,
    "path": "GRWTSK/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7205c26f44a8f94424825b5aa248c7dcd9f47b25c2870e238abc9ba7f01dd2b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9aef1395-b952-fa3e-e69f-4daf9aaa33ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma trace_toEnd_mul_eq_zero_of_traceForm_eq_zero (h : traceForm R L M = 0)
    (y : End R M) (hy : ∀ z ∈ LieHom.range φ, ⁅y, z⁆ ∈ LieHom.range φ)
    (x : L) (hx : x ∈ LieAlgebra.derivedSeries R L 1) :
    trace R M (φ x * y) = 0 := by
  replace hx : x ∈ Submodule.span R {⁅u, v⁆ | (u : L) (v : L)} := by
    rw [← LieAlgebra.coe_derivedSeries_one_eq]; exact hx
  induction hx using Submodule.span_induction with
  | mem u hu =>
    obtain ⟨a, b, rfl⟩ := hu
    obtain ⟨c : L, hbc : φ c = ⁅y, φ b⁆⟩ := hy (φ b) (LieHom.mem_range_self φ b)
    replace hbc : ⁅φ b, y⁆ = -φ c := by rw [hbc, Module.End.instLieRingModule_eq, lie_skew]
    rw [LieHom.map_lie, LinearMap.trace_lie_mul_eq, Ring.lie_def,
      ← LieRing.of_associative_ring_bracket, hbc, mul_neg, map_neg, neg_eq_zero,
      Module.End.mul_eq_comp, ← traceForm_apply_apply, h, LinearMap.zero_apply,
      LinearMap.zero_apply]
  | zero => simp
  | add u v _ _ hu hv => simp [add_mul, hu, hv]
  | smul t u _ hu => simp [hu]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4d61758f64d289935127f8992d689b242c9fdd8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
