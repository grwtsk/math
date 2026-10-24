# sum_filter_pairs_eq_sum_filter_antidiagonal_powersetCard_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04775b10-e548-7007-0392-1fa2d1352f09",
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
  "slug": "sum-filter-pairs-eq-sum-filter-antidiagonal-powersetcard-sum--1617cf5bd79d06c51d87e854",
  "source": {
    "blob": "162ff87bb0c867897d0f1efa568abc8e43973c67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 178,
    "path": "GRWTSK/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1617cf5bd79d06c51d87e854ed4a5fca45ca6aa72879a6df0e99f1c3b05a0058",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04775b10-e548-7007-0392-1fa2d1352f09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sum_filter_pairs_eq_sum_filter_antidiagonal_powersetCard_sum (k : ℕ)
    (f : Finset σ × σ → MvPolynomial σ R) :
    ∑ t ∈ pairs σ k with #t.1 < k, f t =
      ∑ a ∈ antidiagonal k with a.fst < k, ∑ A ∈ powersetCard a.fst univ, ∑ j, f (A, j) := by
  rw [filter_pairs_lt, sum_product, sum_disjiUnion]
  refine sum_nbij' (fun n ↦ (n, k - n)) Prod.fst ?_ ?_ ?_ ?_ ?_ <;>
    simp +contextual [@eq_comm _ _ k, le_of_lt]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `162ff87bb0c867897d0f1efa568abc8e43973c67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
