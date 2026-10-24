# F_nat_zero_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6b2556f-61a0-77f8-4061-4512616c071f",
  "kind": "lemma",
  "lexical_name": "F_nat_zero_le",
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
  "slug": "f-nat-zero-le--d567d1df987bc2b0751d8153",
  "source": {
    "blob": "1fccd6ce38c5a3fa54d9987f1d899a126fc157fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 121,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Bounds/Variantcff37fc4f2548f7e400379e61ca318bfb991400b9c7e2020c1e0301cc1758507.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d567d1df987bc2b0751d81539627bcb84579459987d855443b52bb829a921452",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Bounds/Variantcff37fc4f2548f7e400379e61ca318bfb991400b9c7e2020c1e0301cc1758507.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6b2556f-61a0-77f8-4061-4512616c071f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma F_nat_zero_le {a : ℝ} (ha : 0 ≤ a) {t : ℝ} (ht : 0 < t) :
    ‖F_nat 0 a t‖ ≤ rexp (-π * a ^ 2 * t) / (1 - rexp (-π * t)) := by
  refine tsum_of_norm_bounded ?_ (f_le_g_nat 0 ha ht)
  convert (hasSum_geometric_of_lt_one (exp_pos _).le <| exp_lt_aux ht).mul_left _ using 1
  ext1 n
  simp only [g_nat]
  rw [← Real.exp_nat_mul, ← Real.exp_add]
  ring_nf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Bounds/Variantcff37fc4f2548f7e400379e61ca318bfb991400b9c7e2020c1e0301cc1758507.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Bounds/Variantcff37fc4f2548f7e400379e61ca318bfb991400b9c7e2020c1e0301cc1758507.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fccd6ce38c5a3fa54d9987f1d899a126fc157fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
