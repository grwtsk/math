# IsVanishingOn.disjoint_dsupport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2714333e11680678384601c8b9dfb6746a0ec495",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 147,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9301a707-e73b-6b9a-0b13-9013c96232a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e174370b-1228-599e-fa7d-548bbcb44681",
  "kind": "theorem",
  "lexical_name": "IsVanishingOn.disjoint_dsupport",
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
  "slug": "isvanishingon-disjoint-dsupport--eb51548eba594cefdd016620",
  "source": {
    "blob": "2714333e11680678384601c8b9dfb6746a0ec495",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 147,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb51548eba594cefdd016620f1833ff59820058f9ca8ab58d158b46b5455e6da",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e174370b-1228-599e-fa7d-548bbcb44681`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsVanishingOn.disjoint_dsupport (h : IsVanishingOn f s) (s_open : IsOpen s) :
    Disjoint s (dsupport f) := by
  rw [← Set.subset_compl_iff_disjoint_right, dsupport_compl_eq]
  exact Set.subset_sUnion_of_mem ⟨h, s_open⟩

end Zero

end dsupport

section normed

variable [FunLike F α β] [PseudoMetricSpace α] [Zero β] [Zero V]

variable {f : F → V}

/-- The complement of the support is given by all *bounded* open sets on which `f` vanishes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2714333e11680678384601c8b9dfb6746a0ec495` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
