# volume_emetric_closedBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15d9edaa-bc14-6509-d601-6ddbf15f0bfc",
  "kind": "theorem",
  "lexical_name": "volume_emetric_closedBall",
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
  "slug": "volume-emetric-closedball--eb337fec546dc10355b073cf",
  "source": {
    "blob": "32e2e27d3ad83cbf3121d52b39c5b809de993d17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 156,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant098b077b08ddd5d4dc5bae8b5119b54afccf5375f4bd7ecbb3b399fe9f235742.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb337fec546dc10355b073cffa566f7489ed705d2fa198b0e470822ba4ebc55a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant098b077b08ddd5d4dc5bae8b5119b54afccf5375f4bd7ecbb3b399fe9f235742.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15d9edaa-bc14-6509-d601-6ddbf15f0bfc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem volume_emetric_closedBall (a : ℝ) (r : ℝ≥0∞) : volume (EMetric.closedBall a r) = 2 * r := by
  rcases eq_or_ne r ∞ with (rfl | hr)
  · rw [EMetric.closedBall_top, volume_univ, two_mul, _root_.top_add]
  · lift r to ℝ≥0 using hr
    rw [Metric.emetric_closedBall_nnreal, volume_closedBall, two_mul, ← NNReal.coe_add,
      ENNReal.ofReal_coe_nnreal, ENNReal.coe_add, two_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant098b077b08ddd5d4dc5bae8b5119b54afccf5375f4bd7ecbb3b399fe9f235742.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant098b077b08ddd5d4dc5bae8b5119b54afccf5375f4bd7ecbb3b399fe9f235742.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32e2e27d3ad83cbf3121d52b39c5b809de993d17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
