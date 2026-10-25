# toPartENat_le_iff_of_le_aleph0

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a25a10f7-6500-c651-f694-02e69e47ebaf",
  "kind": "lemma",
  "lexical_name": "toPartENat_le_iff_of_le_aleph0",
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
  "slug": "topartenat-le-iff-of-le-aleph0--072570e3a2a91cfc5d050b63",
  "source": {
    "blob": "24a656c167f3993ac71f2f5558c4692fb8598fc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1936,
    "line": 1918,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variantbc078d238dab837ccce977f1182409092dc43188f896a91e74d35f79cec69ce3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:072570e3a2a91cfc5d050b63b8ead5e1d5580c83fad524a3c1b5b5f123b73dfd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variantbc078d238dab837ccce977f1182409092dc43188f896a91e74d35f79cec69ce3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a25a10f7-6500-c651-f694-02e69e47ebaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1918–1936.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toPartENat_le_iff_of_le_aleph0 {c c' : Cardinal} (h : c ≤ ℵ₀) :
  toPartENat c ≤ toPartENat c' ↔ c ≤ c' := by
  cases lt_or_ge c ℵ₀ with
  | inl hc =>
    rw [toPartENat_apply_of_lt_aleph0 hc]
    cases lt_or_ge c' ℵ₀ with
    | inl hc' =>
      rw [toPartENat_apply_of_lt_aleph0 hc', PartENat.coe_le_coe]
      exact toNat_le_iff_le_of_lt_aleph0 hc hc'
    | inr hc' =>
      simp only [toPartENat_apply_of_aleph0_le hc',
      le_top, true_iff]
      exact le_trans h hc'
  | inr hc =>
    rw [toPartENat_apply_of_aleph0_le hc]
    simp only [top_le_iff, toPartENat_eq_top_iff_le_aleph0,
    le_antisymm h hc]
#align to_part_enat_le_iff_le_of_le_aleph_0 Cardinal.toPartENat_le_iff_of_le_aleph0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variantbc078d238dab837ccce977f1182409092dc43188f896a91e74d35f79cec69ce3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variantbc078d238dab837ccce977f1182409092dc43188f896a91e74d35f79cec69ce3.lean#L1918).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24a656c167f3993ac71f2f5558c4692fb8598fc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
