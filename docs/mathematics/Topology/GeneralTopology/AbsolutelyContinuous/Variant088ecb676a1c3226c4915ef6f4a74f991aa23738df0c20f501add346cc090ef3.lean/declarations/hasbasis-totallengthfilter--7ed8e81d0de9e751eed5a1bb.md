# hasBasis_totalLengthFilter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82556837-400d-d9d5-7269-c524c17ec30f",
  "kind": "lemma",
  "lexical_name": "hasBasis_totalLengthFilter",
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
  "slug": "hasbasis-totallengthfilter--7ed8e81d0de9e751eed5a1bb",
  "source": {
    "blob": "3403fb5738c0bcee2c8a0e9eda236acf69620a52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 89,
    "path": "GRWTSK/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ed8e81d0de9e751eed5a1bbf3f6dcdb28cccdb9c350a4372fa930042c07d0c4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82556837-400d-d9d5-7269-c524c17ec30f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasBasis_totalLengthFilter : totalLengthFilter.HasBasis (fun (ε : ℝ) => 0 < ε)
    (fun (ε : ℝ) =>
      {E : ℕ × (ℕ → X × X) | ∑ i ∈ Finset.range E.1, dist (E.2 i).1 (E.2 i).2 < ε}) := by
  convert! Filter.HasBasis.comap (α := ℝ) _ (nhds_basis_Ioo_pos _) using 1
  ext ε E
  simp only [mem_ofPred_eq, zero_sub, zero_add, mem_preimage, mem_Ioo, iff_and_self]
  suffices 0 ≤ ∑ i ∈ Finset.range E.1, dist (E.2 i).1 (E.2 i).2 by grind
  exact Finset.sum_nonneg (fun _ _ ↦ dist_nonneg)

/-- The subcollection of all the finite sequences of `uIoc` intervals consisting of
`uIoc (a i) (b i)`, `i < n` where `a i`, `b i` are all in `uIcc a b` for `i < n` and
`uIoc (a i) (b i)` are mutually disjoint for `i < n`. Technically the finite sequence
`uIoc (a i) (b i)`, `i < n` is represented by any `E : ℕ × (ℕ → ℝ × ℝ)` which satisfies
`E.1 = n` and `E.2 i = (a i, b i)` for `i < n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3403fb5738c0bcee2c8a0e9eda236acf69620a52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
