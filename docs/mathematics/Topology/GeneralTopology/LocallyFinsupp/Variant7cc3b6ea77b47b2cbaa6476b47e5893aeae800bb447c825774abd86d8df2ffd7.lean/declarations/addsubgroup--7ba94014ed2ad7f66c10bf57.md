# addSubgroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:df3c805e7fb3c5dddd3c385f5a1424a5e1d2eaf89342980d922b7d62f9f9e98e",
  "kind": "def",
  "lexical_name": "addSubgroup",
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
  "slug": "addsubgroup--7ba94014ed2ad7f66c10bf57",
  "source": {
    "blob": "974235a538e4173ae0b41ea303119de62b6cb342",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 173,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7ba94014ed2ad7f66c10bf57c1c9fd7ccafe3807d68fe3c9c5b84573b38fbb92",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:df3c805e7fb3c5dddd3c385f5a1424a5e1d2eaf89342980d922b7d62f9f9e98e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def addSubgroup [AddCommGroup Y] : AddSubgroup (X → Y) where
  carrier := {f | f.support ⊆ U ∧ ∀ z ∈ U, ∃ t ∈ 𝓝 z, Set.Finite (t ∩ f.support)}
  zero_mem' := by
    simp only [support_subset_iff, ne_eq, mem_setOf_eq, Pi.zero_apply, not_true_eq_false,
      IsEmpty.forall_iff, implies_true, support_zero', inter_empty, finite_empty, and_true,
      true_and]
    exact fun _ _ ↦ ⟨⊤, univ_mem⟩
  add_mem' {f g} hf hg := by
    constructor
    · intro x hx
      contrapose! hx
      simp [notMem_support.1 fun a ↦ hx (hf.1 a), notMem_support.1 fun a ↦ hx (hg.1 a)]
    · intro z hz
      obtain ⟨t₁, ht₁⟩ := hf.2 z hz
      obtain ⟨t₂, ht₂⟩ := hg.2 z hz
      use t₁ ∩ t₂, inter_mem ht₁.1 ht₂.1
      apply Set.Finite.subset (s := (t₁ ∩ f.support) ∪ (t₂ ∩ g.support)) (ht₁.2.union ht₂.2)
      intro a ha
      simp_all only [support_subset_iff, ne_eq, mem_setOf_eq, union_self, subset_inter_iff,
        mem_inter_iff, mem_support, Pi.add_apply, mem_union, true_and]
      by_contra hCon
      push_neg at hCon
      simp_all
  neg_mem' {f} hf := by
    simp_all

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `974235a538e4173ae0b41ea303119de62b6cb342` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
