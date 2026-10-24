# weighted_power_payment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4860a085-3968-8cae-213b-1ca8fc3cf19f",
  "kind": "theorem",
  "lexical_name": "weighted_power_payment",
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
  "slug": "weighted-power-payment--14f752ba8043795db9c9fcb7",
  "source": {
    "blob": "c65e6ca79cb68d6336beccc6b0f111fce983cd4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 26,
    "path": "GRWTSK/Analysis/WeightedLpReserve/Variantf4dbaa89f4e7e171e95514f0fe74ddbacd994f3dc6e9dcd95112584b61601b17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14f752ba8043795db9c9fcb77ac886bc5af76068cd7bff29de5c2ef167c61d02",
  "verification": {
    "reference": "docs/verification/Analysis/WeightedLpReserve/Variantf4dbaa89f4e7e171e95514f0fe74ddbacd994f3dc6e9dcd95112584b61601b17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4860a085-3968-8cae-213b-1ca8fc3cf19f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_power_payment {w ρ p : ℝ} (hw : 0 < w) (hρ : 0 ≤ ρ) :
    w * (ρ / w) ^ p = ρ ^ p / w ^ (p - 1) := by
  rw [Real.div_rpow hρ hw.le, Real.rpow_sub hw, Real.rpow_one]
  have hwp : w ^ p ≠ 0 := (Real.rpow_pos_of_pos hw p).ne'
  field_simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/WeightedLpReserve/Variantf4dbaa89f4e7e171e95514f0fe74ddbacd994f3dc6e9dcd95112584b61601b17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/WeightedLpReserve/Variantf4dbaa89f4e7e171e95514f0fe74ddbacd994f3dc6e9dcd95112584b61601b17.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c65e6ca79cb68d6336beccc6b0f111fce983cd4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
