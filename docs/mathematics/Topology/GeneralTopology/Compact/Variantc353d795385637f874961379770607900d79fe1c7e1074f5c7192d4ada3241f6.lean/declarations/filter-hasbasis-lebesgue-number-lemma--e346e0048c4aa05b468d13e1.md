# Filter.HasBasis.lebesgue_number_lemma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "512aea0cbf062b629ac0e53194bfafae2ca8a034",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c353d795385637f874961379770607900d79fe1c7e1074f5c7192d4ada3241f6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:15b1ff17-70b0-93d3-387b-903558f4dd14",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:568dc335-68bd-9356-cc5e-93bcb9d094b8",
  "kind": "theorem",
  "lexical_name": "Filter.HasBasis.lebesgue_number_lemma",
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
  "slug": "filter-hasbasis-lebesgue-number-lemma--e346e0048c4aa05b468d13e1",
  "source": {
    "blob": "512aea0cbf062b629ac0e53194bfafae2ca8a034",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 71,
    "path": "GRWTSK/Topology/GeneralTopology/Compact/Variantc353d795385637f874961379770607900d79fe1c7e1074f5c7192d4ada3241f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e346e0048c4aa05b468d13e1f38227d39af7a4b59373f13849d55684da53d2b8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compact/Variantc353d795385637f874961379770607900d79fe1c7e1074f5c7192d4ada3241f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:568dc335-68bd-9356-cc5e-93bcb9d094b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Filter.HasBasis.lebesgue_number_lemma {ι' ι : Sort*} {p : ι' → Prop}
    {V : ι' → Set (α × α)} {U : ι → Set α} (hbasis : (𝓤 α).HasBasis p V) (hK : IsCompact K)
    (hopen : ∀ j, IsOpen (U j)) (hcover : K ⊆ ⋃ j, U j) :
    ∃ i, p i ∧ ∀ x ∈ K, ∃ j, ball x (V i) ⊆ U j := by
  refine (hbasis.exists_iff ?_).1 (lebesgue_number_lemma hK hopen hcover)
  exact fun s t hst ht x hx ↦ (ht x hx).imp fun i hi ↦ Subset.trans (ball_mono hst _) hi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compact/Variantc353d795385637f874961379770607900d79fe1c7e1074f5c7192d4ada3241f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compact/Variantc353d795385637f874961379770607900d79fe1c7e1074f5c7192d4ada3241f6.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `512aea0cbf062b629ac0e53194bfafae2ca8a034` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
