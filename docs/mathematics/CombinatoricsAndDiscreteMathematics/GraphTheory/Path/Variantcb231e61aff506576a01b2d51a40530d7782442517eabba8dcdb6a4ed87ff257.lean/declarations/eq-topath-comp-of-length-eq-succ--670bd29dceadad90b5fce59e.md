# eq_toPath_comp_of_length_eq_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1777595-300f-e352-15e5-448f51b8114b",
  "kind": "lemma",
  "lexical_name": "eq_toPath_comp_of_length_eq_succ",
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
  "slug": "eq-topath-comp-of-length-eq-succ--670bd29dceadad90b5fce59e",
  "source": {
    "blob": "8715831abe0a66215bbc4c85cfe4930ff7f04085",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 165,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantcb231e61aff506576a01b2d51a40530d7782442517eabba8dcdb6a4ed87ff257.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:670bd29dceadad90b5fce59e709384a6493c2c0f7fa145b6a3e9e16b980fd527",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantcb231e61aff506576a01b2d51a40530d7782442517eabba8dcdb6a4ed87ff257.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1777595-300f-e352-15e5-448f51b8114b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_toPath_comp_of_length_eq_succ (p : Path a b) {n : ℕ}
    (hp : p.length = n + 1) :
    ∃ (c : V) (f : a ⟶ c) (q : Quiver.Path c b) (_ : q.length = n),
      p = f.toPath.comp q := by
  induction p generalizing n with
  | nil => simp at hp
  | @cons c d p q h =>
    cases n
    · rw [length_cons, Nat.zero_add, Nat.add_eq_right] at hp
      obtain rfl := eq_of_length_zero p hp
      obtain rfl := eq_nil_of_length_zero p hp
      exact ⟨d, q, nil, rfl, rfl⟩
    · rw [length_cons, Nat.add_right_cancel_iff] at hp
      obtain ⟨x, q'', p'', hl, rfl⟩ := h hp
      exact ⟨x, q'', p''.cons q, by simpa, rfl⟩

section Decomposition

variable {V : Type*} [Quiver V] {a b : V} (p : Path a b)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantcb231e61aff506576a01b2d51a40530d7782442517eabba8dcdb6a4ed87ff257.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantcb231e61aff506576a01b2d51a40530d7782442517eabba8dcdb6a4ed87ff257.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8715831abe0a66215bbc4c85cfe4930ff7f04085` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
