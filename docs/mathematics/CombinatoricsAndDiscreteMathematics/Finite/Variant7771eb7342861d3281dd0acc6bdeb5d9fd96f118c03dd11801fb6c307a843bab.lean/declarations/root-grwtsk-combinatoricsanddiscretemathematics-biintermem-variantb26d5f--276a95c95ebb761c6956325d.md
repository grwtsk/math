# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.BiInterMem.Variantb26d5f2f5e115eb5733aef6a27f4607628921704d5e17c9935c2861733c44017.Set.Finite.eventuallySubset_iUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b87db3c-ffd0-d517-d8de-f8d1e1af2bbb",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.BiInterMem.Variantb26d5f2f5e115eb5733aef6a27f4607628921704d5e17c9935c2861733c44017.Set.Finite.eventuallySubset_iUnion",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-biintermem-variantb26d5f--276a95c95ebb761c6956325d",
  "source": {
    "blob": "93f8cffa6faaef3d47ff4938d16268a191cb2b2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 322,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant7771eb7342861d3281dd0acc6bdeb5d9fd96f118c03dd11801fb6c307a843bab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:276a95c95ebb761c6956325d939e1b40a1868d06e0568aa9feefa84fbf072a91",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finite/Variant7771eb7342861d3281dd0acc6bdeb5d9fd96f118c03dd11801fb6c307a843bab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b87db3c-ffd0-d517-d8de-f8d1e1af2bbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.BiInterMem.Variantb26d5f2f5e115eb5733aef6a27f4607628921704d5e17c9935c2861733c44017.Set.Finite.eventuallySubset_iUnion {ι : Type*} {s : Set ι} (hs : s.Finite)
    {f g : ι → Set α} (hle : ∀ i ∈ s, f i ≤ᶠ[l] g i) : (⋃ i ∈ s, f i) ≤ᶠ[l] (⋃ i ∈ s, g i) := by
  have := hs.to_subtype
  rw [biUnion_eq_iUnion, biUnion_eq_iUnion]
  exact .iUnion fun i ↦ hle i.1 i.2

alias EventuallySubset.biUnion := Set.Finite.eventuallySubset_iUnion

@[deprecated (since := "2026-08-14")]
alias _root_.Set.Finite.eventuallyLE_iUnion := Set.Finite.eventuallySubset_iUnion

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finite/Variant7771eb7342861d3281dd0acc6bdeb5d9fd96f118c03dd11801fb6c307a843bab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant7771eb7342861d3281dd0acc6bdeb5d9fd96f118c03dd11801fb6c307a843bab.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93f8cffa6faaef3d47ff4938d16268a191cb2b2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
