# FP.finset_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8d50950-56a6-cbd0-ce13-36c9a9a14271",
  "kind": "theorem",
  "lexical_name": "FP.finset_prod",
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
  "slug": "fp-finset-prod--baa0c91d7f21f759c1e2fce2",
  "source": {
    "blob": "4eb67fbd0e2a57a2ae106b45fc9250e3f576f84f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 245,
    "path": "GRWTSK/Topology/GeneralTopology/Hindman/Variantbca09fda75a809eaacee8583083c43b2804535510ddfc7bc1309cd1cc80fc2b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:baa0c91d7f21f759c1e2fce2d9c6a1e7dfe0a62d26f8065ea4f59cc5b07b7f32",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hindman/Variantbca09fda75a809eaacee8583083c43b2804535510ddfc7bc1309cd1cc80fc2b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8d50950-56a6-cbd0-ce13-36c9a9a14271`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FP.finset_prod {M} [CommMonoid M] (a : Stream' M) (s : Finset ℕ) (hs : s.Nonempty) :
    (s.prod fun i => a.get i) ∈ FP a := by
  refine FP_drop_subset_FP _ (s.min' hs) ?_
  induction s using Finset.strongInduction with | H s ih => _
  rw [← Finset.mul_prod_erase _ _ (s.min'_mem hs), ← Stream'.head_drop]
  rcases (s.erase (s.min' hs)).eq_empty_or_nonempty with h | h
  · rw [h, Finset.prod_empty, mul_one]
    exact FP.head _
  · apply FP.cons
    rw [Stream'.tail_eq_drop, Stream'.drop_drop, add_comm]
    refine Set.mem_of_subset_of_mem ?_ (ih _ (Finset.erase_ssubset <| s.min'_mem hs) h)
    have : s.min' hs + 1 ≤ (s.erase (s.min' hs)).min' h :=
      Nat.succ_le_of_lt (Finset.min'_lt_of_mem_erase_min' _ _ <| Finset.min'_mem _ _)
    obtain ⟨d, hd⟩ := Nat.exists_eq_add_of_le this
    rw [hd, ← Stream'.drop_drop, add_comm]
    apply FP_drop_subset_FP

end Hindman
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hindman/Variantbca09fda75a809eaacee8583083c43b2804535510ddfc7bc1309cd1cc80fc2b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hindman/Variantbca09fda75a809eaacee8583083c43b2804535510ddfc7bc1309cd1cc80fc2b0.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4eb67fbd0e2a57a2ae106b45fc9250e3f576f84f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
