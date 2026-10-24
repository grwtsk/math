# finsetSum_eq_sup_iff_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23ce6813-5b20-df2f-31cc-b0f3df836d7d",
  "kind": "theorem",
  "lexical_name": "finsetSum_eq_sup_iff_disjoint",
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
  "slug": "finsetsum-eq-sup-iff-disjoint--007e9b656c1897af13de01e1",
  "source": {
    "blob": "2bc3e3149f5ca39613936ebd060708d589e28c51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 821,
    "line": 803,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant728b8f36b2e634b939216c2a1738a499946c0e7ef1023efc362d8d0ab10e7e4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:007e9b656c1897af13de01e1ba010eb3c57399f9bf43c7e8c99d241b08d6c6f4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finset/Variant728b8f36b2e634b939216c2a1738a499946c0e7ef1023efc362d8d0ab10e7e4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23ce6813-5b20-df2f-31cc-b0f3df836d7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 803–821.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finsetSum_eq_sup_iff_disjoint [DecidableEq α] {i : Finset β} {f : β → Multiset α} :
    i.sum f = i.sup f ↔ ∀ x ∈ i, ∀ y ∈ i, x ≠ y → Disjoint (f x) (f y) := by
  induction i using Finset.cons_induction_on with
  | empty =>
    simp only [Finset.notMem_empty, IsEmpty.forall_iff, imp_true_iff, Finset.sum_empty,
      Finset.sup_empty, bot_eq_zero]
  | cons z i hz hr =>
    simp_rw [Finset.sum_cons hz, Finset.sup_cons, Finset.mem_cons, Multiset.sup_eq_union,
      forall_eq_or_imp, Ne, not_true_eq_false, IsEmpty.forall_iff, true_and,
      imp_and, forall_and, ← hr, @eq_comm _ z]
    have := fun x (H : x ∈ i) => ne_of_mem_of_not_mem H hz
    simp +contextual only [this, not_false_iff, true_imp_iff]
    simp_rw [← disjoint_finsetSum_left, ← disjoint_finsetSum_right, disjoint_comm, ← and_assoc,
      and_self_iff]
    exact add_eq_union_left_of_le (Finset.sup_le fun x hx => le_sum_of_mem (mem_map_of_mem f hx))

@[deprecated (since := "2026-04-08")]
alias finset_sum_eq_sup_iff_disjoint := finsetSum_eq_sup_iff_disjoint

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finset/Variant728b8f36b2e634b939216c2a1738a499946c0e7ef1023efc362d8d0ab10e7e4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant728b8f36b2e634b939216c2a1738a499946c0e7ef1023efc362d8d0ab10e7e4d.lean#L803).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bc3e3149f5ca39613936ebd060708d589e28c51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
