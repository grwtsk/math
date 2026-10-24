# RelCWComplex.cellFrontier_subset_skeletonLT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:546fa4e0-d10e-ede5-6899-d83e194528a6",
  "kind": "lemma",
  "lexical_name": "RelCWComplex.cellFrontier_subset_skeletonLT",
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
  "slug": "relcwcomplex-cellfrontier-subset-skeletonlt--1887e844c7e4883ae605e1a3",
  "source": {
    "blob": "15311ad10986cc984a38ac7dee6e2fc5ae8a76f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 944,
    "line": 933,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb6e03e92c3da1ec69c33b001cc3ea367983a254f58f41aad1ead9a978fe895e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1887e844c7e4883ae605e1a3b0cf9d005cfd739503ce68089c4afd1ea2382a80",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantb6e03e92c3da1ec69c33b001cc3ea367983a254f58f41aad1ead9a978fe895e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:546fa4e0-d10e-ede5-6899-d83e194528a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 933–944.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma RelCWComplex.cellFrontier_subset_skeletonLT [RelCWComplex C D] (n : ℕ) (j : cell C n) :
    cellFrontier n j ⊆ skeletonLT C n := by
  obtain ⟨I, hI⟩ := cellFrontier_subset_base_union_finite_closedCell n j
  apply subset_trans hI
  rw [coe_skeletonLT]
  apply union_subset_union_right
  intro x xmem
  simp only [mem_iUnion, exists_prop] at xmem ⊢
  obtain ⟨i, iltn, j, _, xmem⟩ := xmem
  exact ⟨i, by norm_cast, j, xmem⟩

@[alias_in CWComplex]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantb6e03e92c3da1ec69c33b001cc3ea367983a254f58f41aad1ead9a978fe895e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantb6e03e92c3da1ec69c33b001cc3ea367983a254f58f41aad1ead9a978fe895e2.lean#L933).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15311ad10986cc984a38ac7dee6e2fc5ae8a76f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
