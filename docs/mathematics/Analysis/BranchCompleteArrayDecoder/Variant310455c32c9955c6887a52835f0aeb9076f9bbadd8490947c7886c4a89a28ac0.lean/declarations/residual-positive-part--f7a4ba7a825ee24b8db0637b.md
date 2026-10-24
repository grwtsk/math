# residual_positive_part

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39751538-c948-7b13-1c87-fbb6fb3a41a5",
  "kind": "theorem",
  "lexical_name": "residual_positive_part",
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
  "slug": "residual-positive-part--f7a4ba7a825ee24b8db0637b",
  "source": {
    "blob": "ce9edc7077f0237b5987f808ff120ec6af461d0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 54,
    "path": "GRWTSK/Analysis/BranchCompleteArrayDecoder/Variant310455c32c9955c6887a52835f0aeb9076f9bbadd8490947c7886c4a89a28ac0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7a4ba7a825ee24b8db0637b62dd7ccaac59b5e542c5ff0bb12a898729a629ad",
  "verification": {
    "reference": "docs/verification/Analysis/BranchCompleteArrayDecoder/Variant310455c32c9955c6887a52835f0aeb9076f9bbadd8490947c7886c4a89a28ac0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39751538-c948-7b13-1c87-fbb6fb3a41a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_positive_part {ι : Type*} [Fintype ι] (d Y : ι → ℂ)
    (W error : ℂ) (B : ℝ) (hB0 : 0 ≤ B)
    (hcomplete : W = (∑ i, d i * Y i) + error) (hB : ∀ i, ‖Y i‖ ≤ B) :
    max 0 (‖W‖ - ‖error‖) ≤ decoderPrice d * B := by
  exact max_le (mul_nonneg (price_nonnegative d) hB0)
    (residual_norm_bound d Y W error B hcomplete hB)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/BranchCompleteArrayDecoder/Variant310455c32c9955c6887a52835f0aeb9076f9bbadd8490947c7886c4a89a28ac0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/BranchCompleteArrayDecoder/Variant310455c32c9955c6887a52835f0aeb9076f9bbadd8490947c7886c4a89a28ac0.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce9edc7077f0237b5987f808ff120ec6af461d0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
