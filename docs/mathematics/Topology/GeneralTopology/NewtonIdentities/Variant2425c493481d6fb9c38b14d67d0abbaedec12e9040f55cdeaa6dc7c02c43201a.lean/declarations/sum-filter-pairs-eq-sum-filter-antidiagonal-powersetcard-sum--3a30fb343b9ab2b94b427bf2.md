# sum_filter_pairs_eq_sum_filter_antidiagonal_powersetCard_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fb0b6e77cc57c7eb931609605f60daae88e3ea7f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 167,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/2425c493481d6fb9c38b14d67d0abbaedec12e9040f55cdeaa6dc7c02c43201a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:81598f6e-0d8c-b035-4904-7b3d3c82a5ab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5d692990-1df7-68d5-f264-e3f4a2b15f6d",
  "kind": "theorem",
  "lexical_name": "sum_filter_pairs_eq_sum_filter_antidiagonal_powersetCard_sum",
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
  "slug": "sum-filter-pairs-eq-sum-filter-antidiagonal-powersetcard-sum--3a30fb343b9ab2b94b427bf2",
  "source": {
    "blob": "fb0b6e77cc57c7eb931609605f60daae88e3ea7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 167,
    "path": "GRWTSK/Topology/GeneralTopology/NewtonIdentities/Variant2425c493481d6fb9c38b14d67d0abbaedec12e9040f55cdeaa6dc7c02c43201a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a30fb343b9ab2b94b427bf2119b75795046660026a92be3633a51790986babe",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NewtonIdentities/Variant2425c493481d6fb9c38b14d67d0abbaedec12e9040f55cdeaa6dc7c02c43201a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d692990-1df7-68d5-f264-e3f4a2b15f6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sum_filter_pairs_eq_sum_filter_antidiagonal_powersetCard_sum (k : ℕ)
    (f : Finset σ × σ → MvPolynomial σ R) :
    ∑ t ∈ pairs σ k with #t.1 < k, f t =
      ∑ a ∈ antidiagonal k with a.fst < k, ∑ A ∈ powersetCard a.fst univ, ∑ j, f (A, j) := by
  rw [filter_pairs_lt, sum_product, sum_disjiUnion]
  refine sum_nbij' (fun n ↦ (n, k - n)) Prod.fst ?_ ?_ ?_ ?_ ?_ <;>
    simp +contextual [@eq_comm _ _ k, Nat.add_sub_cancel', le_of_lt]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NewtonIdentities/Variant2425c493481d6fb9c38b14d67d0abbaedec12e9040f55cdeaa6dc7c02c43201a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NewtonIdentities/Variant2425c493481d6fb9c38b14d67d0abbaedec12e9040f55cdeaa6dc7c02c43201a.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb0b6e77cc57c7eb931609605f60daae88e3ea7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
