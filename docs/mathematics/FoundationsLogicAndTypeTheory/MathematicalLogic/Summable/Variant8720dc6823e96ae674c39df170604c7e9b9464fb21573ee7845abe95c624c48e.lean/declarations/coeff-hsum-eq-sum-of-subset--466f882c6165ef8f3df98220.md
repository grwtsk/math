# coeff_hsum_eq_sum_of_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e71321f0-b7c4-1b9e-3f1e-bc992b84c1ff",
  "kind": "theorem",
  "lexical_name": "coeff_hsum_eq_sum_of_subset",
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
  "slug": "coeff-hsum-eq-sum-of-subset--466f882c6165ef8f3df98220",
  "source": {
    "blob": "b2cd91e61520d4739ee258f5c80957be7777cd77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 199,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variant8720dc6823e96ae674c39df170604c7e9b9464fb21573ee7845abe95c624c48e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:466f882c6165ef8f3df982201a7b583e804e0dc0b957fcc2224d4f9d8bcecfd6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variant8720dc6823e96ae674c39df170604c7e9b9464fb21573ee7845abe95c624c48e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e71321f0-b7c4-1b9e-3f1e-bc992b84c1ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_hsum_eq_sum_of_subset {s : SummableFamily Γ R α} {g : Γ} {t : Finset α}
    (h : { a | (s a).coeff g ≠ 0 } ⊆ t) : s.hsum.coeff g = ∑ i ∈ t, (s i).coeff g := by
  simp only [coeff_hsum, finsum_eq_sum _ (s.finite_co_support _)]
  exact sum_subset (Set.Finite.toFinset_subset.mpr h) (by simp)

@[deprecated (since := "2025-01-31")] alias hsum_coeff_eq_sum_of_subset :=
  coeff_hsum_eq_sum_of_subset

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variant8720dc6823e96ae674c39df170604c7e9b9464fb21573ee7845abe95c624c48e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variant8720dc6823e96ae674c39df170604c7e9b9464fb21573ee7845abe95c624c48e.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2cd91e61520d4739ee258f5c80957be7777cd77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
