# abs_log_mul_self_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:326b680f-77af-86d4-65e6-22564cb43248",
  "kind": "theorem",
  "lexical_name": "abs_log_mul_self_lt",
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
  "slug": "abs-log-mul-self-lt--25e829d4e9789720b56c21a0",
  "source": {
    "blob": "192a9b92912b130a9f9ab5782632889268de615a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 332,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantd171aaf2028ba28b41613020fff5ec0911a355f55218ff018bda0957794f66f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25e829d4e9789720b56c21a0168344cb8ea138944642c5602d00f29c61abad08",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantd171aaf2028ba28b41613020fff5ec0911a355f55218ff018bda0957794f66f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:326b680f-77af-86d4-65e6-22564cb43248`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_log_mul_self_lt (x : ℝ) (h1 : 0 < x) (h2 : x ≤ 1) : |log x * x| < 1 := by
  have : 0 < 1 / x := by simpa only [one_div, inv_pos] using h1
  replace := log_le_sub_one_of_pos this
  replace : log (1 / x) < 1 / x := by linarith
  rw [log_div one_ne_zero h1.ne', log_one, zero_sub, lt_div_iff h1] at this
  have aux : 0 ≤ -log x * x := by
    refine' mul_nonneg _ h1.le
    rw [← log_inv]
    apply log_nonneg
    rw [← le_inv h1 zero_lt_one, inv_one]
    exact h2
  rw [← abs_of_nonneg aux, neg_mul, abs_neg] at this
  exact this
#align real.abs_log_mul_self_lt Real.abs_log_mul_self_lt

/-- The real logarithm function tends to `+∞` at `+∞`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantd171aaf2028ba28b41613020fff5ec0911a355f55218ff018bda0957794f66f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantd171aaf2028ba28b41613020fff5ec0911a355f55218ff018bda0957794f66f0.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `192a9b92912b130a9f9ab5782632889268de615a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
