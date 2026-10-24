# centralizer_eq_top_iff_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ea53faf-0159-73ec-3587-ab0787b7ee3e",
  "kind": "theorem",
  "lexical_name": "centralizer_eq_top_iff_subset",
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
  "slug": "centralizer-eq-top-iff-subset--0f5ddf5518d6461d25bb409a",
  "source": {
    "blob": "7184b134be900bc3ea1d33cba28a62385ab38c03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 137,
    "path": "GRWTSK/Algebra/GroupTheory/Centralizer/Variant13bb2b5f363e2fdb07bba32a401f8cb766fb80aef43e4e43c9d3b6733d8e5062.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f5ddf5518d6461d25bb409aef96ce36d40e10df384e295644c7b3d9f37fd881",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Centralizer/Variant13bb2b5f363e2fdb07bba32a401f8cb766fb80aef43e4e43c9d3b6733d8e5062.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ea53faf-0159-73ec-3587-ab0787b7ee3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centralizer_eq_top_iff_subset {s : Set M} [Mul M] :
    centralizer s = Set.univ ↔ s ⊆ center M :=
  eq_top_iff.trans <| ⟨fun h _ hx _ => (h trivial _ hx).symm, fun h x _ _ hm => (h hm x).symm⟩
#align set.centralizer_eq_top_iff_subset Set.centralizer_eq_top_iff_subset
#align set.add_centralizer_eq_top_iff_subset Set.addCentralizer_eq_top_iff_subset

variable (M)

@[to_additive (attr := simp) addCentralizer_univ]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Centralizer/Variant13bb2b5f363e2fdb07bba32a401f8cb766fb80aef43e4e43c9d3b6733d8e5062.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Centralizer/Variant13bb2b5f363e2fdb07bba32a401f8cb766fb80aef43e4e43c9d3b6733d8e5062.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7184b134be900bc3ea1d33cba28a62385ab38c03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
