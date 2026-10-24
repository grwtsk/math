# normalizedTrace_trans_apply_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc9e33a5-0148-b5e5-4ef6-6807d1dc8e28",
  "kind": "theorem",
  "lexical_name": "normalizedTrace_trans_apply_aux",
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
  "slug": "normalizedtrace-trans-apply-aux--810a8238d82e9218b952fdf6",
  "source": {
    "blob": "665dd20ba8c0d7972d58627cfb325be0782f59b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 189,
    "path": "GRWTSK/Algebra/NormalizedTrace/Variantdbaab852b0dc915a51c84faa67611385c4068e433a47752a58970a699ebabe41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:810a8238d82e9218b952fdf6ec1fd68850b7e3309065eb2e3bf71fdac86dea82",
  "verification": {
    "reference": "docs/verification/Algebra/NormalizedTrace/Variantdbaab852b0dc915a51c84faa67611385c4068e433a47752a58970a699ebabe41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc9e33a5-0148-b5e5-4ef6-6807d1dc8e28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem normalizedTrace_trans_apply_aux [FiniteDimensional F E] [Algebra.IsIntegral E K]
    [CharZero E] (a : K) :
    normalizedTrace F E (normalizedTrace E K a) = normalizedTrace F K a := by
  have : FiniteDimensional E E⟮a⟯ :=
    IntermediateField.adjoin.finiteDimensional (IsIntegral.isIntegral a)
  rw [normalizedTrace_def E K, inv_natCast_smul_eq (R := E) (S := F), map_smul,
    normalizedTrace_eq_of_fininteDimensional F E, LinearMap.smul_apply, ← smul_assoc,
    smul_eq_mul (a := _⁻¹), ← mul_inv, trace_trace, mul_comm,
    ← Nat.cast_mul, Module.finrank_mul_finrank, eq_comm]
  let E' := E⟮a⟯.restrictScalars F
  have : FiniteDimensional F E' := Module.Finite.trans E E⟮a⟯
  have h_finrank_eq : Module.finrank F E⟮a⟯ = Module.finrank F E' := rfl
  have h_trace_eq : trace F E⟮a⟯ (AdjoinSimple.gen E a) = trace F E' (AdjoinSimple.gen E a : E') :=
    rfl
  let a' : E' := AdjoinSimple.gen E a
  rw [h_finrank_eq, h_trace_eq, ← normalizedTrace_eq_of_fininteDimensional_apply F,
    ← normalizedTrace_intermediateField F K a']
  congr

/-- For a tower `K / E / F` of algebraic extensions, the normalized trace from `K` to `E` composed
with the normalized trace from `E` to `F` equals the normalized trace from `K` to `F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/NormalizedTrace/Variantdbaab852b0dc915a51c84faa67611385c4068e433a47752a58970a699ebabe41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/NormalizedTrace/Variantdbaab852b0dc915a51c84faa67611385c4068e433a47752a58970a699ebabe41.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `665dd20ba8c0d7972d58627cfb325be0782f59b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
