# multiplicity_eq_card_pow_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a9929cc2d5e8964bad57f537386b97a150c3d695",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 59,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bb5fd948671f7b5499a08587746f81ac09e90c44aaee85e97039fd04baadefe2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0710fd0c-fbd8-ef24-7d9d-768604df7234",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:52576cc3-cede-e689-5ca6-73a1d6800658",
  "kind": "theorem",
  "lexical_name": "multiplicity_eq_card_pow_dvd",
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
  "slug": "multiplicity-eq-card-pow-dvd--ecc2d72c7800f3f127397669",
  "source": {
    "blob": "a9929cc2d5e8964bad57f537386b97a150c3d695",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 59,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Multiplicity/Variantbb5fd948671f7b5499a08587746f81ac09e90c44aaee85e97039fd04baadefe2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecc2d72c7800f3f127397669ee2a52835264e4bfbc07e182797df527a87aa872",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Multiplicity/Variantbb5fd948671f7b5499a08587746f81ac09e90c44aaee85e97039fd04baadefe2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52576cc3-cede-e689-5ca6-73a1d6800658`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multiplicity_eq_card_pow_dvd {m n b : ℕ} (hm : m ≠ 1) (hn : 0 < n) (hb : log m n < b) :
    multiplicity m n = ↑((Finset.Ico 1 b).filter fun i => m ^ i ∣ n).card :=
  calc
    multiplicity m n = ↑(Ico 1 <| (multiplicity m n).get (finite_nat_iff.2 ⟨hm, hn⟩) + 1).card := by
      simp
    _ = ↑((Finset.Ico 1 b).filter fun i => m ^ i ∣ n).card :=
      congr_arg _ <|
        congr_arg card <|
          Finset.ext fun i => by
            rw [mem_filter, mem_Ico, mem_Ico, lt_succ_iff, ← @PartENat.coe_le_coe i,
              PartENat.natCast_get, ← pow_dvd_iff_le_multiplicity, and_right_comm]
            refine' (and_iff_left_of_imp fun h => lt_of_le_of_lt _ hb).symm
            cases' m with m
            · rw [zero_eq, zero_pow, zero_dvd_iff] at h
              exacts [(hn.ne' h.2).elim, h.1]
            exact le_log_of_pow_le (one_lt_iff_ne_zero_and_ne_one.2 ⟨m.succ_ne_zero, hm⟩)
                (le_of_dvd hn h.2)
#align nat.multiplicity_eq_card_pow_dvd Nat.multiplicity_eq_card_pow_dvd

namespace Prime

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Multiplicity/Variantbb5fd948671f7b5499a08587746f81ac09e90c44aaee85e97039fd04baadefe2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Multiplicity/Variantbb5fd948671f7b5499a08587746f81ac09e90c44aaee85e97039fd04baadefe2.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9929cc2d5e8964bad57f537386b97a150c3d695` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
