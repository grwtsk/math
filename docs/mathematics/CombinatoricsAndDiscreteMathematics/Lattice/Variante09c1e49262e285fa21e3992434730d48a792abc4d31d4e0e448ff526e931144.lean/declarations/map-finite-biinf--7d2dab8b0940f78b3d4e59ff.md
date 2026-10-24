# map_finite_biInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2abed7a0c0c4167f47ba852ca9a8dea647531148",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 278,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e09c1e49262e285fa21e3992434730d48a792abc4d31d4e0e448ff526e931144.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1ee04b96-b8e3-f6e2-a51d-7393731dc98a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f2be526b-c3cb-f988-b7ed-4dfc723c1242",
  "kind": "lemma",
  "lexical_name": "map_finite_biInf",
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
  "slug": "map-finite-biinf--7d2dab8b0940f78b3d4e59ff",
  "source": {
    "blob": "2abed7a0c0c4167f47ba852ca9a8dea647531148",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 278,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variante09c1e49262e285fa21e3992434730d48a792abc4d31d4e0e448ff526e931144.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d2dab8b0940f78b3d4e59ffab0682e317a3061fd72f896f8f517f14827607f3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Lattice/Variante09c1e49262e285fa21e3992434730d48a792abc4d31d4e0e448ff526e931144.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2be526b-c3cb-f988-b7ed-4dfc723c1242`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_finite_biInf {F ι : Type*} [CompleteLattice α] [CompleteLattice β] [FunLike F α β]
    [InfTopHomClass F α β] {s : Set ι} (hs : s.Finite) (f : F) (g : ι → α) :
    f (⨅ x ∈ s, g x) = ⨅ x ∈ s, f (g x) := by
  have := map_finset_inf f hs.toFinset g
  simp only [Finset.inf_eq_iInf, hs.mem_toFinset, comp_apply] at this
  exact this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Lattice/Variante09c1e49262e285fa21e3992434730d48a792abc4d31d4e0e448ff526e931144.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variante09c1e49262e285fa21e3992434730d48a792abc4d31d4e0e448ff526e931144.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2abed7a0c0c4167f47ba852ca9a8dea647531148` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
