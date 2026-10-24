# inverse_power_bound_sharp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:268d19bb-f363-fa29-1833-6fa3e08bd40a",
  "kind": "theorem",
  "lexical_name": "inverse_power_bound_sharp",
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
  "slug": "inverse-power-bound-sharp--458e19216530e5950b1bf3c4",
  "source": {
    "blob": "44354320aa47abbf8c72106218cabb2e61149137",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 24,
    "line": 16,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt03/Variant87fd57e80b4aa0d186dfdf5ac05058c87292bcce01dabcf9ec77064d29de8c9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:458e19216530e5950b1bf3c46f32724ee520d26ab1dbc1f2aa074b49607b380f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt03/Variant87fd57e80b4aa0d186dfdf5ac05058c87292bcce01dabcf9ec77064d29de8c9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:268d19bb-f363-fa29-1833-6fa3e08bd40a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–24.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inverse_power_bound_sharp {A delta : ℝ} (hA : 1 ≤ A) (hdelta : 0 < delta)
    {z : ℂ} (hz : delta ≤ z.re) (n : ℕ) :
    ‖(1 : ℂ)/((A : ℂ)*z)^n‖ ≤ 1/(A*delta)^n := by
  have hp : 0 < A := by linarith
  have hzN : delta ≤ ‖z‖ := hz.trans (Complex.re_le_norm z)
  rw [norm_div,norm_one,norm_pow,norm_mul,Complex.norm_real,
    Real.norm_eq_abs,abs_of_pos hp]
  gcongr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt03/Variant87fd57e80b4aa0d186dfdf5ac05058c87292bcce01dabcf9ec77064d29de8c9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt03/Variant87fd57e80b4aa0d186dfdf5ac05058c87292bcce01dabcf9ec77064d29de8c9a.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44354320aa47abbf8c72106218cabb2e61149137` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
