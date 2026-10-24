# card_nthRoots

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0f4c2e50f26687e733bc861fc76113cdea9b3a69",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 636,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/226fe247c20101f787ea6fb3bfafb92bf73fd62674150eb7b8207342354a8efb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3be0251f-6d15-ef16-ddff-cc814dc1a709",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6634e097-b6b8-a947-4f71-6285e3da7a95",
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
  "slug": "card-nthroots--97f30bb8ca4ecca729362807",
  "source": {
    "blob": "0f4c2e50f26687e733bc861fc76113cdea9b3a69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 645,
    "line": 636,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant226fe247c20101f787ea6fb3bfafb92bf73fd62674150eb7b8207342354a8efb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97f30bb8ca4ecca72936280754396d86a002014a8c62e5b90dca7133fda987f0",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant226fe247c20101f787ea6fb3bfafb92bf73fd62674150eb7b8207342354a8efb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6634e097-b6b8-a947-4f71-6285e3da7a95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 636–645.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_nthRoots {n : ℕ} {ζ : R} (hζ : IsPrimitiveRoot ζ n) (a : R) :
    Multiset.card (nthRoots n a) = if ∃ α, α ^ n = a then n else 0 := by
  split_ifs with h
  · obtain ⟨α, hα⟩ := h
    rw [nthRoots_eq hζ hα, Multiset.card_map, Multiset.card_range]
  · obtain (rfl | hn) := n.eq_zero_or_pos; · simp
    push Not at h
    simpa only [Multiset.card_eq_zero, Multiset.eq_zero_iff_forall_notMem, mem_nthRoots hn]

/-- A variant of `IsPrimitiveRoot.card_rootsOfUnity` for `ζ : Rˣ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant226fe247c20101f787ea6fb3bfafb92bf73fd62674150eb7b8207342354a8efb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant226fe247c20101f787ea6fb3bfafb92bf73fd62674150eb7b8207342354a8efb.lean#L636).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f4c2e50f26687e733bc861fc76113cdea9b3a69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
