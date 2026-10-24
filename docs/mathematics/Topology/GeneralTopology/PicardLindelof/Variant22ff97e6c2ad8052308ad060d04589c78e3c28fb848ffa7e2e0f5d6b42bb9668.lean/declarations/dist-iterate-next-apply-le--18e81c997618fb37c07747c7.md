# dist_iterate_next_apply_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99d91049-cde5-8f60-4a6d-96732631f7ea",
  "kind": "theorem",
  "lexical_name": "dist_iterate_next_apply_le",
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
  "slug": "dist-iterate-next-apply-le--18e81c997618fb37c07747c7",
  "source": {
    "blob": "e0cf0a7edf3ee7e8e5b47c47f97b9c5b365532bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 287,
    "path": "GRWTSK/Topology/GeneralTopology/PicardLindelof/Variant22ff97e6c2ad8052308ad060d04589c78e3c28fb848ffa7e2e0f5d6b42bb9668.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18e81c997618fb37c07747c79df893f1203db74ae63d6a3695d35c29d2db454a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PicardLindelof/Variant22ff97e6c2ad8052308ad060d04589c78e3c28fb848ffa7e2e0f5d6b42bb9668.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99d91049-cde5-8f60-4a6d-96732631f7ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_iterate_next_apply_le (f₁ f₂ : FunSpace v) (n : ℕ) (t : Icc v.tMin v.tMax) :
    dist (next^[n] f₁ t) (next^[n] f₂ t) ≤ (v.L * |t.1 - v.t₀|) ^ n / n ! * dist f₁ f₂ := by
  induction n generalizing t with
  | zero =>
    rw [pow_zero, Nat.factorial_zero, Nat.cast_one, div_one, one_mul]
    exact dist_apply_le_dist f₁ f₂ t
  | succ n ihn =>
    rw [iterate_succ_apply', iterate_succ_apply']
    exact dist_next_apply_le_of_le ihn _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PicardLindelof/Variant22ff97e6c2ad8052308ad060d04589c78e3c28fb848ffa7e2e0f5d6b42bb9668.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PicardLindelof/Variant22ff97e6c2ad8052308ad060d04589c78e3c28fb848ffa7e2e0f5d6b42bb9668.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0cf0a7edf3ee7e8e5b47c47f97b9c5b365532bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
