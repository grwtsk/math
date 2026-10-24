# tendsto_pow_log_div_mul_add_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9e08b32-b0ba-a360-a5f4-3a2c1921ba4e",
  "kind": "theorem",
  "lexical_name": "tendsto_pow_log_div_mul_add_atTop",
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
  "slug": "tendsto-pow-log-div-mul-add-attop--3a6c737cf75d0a1b2cd78229",
  "source": {
    "blob": "192a9b92912b130a9f9ab5782632889268de615a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 416,
    "line": 411,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantd171aaf2028ba28b41613020fff5ec0911a355f55218ff018bda0957794f66f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a6c737cf75d0a1b2cd78229a08851c7294842c7d7055d5c3bc9dafe6db0ae3d",
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

Occurrence: `result:a9e08b32-b0ba-a360-a5f4-3a2c1921ba4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 411–416.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_pow_log_div_mul_add_atTop (a b : ℝ) (n : ℕ) (ha : a ≠ 0) :
    Tendsto (fun x => log x ^ n / (a * x + b)) atTop (𝓝 0) :=
  ((tendsto_div_pow_mul_exp_add_atTop a b n ha.symm).comp tendsto_log_atTop).congr' <| by
    filter_upwards [eventually_gt_atTop (0 : ℝ)] with x hx using by simp [exp_log hx]
#align real.tendsto_pow_log_div_mul_add_at_top Real.tendsto_pow_log_div_mul_add_atTop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantd171aaf2028ba28b41613020fff5ec0911a355f55218ff018bda0957794f66f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantd171aaf2028ba28b41613020fff5ec0911a355f55218ff018bda0957794f66f0.lean#L411).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `192a9b92912b130a9f9ab5782632889268de615a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
