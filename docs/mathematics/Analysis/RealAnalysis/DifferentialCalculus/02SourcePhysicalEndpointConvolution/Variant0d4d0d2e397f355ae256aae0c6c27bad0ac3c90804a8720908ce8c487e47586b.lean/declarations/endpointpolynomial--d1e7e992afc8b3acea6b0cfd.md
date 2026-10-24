# endpointPolynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ffe1c8a8cf70d35b97c68bffc92a88e967c2c5801a4015c3153de1c47e656cfe",
  "kind": "def",
  "lexical_name": "endpointPolynomial",
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
  "slug": "endpointpolynomial--d1e7e992afc8b3acea6b0cfd",
  "source": {
    "blob": "927099443049c3d6a2842ebbce859c43e64bdf4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 191,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/02SourcePhysicalEndpointConvolution/Variant0d4d0d2e397f355ae256aae0c6c27bad0ac3c90804a8720908ce8c487e47586b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d1e7e992afc8b3acea6b0cfdd1e8efae79edd6d22b2d612db39832299a42476c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/02SourcePhysicalEndpointConvolution/Variant0d4d0d2e397f355ae256aae0c6c27bad0ac3c90804a8720908ce8c487e47586b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ffe1c8a8cf70d35b97c68bffc92a88e967c2c5801a4015c3153de1c47e656cfe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def endpointPolynomial (r s : ℝ) : ℝ :=
  ((6144 / 5)) * s ^ 5 +
    (-4096) * r * s ^ 6 +
    ((-512 / 35)) * s ^ 7 +
    ((38912 / 7)) * r ^ 2 * s ^ 7 +
    ((256 / 7)) * r * s ^ 8 +
    ((-28416 / 7)) * r ^ 3 * s ^ 8 +
    ((8 / 315)) * s ^ 9 +
    ((-2432 / 63)) * r ^ 2 * s ^ 9 +
    ((36992 / 21)) * r ^ 4 * s ^ 9 +
    ((-16 / 315)) * r * s ^ 10 +
    ((2368 / 105)) * r ^ 3 * s ^ 10 +
    ((-1408 / 3)) * r ^ 5 * s ^ 10 +
    ((152 / 3465)) * r ^ 2 * s ^ 11 +
    ((-9248 / 1155)) * r ^ 4 * s ^ 11 +
    ((832 / 11)) * r ^ 6 * s ^ 11 +
    ((-74 / 3465)) * r ^ 3 * s ^ 12 +
    ((16 / 9)) * r ^ 5 * s ^ 12 +
    ((-224 / 33)) * r ^ 7 * s ^ 12 +
    ((289 / 45045)) * r ^ 4 * s ^ 13 +
    ((-8 / 33)) * r ^ 6 * s ^ 13 +
    ((112 / 429)) * r ^ 8 * s ^ 13 +
    ((-1 / 819)) * r ^ 5 * s ^ 14 +
    ((8 / 429)) * r ^ 7 * s ^ 14 +
    ((1 / 6930)) * r ^ 6 * s ^ 15 +
    ((-4 / 6435)) * r ^ 8 * s ^ 15 +
    ((-1 / 102960)) * r ^ 7 * s ^ 16 +
    ((1 / 3500640)) * r ^ 8 * s ^ 17

set_option maxHeartbeats 2000000 in
-- The exact inverse-scale expansion needs a larger finite algebra budget.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/02SourcePhysicalEndpointConvolution/Variant0d4d0d2e397f355ae256aae0c6c27bad0ac3c90804a8720908ce8c487e47586b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/02SourcePhysicalEndpointConvolution/Variant0d4d0d2e397f355ae256aae0c6c27bad0ac3c90804a8720908ce8c487e47586b.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `927099443049c3d6a2842ebbce859c43e64bdf4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
