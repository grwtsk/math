# esymm_mul_psum_summand_to_weight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a255f0f4-3883-1cb0-176d-647892838fd3",
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
  "slug": "esymm-mul-psum-summand-to-weight--c33d56ef639bea5bf7255cae",
  "source": {
    "blob": "945ec68bc7f38ecfc16505c7ae16e6a5c5c6fe36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 212,
    "path": "GRWTSK/Topology/GeneralTopology/NewtonIdentities/Variant60bf919d6e9c06bc95c387e6dada2041bd98ff89a4ab1cd21349e7a68571ab76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c33d56ef639bea5bf7255caeb62d9c17451f3408f8e8e7cb89b52ab86327f90e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NewtonIdentities/Variant60bf919d6e9c06bc95c387e6dada2041bd98ff89a4ab1cd21349e7a68571ab76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a255f0f4-3883-1cb0-176d-647892838fd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–221.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NewtonIdentities/Variant60bf919d6e9c06bc95c387e6dada2041bd98ff89a4ab1cd21349e7a68571ab76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NewtonIdentities/Variant60bf919d6e9c06bc95c387e6dada2041bd98ff89a4ab1cd21349e7a68571ab76.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `945ec68bc7f38ecfc16505c7ae16e6a5c5c6fe36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
