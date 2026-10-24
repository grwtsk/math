# dist_le_of_le_geometric_of_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d4d700d75becd50b8155f0085e13ae951929d18c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 421,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b43712711fb9fe3f9930bcf3bb9552efd8667d8e1d6c4d214496ca33c2104829.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:76c1a07e-021a-151c-cba6-51b89b379b11",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6b6c11bb-bb2d-016c-3a02-f66913a51324",
  "kind": "theorem",
  "lexical_name": "dist_le_of_le_geometric_of_tendsto",
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
  "slug": "dist-le-of-le-geometric-of-tendsto--9923dd2c45d0c79cbaffd867",
  "source": {
    "blob": "d4d700d75becd50b8155f0085e13ae951929d18c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 432,
    "line": 421,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb43712711fb9fe3f9930bcf3bb9552efd8667d8e1d6c4d214496ca33c2104829.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9923dd2c45d0c79cbaffd8675d989f6a57013cd759ddac9dd600e94d098997b0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantb43712711fb9fe3f9930bcf3bb9552efd8667d8e1d6c4d214496ca33c2104829.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b6c11bb-bb2d-016c-3a02-f66913a51324`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 421–432.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_le_of_le_geometric_of_tendsto {a : α} (ha : Tendsto f atTop (𝓝 a)) (n : ℕ) :
    dist (f n) a ≤ C * r ^ n / (1 - r) := by
  have := aux_hasSum_of_le_geometric hr hu
  convert dist_le_tsum_of_dist_le_of_tendsto _ hu ⟨_, this⟩ ha n
  simp only [pow_add, mul_left_comm C, mul_div_right_comm]
  rw [mul_comm]
  exact (this.mul_left _).tsum_eq.symm
#align dist_le_of_le_geometric_of_tendsto dist_le_of_le_geometric_of_tendsto

variable (hu₂ : ∀ n, dist (f n) (f (n + 1)) ≤ C / 2 / 2 ^ n)

/-- If `dist (f n) (f (n+1))` is bounded by `(C / 2) / 2^n`, then `f` is a Cauchy sequence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantb43712711fb9fe3f9930bcf3bb9552efd8667d8e1d6c4d214496ca33c2104829.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantb43712711fb9fe3f9930bcf3bb9552efd8667d8e1d6c4d214496ca33c2104829.lean#L421).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4d700d75becd50b8155f0085e13ae951929d18c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
