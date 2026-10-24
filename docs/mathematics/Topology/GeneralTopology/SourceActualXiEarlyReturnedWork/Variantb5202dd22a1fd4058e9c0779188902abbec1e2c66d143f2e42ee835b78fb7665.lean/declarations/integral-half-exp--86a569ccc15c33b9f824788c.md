# integral_half_exp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:051eb77e-096f-7da4-eb41-df186af98264",
  "kind": "theorem",
  "lexical_name": "integral_half_exp",
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
  "slug": "integral-half-exp--86a569ccc15c33b9f824788c",
  "source": {
    "blob": "64b45c1062a3a82282147d580d2a734679536cd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 100,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualXiEarlyReturnedWork/Variantb5202dd22a1fd4058e9c0779188902abbec1e2c66d143f2e42ee835b78fb7665.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86a569ccc15c33b9f824788ccdf6498e2fbf47a70e8b505309c6cb5c8057b5e4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualXiEarlyReturnedWork/Variantb5202dd22a1fd4058e9c0779188902abbec1e2c66d143f2e42ee835b78fb7665.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:051eb77e-096f-7da4-eb41-df186af98264`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem integral_half_exp (a b : ℝ) :
    (∫ t in a..b, Real.exp (t / 2)) =
      2 * (Real.exp (b / 2) - Real.exp (a / 2)) := by
  have hd : ∀ t : ℝ, HasDerivAt (fun v : ℝ => 2 * Real.exp (v / 2))
      (Real.exp (t / 2)) t := by
    intro t
    have he := (((hasDerivAt_id t).div_const (2 : ℝ)).exp).const_mul 2
    exact he.congr_deriv (by change 2 * (Real.exp (t / 2) * (1 / 2)) = _; ring)
  have he := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
    ((by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).intervalIntegrable a b)
  rw [he]
  ring

/-- The literal early work is small despite the retained exponential return. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualXiEarlyReturnedWork/Variantb5202dd22a1fd4058e9c0779188902abbec1e2c66d143f2e42ee835b78fb7665.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualXiEarlyReturnedWork/Variantb5202dd22a1fd4058e9c0779188902abbec1e2c66d143f2e42ee835b78fb7665.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64b45c1062a3a82282147d580d2a734679536cd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
