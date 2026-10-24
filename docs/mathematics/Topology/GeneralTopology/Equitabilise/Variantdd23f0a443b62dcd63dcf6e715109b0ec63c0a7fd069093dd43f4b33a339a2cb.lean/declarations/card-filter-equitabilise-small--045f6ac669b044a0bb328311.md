# card_filter_equitabilise_small

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7cca7ccd-fe91-245d-f213-6db0e2fe9031",
  "kind": "theorem",
  "lexical_name": "card_filter_equitabilise_small",
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
  "slug": "card-filter-equitabilise-small--045f6ac669b044a0bb328311",
  "source": {
    "blob": "d6593e833e55fb2efcd4c438ab253e7317e2b9e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 174,
    "path": "GRWTSK/Topology/GeneralTopology/Equitabilise/Variantdd23f0a443b62dcd63dcf6e715109b0ec63c0a7fd069093dd43f4b33a339a2cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:045f6ac669b044a0bb3283112bc6b174d77af69c4dd7feb4d7fefa0e290ff04d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Equitabilise/Variantdd23f0a443b62dcd63dcf6e715109b0ec63c0a7fd069093dd43f4b33a339a2cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7cca7ccd-fe91-245d-f213-6db0e2fe9031`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_filter_equitabilise_small (hm : m ≠ 0) :
    #{u ∈ (P.equitabilise h).parts | #u = m} = a := by
  refine (mul_eq_mul_right_iff.1 <| (add_left_inj (b * (m + 1))).1 ?_).resolve_right hm
  rw [h, ← (P.equitabilise h).sum_card_parts]
  have hunion :
    (P.equitabilise h).parts =
      {u ∈ (P.equitabilise h).parts | #u = m} ∪ {u ∈ (P.equitabilise h).parts | #u = m + 1} := by
    rw [← filter_or, filter_true_of_mem]
    exact fun x => card_eq_of_mem_parts_equitabilise
  nth_rw 2 [hunion]
  rw [sum_union, sum_const_nat fun x hx => (mem_filter.1 hx).2,
    sum_const_nat fun x hx => (mem_filter.1 hx).2, P.card_filter_equitabilise_big]
  refine disjoint_filter_filter' _ _ ?_
  intro x ha hb i h
  apply succ_ne_self m _
  exact (hb i h).symm.trans (ha i h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Equitabilise/Variantdd23f0a443b62dcd63dcf6e715109b0ec63c0a7fd069093dd43f4b33a339a2cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Equitabilise/Variantdd23f0a443b62dcd63dcf6e715109b0ec63c0a7fd069093dd43f4b33a339a2cb.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6593e833e55fb2efcd4c438ab253e7317e2b9e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
