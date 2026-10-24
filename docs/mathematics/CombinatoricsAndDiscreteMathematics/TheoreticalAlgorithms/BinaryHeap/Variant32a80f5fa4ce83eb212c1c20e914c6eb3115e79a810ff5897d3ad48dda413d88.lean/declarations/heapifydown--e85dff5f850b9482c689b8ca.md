# heapifyDown

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c050c7857638f19e77f8013025d71a8831cb97ef1122171afcab9bbdce1ed710",
  "kind": "def",
  "lexical_name": "heapifyDown",
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
  "slug": "heapifydown--e85dff5f850b9482c689b8ca",
  "source": {
    "blob": "e1f62fb1f8b37560546b6c8e2777f776ef293123",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 18,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variant32a80f5fa4ce83eb212c1c20e914c6eb3115e79a810ff5897d3ad48dda413d88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e85dff5f850b9482c689b8ca6f1d6b60cb375963eb392bf525dfaf02bb3ab727",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variant32a80f5fa4ce83eb212c1c20e914c6eb3115e79a810ff5897d3ad48dda413d88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c050c7857638f19e77f8013025d71a8831cb97ef1122171afcab9bbdce1ed710`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def heapifyDown (lt : α → α → Bool) (a : Array α) (i : Fin a.size) :
  {a' : Array α // a'.size = a.size} :=
  let left := 2 * i.1 + 1
  let right := left + 1
  have left_le : i ≤ left := Nat.le_trans
    (by rw [Nat.succ_mul, Nat.one_mul]; exact Nat.le_add_left i i)
    (Nat.le_add_right ..)
  have right_le : i ≤ right := Nat.le_trans left_le (Nat.le_add_right ..)
  have i_le : i ≤ i := Nat.le_refl _
  have j : {j : Fin a.size // i ≤ j} := if h : left < a.size then
    if lt (a.get i) (a.get ⟨left, h⟩) then ⟨⟨left, h⟩, left_le⟩ else ⟨i, i_le⟩ else ⟨i, i_le⟩
  have j := if h : right < a.size then
    if lt (a.get j) (a.get ⟨right, h⟩) then ⟨⟨right, h⟩, right_le⟩ else j else j
  if h : i.1 = j then ⟨a, rfl⟩ else
    let a' := a.swap i j
    let j' := ⟨j, by rw [a.size_swap i j]; exact j.1.2⟩
    have : a'.size - j < a.size - i := by
      rw [a.size_swap i j]; exact Nat.sub_lt_sub_left i.2 <| Nat.lt_of_le_of_ne j.2 h
    let ⟨a₂, h₂⟩ := heapifyDown lt a' j'
    ⟨a₂, h₂.trans (a.size_swap i j)⟩
termination_by _ => a.size - i
decreasing_by assumption

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variant32a80f5fa4ce83eb212c1c20e914c6eb3115e79a810ff5897d3ad48dda413d88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variant32a80f5fa4ce83eb212c1c20e914c6eb3115e79a810ff5897d3ad48dda413d88.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1f62fb1f8b37560546b6c8e2777f776ef293123` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
