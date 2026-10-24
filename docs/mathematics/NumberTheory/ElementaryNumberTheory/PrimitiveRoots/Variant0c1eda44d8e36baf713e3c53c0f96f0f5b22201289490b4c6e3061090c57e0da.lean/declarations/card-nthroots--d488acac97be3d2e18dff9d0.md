# card_nthRoots

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b726ff08f6710c6c8b5891d667b57d2ceb60dbd3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 580,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0c1eda44d8e36baf713e3c53c0f96f0f5b22201289490b4c6e3061090c57e0da.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cd272f89-8014-d894-eb55-bd255bd16e45",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bb647cc8-4c5b-5df7-ff14-0e326c0c6e10",
  "kind": "theorem",
  "lexical_name": "card_nthRoots",
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
  "slug": "card-nthroots--d488acac97be3d2e18dff9d0",
  "source": {
    "blob": "b726ff08f6710c6c8b5891d667b57d2ceb60dbd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 589,
    "line": 580,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimitiveRoots/Variant0c1eda44d8e36baf713e3c53c0f96f0f5b22201289490b4c6e3061090c57e0da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d488acac97be3d2e18dff9d05e95665faf40fdff6a8754ce80d030e670683d13",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PrimitiveRoots/Variant0c1eda44d8e36baf713e3c53c0f96f0f5b22201289490b4c6e3061090c57e0da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb647cc8-4c5b-5df7-ff14-0e326c0c6e10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 580–589.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_nthRoots {n : ℕ} {ζ : R} (hζ : IsPrimitiveRoot ζ n) (a : R) :
    Multiset.card (nthRoots n a) = if ∃ α, α ^ n = a then n else 0 := by
  split_ifs with h
  · obtain ⟨α, hα⟩ := h
    rw [nthRoots_eq hζ hα, Multiset.card_map, Multiset.card_range]
  · obtain (rfl|hn) := n.eq_zero_or_pos; · simp
    push_neg at h
    simpa only [Multiset.card_eq_zero, Multiset.eq_zero_iff_forall_notMem, mem_nthRoots hn]

/-- A variant of `IsPrimitiveRoot.card_rootsOfUnity` for `ζ : Rˣ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PrimitiveRoots/Variant0c1eda44d8e36baf713e3c53c0f96f0f5b22201289490b4c6e3061090c57e0da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PrimitiveRoots/Variant0c1eda44d8e36baf713e3c53c0f96f0f5b22201289490b4c6e3061090c57e0da.lean#L580).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b726ff08f6710c6c8b5891d667b57d2ceb60dbd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
