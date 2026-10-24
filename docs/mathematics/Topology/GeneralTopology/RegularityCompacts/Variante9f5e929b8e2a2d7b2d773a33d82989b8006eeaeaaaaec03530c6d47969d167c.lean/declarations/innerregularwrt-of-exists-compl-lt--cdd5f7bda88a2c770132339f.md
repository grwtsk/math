# innerRegularWRT_of_exists_compl_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9899159d-11a5-7b50-0ee2-1f6309ca620a",
  "kind": "theorem",
  "lexical_name": "innerRegularWRT_of_exists_compl_lt",
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
  "slug": "innerregularwrt-of-exists-compl-lt--cdd5f7bda88a2c770132339f",
  "source": {
    "blob": "33bd25384eb2abe88ef3f47a23b70756efe52abc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 76,
    "path": "GRWTSK/Topology/GeneralTopology/RegularityCompacts/Variante9f5e929b8e2a2d7b2d773a33d82989b8006eeaeaaaaec03530c6d47969d167c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdd5f7bda88a2c770132339fd080e379cd9c1dfd62f1b9e5247c312b2d68e76e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RegularityCompacts/Variante9f5e929b8e2a2d7b2d773a33d82989b8006eeaeaaaaec03530c6d47969d167c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9899159d-11a5-7b50-0ee2-1f6309ca620a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem innerRegularWRT_of_exists_compl_lt {p q : Set α → Prop} (hpq : ∀ A B, p A → q B → p (A ∩ B))
    (hμ : ∀ ε, 0 < ε → ∃ K, p K ∧ μ Kᶜ < ε) :
    μ.InnerRegularWRT p q := by
  intro A hA r hr
  obtain ⟨K, hK, hK_subset, h_lt⟩ : ∃ K, p K ∧ K ⊆ A ∧ μ (A \ K) < μ A - r := by
    obtain ⟨K', hpK', hK'_lt⟩ := hμ (μ A - r) (tsub_pos_of_lt hr)
    refine ⟨K' ∩ A, hpq K' A hpK' hA, inter_subset_right, ?_⟩
    · refine (measure_mono fun x ↦ ?_).trans_lt hK'_lt
      simp only [diff_inter_self_eq_diff, mem_diff, mem_compl_iff, and_imp, imp_self, imp_true_iff]
  refine ⟨K, hK_subset, hK, ?_⟩
  have h_lt' : μ A - μ K < μ A - r := le_measure_diff.trans_lt h_lt
  exact lt_of_tsub_lt_tsub_left h_lt'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RegularityCompacts/Variante9f5e929b8e2a2d7b2d773a33d82989b8006eeaeaaaaec03530c6d47969d167c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RegularityCompacts/Variante9f5e929b8e2a2d7b2d773a33d82989b8006eeaeaaaaec03530c6d47969d167c.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33bd25384eb2abe88ef3f47a23b70756efe52abc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
