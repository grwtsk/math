# one_div_one_sub_pow_hasFPowerSeriesOnBall_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b2201b68-6f62-08df-964c-0e3ce5208746",
  "kind": "theorem",
  "lexical_name": "one_div_one_sub_pow_hasFPowerSeriesOnBall_zero",
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
  "slug": "one-div-one-sub-pow-hasfpowerseriesonball-zero--65923e87fee6f0624cbbb9aa",
  "source": {
    "blob": "9621a5307a46a4cdccd35bf6435e45dd5058a973",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 173,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65923e87fee6f0624cbbb9aadbf70b4d7cb5881397441b2492462b830dac8caf",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2201b68-6f62-08df-964c-0e3ce5208746`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_div_one_sub_pow_hasFPowerSeriesOnBall_zero (a : ℕ) :
    HasFPowerSeriesOnBall (fun x ↦ 1 / (1 - x) ^ (a + 1))
      (.ofScalars ℂ (𝕜 := ℂ) fun n ↦ ↑(Nat.choose (a + n) a)) 0 1 := by
  convert one_div_one_sub_cpow_hasFPowerSeriesOnBall_zero (a + 1) with z n
  · norm_cast
  · rw [eq_comm, add_right_comm, add_sub_cancel_right, ← Nat.cast_add,
      Ring.choose_natCast, Nat.choose_symm_add]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9621a5307a46a4cdccd35bf6435e45dd5058a973` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
