# _root_.isFiniteLength_quotient_span_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6b79d08d5d6c88dbf95d1a4a3bc7f29673052eda",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 292,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7ee09999-ca50-5e29-fb05-41b8baab0686",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cde46ba6-fdff-8317-29d7-a8d550a74148",
  "kind": "theorem",
  "lexical_name": "_root_.isFiniteLength_quotient_span_singleton",
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
  "slug": "root-isfinitelength-quotient-span-singleton--48ee247e891cbbb28eb2b6f0",
  "source": {
    "blob": "6b79d08d5d6c88dbf95d1a4a3bc7f29673052eda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 292,
    "path": "GRWTSK/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48ee247e891cbbb28eb2b6f0049f345afc91e0fc4c5d1c676741dd1ec7505fa7",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cde46ba6-fdff-8317-29d7-a8d550a74148`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.isFiniteLength_quotient_span_singleton [IsNoetherianRing R]
    [Ring.KrullDimLE 1 R] {x : R} (hx : x ∈ nonZeroDivisors R) :
    IsFiniteLength R (R ⧸ Ideal.span {x}) := by
  rw [isFiniteLength_iff_isNoetherian_isArtinian]
  suffices IsArtinianRing (R ⧸ Ideal.span {x}) from
    ⟨isNoetherian_quotient (Ideal.span {x}),
      isArtinian_of_surjective_algebraMap (Ideal.Quotient.mk_surjective (I := .span {x}))⟩
  rw [isArtinianRing_iff_krullDimLE_zero, Ring.KrullDimLE, Order.krullDimLE_iff,
    ← ENat.WithBot.add_le_add_one_right_iff, Nat.cast_zero, zero_add]
  exact (ringKrullDim_quotient_succ_le_of_nonZeroDivisor hx).trans (Order.KrullDimLE.krullDim_le)

variable [IsNoetherianRing R] [Ring.KrullDimLE 1 R]
variable {K : Type*} [Field K] [Algebra R K] [IsFractionRing R K]

variable {R} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b79d08d5d6c88dbf95d1a4a3bc7f29673052eda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
