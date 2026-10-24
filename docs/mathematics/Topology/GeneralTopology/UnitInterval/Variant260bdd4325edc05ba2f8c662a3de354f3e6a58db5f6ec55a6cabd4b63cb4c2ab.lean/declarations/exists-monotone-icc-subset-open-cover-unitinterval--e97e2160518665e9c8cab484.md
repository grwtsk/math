# exists_monotone_Icc_subset_open_cover_unitInterval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4fef794d563e11e47a027740fc7a996d332049f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 296,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/260bdd4325edc05ba2f8c662a3de354f3e6a58db5f6ec55a6cabd4b63cb4c2ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5f6ec999-a559-c2b0-e605-f211ef06efc8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:37e8bd28-eb8e-7ed5-8480-d1bb53dcb9bd",
  "kind": "lemma",
  "lexical_name": "exists_monotone_Icc_subset_open_cover_unitInterval",
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
  "slug": "exists-monotone-icc-subset-open-cover-unitinterval--e97e2160518665e9c8cab484",
  "source": {
    "blob": "4fef794d563e11e47a027740fc7a996d332049f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 296,
    "path": "GRWTSK/Topology/GeneralTopology/UnitInterval/Variant260bdd4325edc05ba2f8c662a3de354f3e6a58db5f6ec55a6cabd4b63cb4c2ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e97e2160518665e9c8cab484385653debe3959a6112719b0d4e07269696a5c14",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UnitInterval/Variant260bdd4325edc05ba2f8c662a3de354f3e6a58db5f6ec55a6cabd4b63cb4c2ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37e8bd28-eb8e-7ed5-8480-d1bb53dcb9bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_monotone_Icc_subset_open_cover_unitInterval {ι} {c : ι → Set I}
    (hc₁ : ∀ i, IsOpen (c i)) (hc₂ : univ ⊆ ⋃ i, c i) : ∃ t : ℕ → I, t 0 = 0 ∧
      Monotone t ∧ (∃ n, ∀ m ≥ n, t m = 1) ∧ ∀ n, ∃ i, Icc (t n) (t (n + 1)) ⊆ c i := by
  simp_rw [← Subtype.coe_inj]
  exact exists_monotone_Icc_subset_open_cover_Icc zero_le_one hc₁ hc₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UnitInterval/Variant260bdd4325edc05ba2f8c662a3de354f3e6a58db5f6ec55a6cabd4b63cb4c2ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UnitInterval/Variant260bdd4325edc05ba2f8c662a3de354f3e6a58db5f6ec55a6cabd4b63cb4c2ab.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fef794d563e11e47a027740fc7a996d332049f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
