# IsClosed.Icc_subset_of_forall_exists_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ec58c516e95199231596874e646f4157df3bc781",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 354,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/786525c2a6ff8f69c77a2e49049d3f89901d0bd08482adaa28581c154a39687f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:33784931-dfa1-d44a-9e97-fc334c5db028",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ec11d809-83ee-1dca-2a6a-f333a6c5e7b9",
  "kind": "theorem",
  "lexical_name": "IsClosed.Icc_subset_of_forall_exists_lt",
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
  "slug": "isclosed-icc-subset-of-forall-exists-lt--2742548e6ec6837aa689a4b4",
  "source": {
    "blob": "ec58c516e95199231596874e646f4157df3bc781",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 367,
    "line": 354,
    "path": "GRWTSK/Topology/GeneralTopology/IntermediateValue/Variant786525c2a6ff8f69c77a2e49049d3f89901d0bd08482adaa28581c154a39687f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2742548e6ec6837aa689a4b49dff6818714af2a6414598d6957d9975e727c6bf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IntermediateValue/Variant786525c2a6ff8f69c77a2e49049d3f89901d0bd08482adaa28581c154a39687f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec11d809-83ee-1dca-2a6a-f333a6c5e7b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–367.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsClosed.Icc_subset_of_forall_exists_lt {a b : α} {s : Set α} (hs : IsClosed (s ∩ Icc a b))
    (hb : b ∈ s) (hgt : ∀ x ∈ s ∩ Ioc a b, ∀ y ∈ Iio x, (s ∩ Ico y x).Nonempty) : Icc a b ⊆ s := by
  intro y hy
  have : IsClosed (s ∩ Icc y b) := by
    suffices s ∩ Icc y b = s ∩ Icc a b ∩ Icc y b from this ▸ hs.inter isClosed_Icc
    grind [Icc_subset_Icc_left, inter_eq_self_of_subset_right, inter_assoc]
  exact IsClosed.mem_of_ge_of_forall_exists_lt this hb hy.2 fun x hx ↦
    hgt x ⟨hx.1, Ioc_subset_Ioc_left hy.1 hx.2⟩ y hx.2.1

variable [DenselyOrdered α] {a b : α}

/-- A "continuous induction principle" for a closed interval: if a set `s` meets `[a, b]`
on a closed subset, contains `a`, and for any `x ∈ [a, b)` such that `[a, x]` is included in `s`,
the set `s` includes some open neighborhood of `x` within `(x, +∞)`, then `[a, b] ⊆ s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IntermediateValue/Variant786525c2a6ff8f69c77a2e49049d3f89901d0bd08482adaa28581c154a39687f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IntermediateValue/Variant786525c2a6ff8f69c77a2e49049d3f89901d0bd08482adaa28581c154a39687f.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec58c516e95199231596874e646f4157df3bc781` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
