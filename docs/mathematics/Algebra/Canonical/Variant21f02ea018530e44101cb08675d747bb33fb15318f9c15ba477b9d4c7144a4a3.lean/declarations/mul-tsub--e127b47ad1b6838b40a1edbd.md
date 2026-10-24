# mul_tsub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85295f2a-37ff-56ea-e300-d3027af31e6c",
  "kind": "theorem",
  "lexical_name": "mul_tsub",
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
  "slug": "mul-tsub--e127b47ad1b6838b40a1edbd",
  "source": {
    "blob": "426ce4ec8bccffe61f3e258bd115f2a86733f594",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 139,
    "path": "GRWTSK/Algebra/Canonical/Variant21f02ea018530e44101cb08675d747bb33fb15318f9c15ba477b9d4c7144a4a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e127b47ad1b6838b40a1edbd246093b3da4686df3f02b26ed273c2679fabda68",
  "verification": {
    "reference": "docs/verification/Algebra/Canonical/Variant21f02ea018530e44101cb08675d747bb33fb15318f9c15ba477b9d4c7144a4a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85295f2a-37ff-56ea-e300-d3027af31e6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem mul_tsub (h : AddLECancellable (a * c)) : a * (b - c) = a * b - a * c := by
  cases' total_of (· ≤ ·) b c with hbc hcb
  · rw [tsub_eq_zero_iff_le.2 hbc, mul_zero, tsub_eq_zero_iff_le.2 (mul_le_mul_left' hbc a)]
  · apply h.eq_tsub_of_add_eq
    rw [← mul_add, tsub_add_cancel_of_le hcb]
#align add_le_cancellable.mul_tsub AddLECancellable.mul_tsub

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Canonical/Variant21f02ea018530e44101cb08675d747bb33fb15318f9c15ba477b9d4c7144a4a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Canonical/Variant21f02ea018530e44101cb08675d747bb33fb15318f9c15ba477b9d4c7144a4a3.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `426ce4ec8bccffe61f3e258bd115f2a86733f594` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
