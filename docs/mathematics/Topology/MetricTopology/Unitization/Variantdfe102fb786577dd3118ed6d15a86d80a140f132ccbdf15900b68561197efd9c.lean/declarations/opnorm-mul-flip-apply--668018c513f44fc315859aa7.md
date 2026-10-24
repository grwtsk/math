# opNorm_mul_flip_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:560af5da-df7e-a21c-900a-8cb64f160a9e",
  "kind": "lemma",
  "lexical_name": "opNorm_mul_flip_apply",
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
  "slug": "opnorm-mul-flip-apply--668018c513f44fc315859aa7",
  "source": {
    "blob": "b141a2635b3980c3c076c2a01de66f8d90f0a9cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 42,
    "path": "GRWTSK/Topology/MetricTopology/Unitization/Variantdfe102fb786577dd3118ed6d15a86d80a140f132ccbdf15900b68561197efd9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:668018c513f44fc315859aa78a8243f6f81e0c525fca2287ca31153feb4d1f99",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Unitization/Variantdfe102fb786577dd3118ed6d15a86d80a140f132ccbdf15900b68561197efd9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:560af5da-df7e-a21c-900a-8cb64f160a9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma opNorm_mul_flip_apply (a : E) : ‖(mul 𝕜 E).flip a‖ = ‖a‖ := by
  refine le_antisymm
    (opNorm_le_bound _ (norm_nonneg _) fun b => by simpa only [mul_comm] using! norm_mul_le b a) ?_
  suffices ‖mul 𝕜 E (star a)‖ ≤ ‖(mul 𝕜 E).flip a‖ by
    simpa only [ge_iff_le, opNorm_mul_apply, norm_star] using! this
  refine opNorm_le_bound _ (norm_nonneg _) fun b => ?_
  calc ‖mul 𝕜 E (star a) b‖ = ‖(mul 𝕜 E).flip a (star b)‖ := by
        simpa only [mul_apply', flip_apply, star_mul, star_star] using! norm_star (star b * a)
    _ ≤ ‖(mul 𝕜 E).flip a‖ * ‖b‖ := by
        simpa only [flip_apply, mul_apply', norm_star] using! le_opNorm ((mul 𝕜 E).flip a) (star b)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Unitization/Variantdfe102fb786577dd3118ed6d15a86d80a140f132ccbdf15900b68561197efd9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Unitization/Variantdfe102fb786577dd3118ed6d15a86d80a140f132ccbdf15900b68561197efd9c.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b141a2635b3980c3c076c2a01de66f8d90f0a9cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
