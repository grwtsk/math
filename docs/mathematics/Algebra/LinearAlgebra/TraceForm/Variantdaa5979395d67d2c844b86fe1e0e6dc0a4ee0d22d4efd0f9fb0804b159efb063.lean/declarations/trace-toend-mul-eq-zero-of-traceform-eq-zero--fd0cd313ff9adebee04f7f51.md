# trace_toEnd_mul_eq_zero_of_traceForm_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae104fac-ac5c-7179-5c10-413861001d64",
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
  "slug": "trace-toend-mul-eq-zero-of-traceform-eq-zero--fd0cd313ff9adebee04f7f51",
  "source": {
    "blob": "91d80465789ad234c4fed4a843899231d82f8a46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 126,
    "path": "GRWTSK/Algebra/LinearAlgebra/TraceForm/Variantdaa5979395d67d2c844b86fe1e0e6dc0a4ee0d22d4efd0f9fb0804b159efb063.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd0cd313ff9adebee04f7f51690d8e1376b34f5932564e408512df6eeb8e9dbe",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TraceForm/Variantdaa5979395d67d2c844b86fe1e0e6dc0a4ee0d22d4efd0f9fb0804b159efb063.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae104fac-ac5c-7179-5c10-413861001d64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–145.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TraceForm/Variantdaa5979395d67d2c844b86fe1e0e6dc0a4ee0d22d4efd0f9fb0804b159efb063.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TraceForm/Variantdaa5979395d67d2c844b86fe1e0e6dc0a4ee0d22d4efd0f9fb0804b159efb063.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91d80465789ad234c4fed4a843899231d82f8a46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
