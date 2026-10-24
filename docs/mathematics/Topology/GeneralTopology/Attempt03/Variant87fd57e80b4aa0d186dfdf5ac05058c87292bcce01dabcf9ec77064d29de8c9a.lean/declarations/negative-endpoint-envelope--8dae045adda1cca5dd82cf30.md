# negative_endpoint_envelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d8b5316-970d-07e3-e3de-4cce64b6210a",
  "kind": "theorem",
  "lexical_name": "negative_endpoint_envelope",
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
  "slug": "negative-endpoint-envelope--8dae045adda1cca5dd82cf30",
  "source": {
    "blob": "44354320aa47abbf8c72106218cabb2e61149137",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 90,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt03/Variant87fd57e80b4aa0d186dfdf5ac05058c87292bcce01dabcf9ec77064d29de8c9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8dae045adda1cca5dd82cf3038ad1214d4ef9b0341d2e2bef671518f8b8f37c2",
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

Occurrence: `result:1d8b5316-970d-07e3-e3de-4cce64b6210a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negative_endpoint_envelope {A delta : ℝ} (hA : 1 ≤ A)
    {z : ℂ} (hz : delta ≤ z.re) :
    ‖Complex.exp (-2*(A : ℂ)*z)‖ ≤ Real.exp (-2*A*delta) := by
  have hp : 0 < A := by linarith
  rw [Complex.norm_exp]
  have hre : (-2*(A : ℂ)*z).re = -2*A*z.re := by
    norm_num [Complex.mul_re,Complex.mul_im]
  rw [hre]
  apply Real.exp_le_exp.mpr
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt03/Variant87fd57e80b4aa0d186dfdf5ac05058c87292bcce01dabcf9ec77064d29de8c9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt03/Variant87fd57e80b4aa0d186dfdf5ac05058c87292bcce01dabcf9ec77064d29de8c9a.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44354320aa47abbf8c72106218cabb2e61149137` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
