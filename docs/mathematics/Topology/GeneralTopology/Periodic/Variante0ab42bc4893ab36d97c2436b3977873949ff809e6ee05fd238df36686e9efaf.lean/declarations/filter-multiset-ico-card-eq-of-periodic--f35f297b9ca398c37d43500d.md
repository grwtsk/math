# filter_multiset_Ico_card_eq_of_periodic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1b6abf4-82e4-526f-b668-954f87b93663",
  "kind": "theorem",
  "lexical_name": "filter_multiset_Ico_card_eq_of_periodic",
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
  "slug": "filter-multiset-ico-card-eq-of-periodic--f35f297b9ca398c37d43500d",
  "source": {
    "blob": "dd04e43cf7875b14a9e9ea42fa0f4aaaba11cc0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 55,
    "path": "GRWTSK/Topology/GeneralTopology/Periodic/Variante0ab42bc4893ab36d97c2436b3977873949ff809e6ee05fd238df36686e9efaf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f35f297b9ca398c37d43500d23fc7cfa79c05e6307ae2e79c462ce60a9f38b1e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Periodic/Variante0ab42bc4893ab36d97c2436b3977873949ff809e6ee05fd238df36686e9efaf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1b6abf4-82e4-526f-b668-954f87b93663`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem filter_multiset_Ico_card_eq_of_periodic (n a : ℕ) (p : ℕ → Prop) [DecidablePred p]
    (pp : Periodic p a) : card (filter p (Ico n (n + a))) = a.count p := by
  rw [count_eq_card_filter_range, Finset.card, Finset.filter_val, Finset.range_val, ←
    multiset_Ico_map_mod n, ← map_count_True_eq_filter_card, ← map_count_True_eq_filter_card,
    map_map]
  congr; funext n
  exact (Function.Periodic.map_mod_nat pp n).symm
#align nat.filter_multiset_Ico_card_eq_of_periodic Nat.filter_multiset_Ico_card_eq_of_periodic

end Multiset

section Finset

open Finset

/-- An interval of length `a` filtered over a periodic predicate of period `a` has cardinality
equal to the number naturals below `a` for which `p a` is true. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Periodic/Variante0ab42bc4893ab36d97c2436b3977873949ff809e6ee05fd238df36686e9efaf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Periodic/Variante0ab42bc4893ab36d97c2436b3977873949ff809e6ee05fd238df36686e9efaf.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd04e43cf7875b14a9e9ea42fa0f4aaaba11cc0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
