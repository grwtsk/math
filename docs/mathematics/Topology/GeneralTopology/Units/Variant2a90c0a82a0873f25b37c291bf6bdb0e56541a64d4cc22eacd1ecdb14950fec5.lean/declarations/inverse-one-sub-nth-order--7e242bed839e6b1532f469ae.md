# inverse_one_sub_nth_order'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c12090cb3cfafe01f653c6269412cccaf4ad67d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2a90c0a82a0873f25b37c291bf6bdb0e56541a64d4cc22eacd1ecdb14950fec5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:255950e2-45a9-e45a-9b11-2c0528c8300e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:03662e2d-20d9-8cc5-212f-eb06e1fff2f8",
  "kind": "theorem",
  "lexical_name": "inverse_one_sub_nth_order'",
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
  "slug": "inverse-one-sub-nth-order--7e242bed839e6b1532f469ae",
  "source": {
    "blob": "c12090cb3cfafe01f653c6269412cccaf4ad67d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 129,
    "path": "GRWTSK/Topology/GeneralTopology/Units/Variant2a90c0a82a0873f25b37c291bf6bdb0e56541a64d4cc22eacd1ecdb14950fec5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e242bed839e6b1532f469aec1cda7ae48c839b09fffe0d6a9302f1ebd0abee6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Units/Variant2a90c0a82a0873f25b37c291bf6bdb0e56541a64d4cc22eacd1ecdb14950fec5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03662e2d-20d9-8cc5-212f-eb06e1fff2f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inverse_one_sub_nth_order' (n : ℕ) {t : R} (ht : ‖t‖ < 1) :
    inverse ((1 : R) - t) = (∑ i in range n, t ^ i) + t ^ n * inverse (1 - t) :=
  have := NormedRing.summable_geometric_of_norm_lt_1 t ht
  calc inverse (1 - t) = ∑' i : ℕ, t ^ i := inverse_one_sub t ht
    _ = ∑ i in range n, t ^ i + ∑' i : ℕ, t ^ (i + n) := (sum_add_tsum_nat_add _ this).symm
    _ = (∑ i in range n, t ^ i) + t ^ n * inverse (1 - t) := by
      simp only [inverse_one_sub t ht, add_comm _ n, pow_add, this.tsum_mul_left]; rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Units/Variant2a90c0a82a0873f25b37c291bf6bdb0e56541a64d4cc22eacd1ecdb14950fec5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Units/Variant2a90c0a82a0873f25b37c291bf6bdb0e56541a64d4cc22eacd1ecdb14950fec5.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c12090cb3cfafe01f653c6269412cccaf4ad67d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
