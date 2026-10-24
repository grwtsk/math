# Convex.Ioo_subset_of_mem_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7fac3ec-21c3-de0c-4cca-05f9e1931547",
  "kind": "lemma",
  "lexical_name": "Convex.Ioo_subset_of_mem_closure",
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
  "slug": "convex-ioo-subset-of-mem-closure--9c3db347cd1287fc7e3c78b1",
  "source": {
    "blob": "51283a0c387734d1c7798d121795287ba19867c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 433,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Topology/Variant5b71aa0b36ed1dc76a7a946c4d1c6eebcfbb98ec441acf957df3ded4699a8d14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c3db347cd1287fc7e3c78b199149f2f56e189e02754db27c373ba0c680816f4",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Topology/Variant5b71aa0b36ed1dc76a7a946c4d1c6eebcfbb98ec441acf957df3ded4699a8d14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7fac3ec-21c3-de0c-4cca-05f9e1931547`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 433–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Convex.Ioo_subset_of_mem_closure {s : Set 𝕜} (hs : Convex 𝕜 s) {a b : 𝕜}
    (has : a ∈ closure s) (hbs : b ∈ closure s) :
    Ioo a b ⊆ s := by
  cases subsingleton_or_nontrivial s with
  | inl hs_sub =>
    simp only [subsingleton_coe] at hs_sub
    simp [hs_sub.closure has hbs]
  | inr h' =>
    simp only [nontrivial_coe_sort] at h'
    calc Ioo a b
    _ = interior (Ioo a b) := interior_Ioo.symm
    _ ⊆ interior (openSegment 𝕜 a b) := interior_mono <| Ioo_subset_openSegment
    _ ⊆ interior (closure s) := interior_mono <| hs.closure.openSegment_subset has hbs
    _ = interior s := hs.interior_closure_eq_interior_of_nonempty_interior <|
      hs.nontrivial_iff_nonempty_interior.1 h'
    _ ⊆ s := interior_subset

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Topology/Variant5b71aa0b36ed1dc76a7a946c4d1c6eebcfbb98ec441acf957df3ded4699a8d14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Topology/Variant5b71aa0b36ed1dc76a7a946c4d1c6eebcfbb98ec441acf957df3ded4699a8d14.lean#L433).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51283a0c387734d1c7798d121795287ba19867c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
