# apply_eq_zero_of_lt_order

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f659d4a-20c8-9f36-7942-a327625c7882",
  "kind": "theorem",
  "lexical_name": "apply_eq_zero_of_lt_order",
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
  "slug": "apply-eq-zero-of-lt-order--88fb9bd675f350f509152edf",
  "source": {
    "blob": "95a2149b118693b82e7f9b61c15683e635b11dd7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 260,
    "path": "GRWTSK/Analysis/FormalMultilinearSeries/Variant8200536d5b35e37e374426b6299f5f2fcf2ed0b33019f4fd15a65f3f10184957.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88fb9bd675f350f509152edf8d9bbffd4bc89b911d090a546243aa20dfff1a03",
  "verification": {
    "reference": "docs/verification/Analysis/FormalMultilinearSeries/Variant8200536d5b35e37e374426b6299f5f2fcf2ed0b33019f4fd15a65f3f10184957.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f659d4a-20c8-9f36-7942-a327625c7882`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem apply_eq_zero_of_lt_order (hp : n < p.order) : p n = 0 :=
  by_contra <| Nat.not_mem_of_lt_sInf hp
#align formal_multilinear_series.apply_eq_zero_of_lt_order FormalMultilinearSeries.apply_eq_zero_of_lt_order

end Order

section Coef

variable [NontriviallyNormedField 𝕜] [NormedAddCommGroup E] [NormedSpace 𝕜 E] {s : E}
  {p : FormalMultilinearSeries 𝕜 𝕜 E} {f : 𝕜 → E} {n : ℕ} {z z₀ : 𝕜} {y : Fin n → 𝕜}

open BigOperators

/-- The `n`th coefficient of `p` when seen as a power series. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/FormalMultilinearSeries/Variant8200536d5b35e37e374426b6299f5f2fcf2ed0b33019f4fd15a65f3f10184957.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FormalMultilinearSeries/Variant8200536d5b35e37e374426b6299f5f2fcf2ed0b33019f4fd15a65f3f10184957.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95a2149b118693b82e7f9b61c15683e635b11dd7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
