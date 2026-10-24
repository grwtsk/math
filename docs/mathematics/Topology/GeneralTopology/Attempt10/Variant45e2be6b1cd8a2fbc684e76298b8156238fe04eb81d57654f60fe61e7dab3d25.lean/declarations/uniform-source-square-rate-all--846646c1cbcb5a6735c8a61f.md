# uniform_source_square_rate_all

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc57fe67-b7bc-1294-f797-ad70668eef03",
  "kind": "theorem",
  "lexical_name": "uniform_source_square_rate_all",
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
  "slug": "uniform-source-square-rate-all--846646c1cbcb5a6735c8a61f",
  "source": {
    "blob": "cae52dd0d395967da727ee2d35dbede4f5d2449f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 390,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt10/Variant45e2be6b1cd8a2fbc684e76298b8156238fe04eb81d57654f60fe61e7dab3d25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:846646c1cbcb5a6735c8a61f23c791e70f71765d6a26be95014274e249c0c16a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt10/Variant45e2be6b1cd8a2fbc684e76298b8156238fe04eb81d57654f60fe61e7dab3d25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc57fe67-b7bc-1294-f797-ad70668eef03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 390–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniform_source_square_rate_all {A delta : ℝ} (hA : 1 ≤ A)
    (hdelta : 0 < delta) {z : ℂ} (hz : delta ≤ z.re) :
    ‖scaledAmplitude A z^2-leadingCoefficient z^2‖ ≤
      ‖leadingCoefficient z‖^2*(rateConstant delta^2+2*rateConstant delta)/A := by
  by_cases hf : z^2-1/4 ≠ 0
  · exact uniform_source_square_rate hA hdelta hz hf
  · obtain ⟨ht,hc⟩ := filter_zero_amplitude hA
      (half_plane_ne_zero (lt_of_lt_of_le hdelta hz)) (not_ne_iff.mp hf)
    simp [ht,hc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt10/Variant45e2be6b1cd8a2fbc684e76298b8156238fe04eb81d57654f60fe61e7dab3d25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt10/Variant45e2be6b1cd8a2fbc684e76298b8156238fe04eb81d57654f60fe61e7dab3d25.lean#L390).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cae52dd0d395967da727ee2d35dbede4f5d2449f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
