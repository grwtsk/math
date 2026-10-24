# IsDynCoverOf.nonempty_inter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4dcadd7f-3a64-90dd-163f-0ad7127cd4f3",
  "kind": "lemma",
  "lexical_name": "IsDynCoverOf.nonempty_inter",
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
  "slug": "isdyncoverof-nonempty-inter--c728d49572d88b1247734e09",
  "source": {
    "blob": "987f6dbe76df7782caa08b769b82ea34d94c03ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 118,
    "path": "GRWTSK/Topology/GeneralTopology/CoverEntropy/Variantb706356c687f438ad3e3656962b2ccc8d9f166f7430ea916d6c33b62c97c46cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c728d49572d88b1247734e0941efe64304a066ea056e66e71da06d74dd9ee94c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CoverEntropy/Variantb706356c687f438ad3e3656962b2ccc8d9f166f7430ea916d6c33b62c97c46cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4dcadd7f-3a64-90dd-163f-0ad7127cd4f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsDynCoverOf.nonempty_inter {T : X → X} {F : Set X} {U : Set (X × X)} {n : ℕ} {s : Finset X}
    (h : IsDynCoverOf T F U n s) :
    ∃ t : Finset X, IsDynCoverOf T F U n t ∧ t.card ≤ s.card
    ∧ ∀ x ∈ t, ((ball x (dynEntourage T U n)) ∩ F).Nonempty := by
  classical
  use Finset.filter (fun x : X ↦ ((ball x (dynEntourage T U n)) ∩ F).Nonempty) s
  simp only [Finset.coe_filter, Finset.mem_filter, and_imp, imp_self, implies_true, and_true]
  refine ⟨fun y y_F ↦ ?_, Finset.card_mono (s.filter_subset _)⟩
  specialize h y_F
  simp only [Finset.coe_sort_coe, mem_iUnion, Subtype.exists, exists_prop] at h
  obtain ⟨z, z_s, y_Bz⟩ := h
  simp only [coe_setOf, mem_setOf_eq, mem_iUnion, Subtype.exists, exists_prop]
  exact ⟨z, ⟨z_s, nonempty_of_mem ⟨y_Bz, y_F⟩⟩, y_Bz⟩

/-- From a dynamical cover `s` with entourage `U` and time `m`, we construct covers with entourage
`U ○ U` and any multiple `m * n` of `m` with controlled cardinality. This lemma is the first step
in a submultiplicative-like property of `coverMincard`, with consequences such as explicit bounds
for the topological entropy (`coverEntropyInfEntourage_le_card_div`) and an equality between
two notions of topological entropy (`coverEntropyInf_eq_coverEntropySup_of_inv`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CoverEntropy/Variantb706356c687f438ad3e3656962b2ccc8d9f166f7430ea916d6c33b62c97c46cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CoverEntropy/Variantb706356c687f438ad3e3656962b2ccc8d9f166f7430ea916d6c33b62c97c46cd.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `987f6dbe76df7782caa08b769b82ea34d94c03ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
