# norm_map_sq_le_opNorm_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:640e391f-9b65-37de-2dec-f96035dab70a",
  "kind": "theorem",
  "lexical_name": "norm_map_sq_le_opNorm_mul",
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
  "slug": "norm-map-sq-le-opnorm-mul--c25dc4f92e6b9d3eb28f4f0e",
  "source": {
    "blob": "4886ea1cb08ce1395590531ce7d8455c25cfb15d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 48,
    "path": "GRWTSK/Topology/GeneralTopology/PositiveLinearFunctional/Variant8eb29d526387f8c9eed911d939693a34462e49b12d7b8a16ff4e157b729495cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c25dc4f92e6b9d3eb28f4f0edbe3a3615fe5ac8096872464dec5de6d081f75d0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PositiveLinearFunctional/Variant8eb29d526387f8c9eed911d939693a34462e49b12d7b8a16ff4e157b729495cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:640e391f-9b65-37de-2dec-f96035dab70a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_map_sq_le_opNorm_mul (f : A →P[ℂ] ℂ) (x : A) :
    ‖f x‖ ^ 2 ≤ ‖(f : A →L[ℂ] ℂ)‖ * ‖f (star x * x)‖ := by
  grw [norm_map_le_sqrt_opNorm_mul, mul_pow]; simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PositiveLinearFunctional/Variant8eb29d526387f8c9eed911d939693a34462e49b12d7b8a16ff4e157b729495cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PositiveLinearFunctional/Variant8eb29d526387f8c9eed911d939693a34462e49b12d7b8a16ff4e157b729495cb.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4886ea1cb08ce1395590531ce7d8455c25cfb15d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
