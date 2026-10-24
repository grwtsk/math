# Ico_filter_le_of_left_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "827dd9bda7ee4693f8e7e93b5895b60455737245",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 222,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c9857c9e-2a96-ed1c-f0d1-057dd09d2d26",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:753be0bc-01cd-172f-b972-b93091c5d292",
  "kind": "theorem",
  "lexical_name": "Ico_filter_le_of_left_le",
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
  "slug": "ico-filter-le-of-left-le--df9cd2063559812fea2a9376",
  "source": {
    "blob": "827dd9bda7ee4693f8e7e93b5895b60455737245",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 222,
    "path": "GRWTSK/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df9cd2063559812fea2a93769478e0ebe6d3749cb05fb6f060df657f9b842f7a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:753be0bc-01cd-172f-b972-b93091c5d292`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ico_filter_le_of_left_le [DecidablePred (c ≤ ·)] (hac : a ≤ c) :
    ((Ico a b).filter fun x => c ≤ x) = Ico c b := by
  rw [Ico, ← Finset.filter_val, Finset.Ico_filter_le_of_left_le hac]
  rfl

end Preorder

section PartialOrder

variable [PartialOrder α] [LocallyFiniteOrder α] {a b : α}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `827dd9bda7ee4693f8e7e93b5895b60455737245` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
