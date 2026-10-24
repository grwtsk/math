# esymm_mul_psum_summand_to_weight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e32f077-32ee-2cd5-a358-875b99bf9e59",
  "kind": "theorem",
  "lexical_name": "esymm_mul_psum_summand_to_weight",
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
  "slug": "esymm-mul-psum-summand-to-weight--be113a05fc298152fced32fd",
  "source": {
    "blob": "162ff87bb0c867897d0f1efa568abc8e43973c67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 210,
    "path": "GRWTSK/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be113a05fc298152fced32fdaa076f354eed0eabada08ca84dfbaadaefd2b6ca",
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

Occurrence: `result:1e32f077-32ee-2cd5-a358-875b99bf9e59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem esymm_mul_psum_summand_to_weight (k : ℕ) (a : ℕ × ℕ) (ha : a ∈ antidiagonal k) :
    ∑ A ∈ powersetCard a.fst univ, ∑ j, weight σ R k (A, j) =
    (-1) ^ a.fst * esymm σ R a.fst * psum σ R a.snd := by
  simp only [esymm, psum, weight, ← mul_assoc, mul_sum]
  rw [sum_comm]
  refine sum_congr rfl fun x _ ↦ ?_
  rw [sum_mul]
  refine sum_congr rfl fun s hs ↦ ?_
  rw [mem_powersetCard_univ.mp hs, ← mem_antidiagonal.mp ha, add_sub_self_left]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `162ff87bb0c867897d0f1efa568abc8e43973c67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
