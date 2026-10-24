# IsSolvable.commutator_lt_top_of_nontrivial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec5237df-3442-5b36-c2b0-95f04b624f4a",
  "kind": "theorem",
  "lexical_name": "IsSolvable.commutator_lt_top_of_nontrivial",
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
  "slug": "issolvable-commutator-lt-top-of-nontrivial--d9dd928c6ce36f7c10a5e6ee",
  "source": {
    "blob": "74a7e7763b8847af8475a071c1b841860d49157d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 201,
    "path": "GRWTSK/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9dd928c6ce36f7c10a5e6eebf53c9dd8fb6765e37c4c6c6a15133debd9fe984",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec5237df-3442-5b36-c2b0-95f04b624f4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSolvable.commutator_lt_top_of_nontrivial [hG : IsSolvable G] [Nontrivial G] :
    commutator G < ⊤ := by
  rw [lt_top_iff_ne_top]
  obtain ⟨n, hn⟩ := hG
  contrapose! hn
  refine ne_of_eq_of_ne ?_ top_ne_bot
  induction n with
  | zero => exact derivedSeries_zero G
  | succ n h => rwa [derivedSeries_succ, h]

@[deprecated (since := "2026-07-16")]
alias _root_.IsSolvable.commutator_lt_top_of_nontrivial :=
  Group.IsSolvable.commutator_lt_top_of_nontrivial

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74a7e7763b8847af8475a071c1b841860d49157d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
