# affineCombination_eq_of_weightedVSub_eq_zero_of_eq_neg_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3a09b52d58651d9ae49fbb7b4571b28f367a6007",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 497,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/19/19e3e4ccaa8d097e0e292a9d81a29508ada6905c6251db17bbb9f540d8a1e091.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e81f878f-fed2-6d55-913d-d4d49115fe4f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf07893c-dd51-7033-711c-e9db400dcc8e",
  "kind": "theorem",
  "lexical_name": "affineCombination_eq_of_weightedVSub_eq_zero_of_eq_neg_one",
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
  "slug": "affinecombination-eq-of-weightedvsub-eq-zero-of-eq-neg-one--806e1c5054ab6aea7285e289",
  "source": {
    "blob": "3a09b52d58651d9ae49fbb7b4571b28f367a6007",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 509,
    "line": 497,
    "path": "GRWTSK/Geometry/ConvexGeometry/Combination/Variant19e3e4ccaa8d097e0e292a9d81a29508ada6905c6251db17bbb9f540d8a1e091.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:806e1c5054ab6aea7285e28998117e7d40ea71d789fa524bf4f65788df74ea0b",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Combination/Variant19e3e4ccaa8d097e0e292a9d81a29508ada6905c6251db17bbb9f540d8a1e091.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf07893c-dd51-7033-711c-e9db400dcc8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 497–509.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affineCombination_eq_of_weightedVSub_eq_zero_of_eq_neg_one {w : ι → k} {p : ι → P}
    (hw : s.weightedVSub p w = (0 : V)) {i : ι} [DecidablePred (· ≠ i)] (his : i ∈ s)
    (hwi : w i = -1) : {x ∈ s | x ≠ i}.affineCombination k p w = p i := by
  classical
    rw [← @vsub_eq_zero_iff_eq V, ← hw,
      ← s.affineCombination_sdiff_sub (singleton_subset_iff.2 his), sdiff_singleton_eq_erase,
      ← filter_ne']
    congr
    refine (affineCombination_of_eq_one_of_eq_zero _ _ _ (mem_singleton_self _) ?_ ?_).symm
    · simp [hwi]
    · simp

/-- An affine combination over `s.subtype pred` equals one over `{x ∈ s | pred x}`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Combination/Variant19e3e4ccaa8d097e0e292a9d81a29508ada6905c6251db17bbb9f540d8a1e091.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Combination/Variant19e3e4ccaa8d097e0e292a9d81a29508ada6905c6251db17bbb9f540d8a1e091.lean#L497).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a09b52d58651d9ae49fbb7b4571b28f367a6007` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
