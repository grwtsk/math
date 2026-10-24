# pool_subset_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0c6530b-116d-c2d9-a146-073fa452a0fe",
  "kind": "lemma",
  "lexical_name": "pool_subset_Icc",
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
  "slug": "pool-subset-icc--121d6885e8f4b121662b9eb1",
  "source": {
    "blob": "f41a433509c68b5617dde6a0c14f3f028f34a577",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 89,
    "path": "GRWTSK/Algebra/Imo2015Q6/Variantdcf34b91a459437d01c350146477d164f10336554b44899ab2beb10fe24906a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:121d6885e8f4b121662b9eb1a1e3f023777229f654d96f14b00f8ff78cd087d2",
  "verification": {
    "reference": "docs/verification/Algebra/Imo2015Q6/Variantdcf34b91a459437d01c350146477d164f10336554b44899ab2beb10fe24906a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0c6530b-116d-c2d9-a146-073fa452a0fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pool_subset_Icc : ∀ {t}, pool a t ⊆ Icc 0 2014
  | 0 => by simp [pool]
  | t + 1 => by
    intro x hx
    simp_rw [pool, mem_map, Equiv.coe_toEmbedding, Equiv.subRight_apply] at hx
    obtain ⟨y, my, ey⟩ := hx
    suffices y ∈ Icc 1 2015 by rw [mem_Icc] at this ⊢; omega
    rw [mem_insert, mem_erase] at my; rcases my with h | ⟨h₁, h₂⟩
    · exact h ▸ ha.1 t
    · have := pool_subset_Icc h₂; rw [mem_Icc] at this ⊢; omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Imo2015Q6/Variantdcf34b91a459437d01c350146477d164f10336554b44899ab2beb10fe24906a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Imo2015Q6/Variantdcf34b91a459437d01c350146477d164f10336554b44899ab2beb10fe24906a9.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f41a433509c68b5617dde6a0c14f3f028f34a577` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
