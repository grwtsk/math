# mkHeap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d4363466a80c88289b14886906c53a4a9e8cb673b241d005b2e75db7327c682a",
  "kind": "def",
  "lexical_name": "mkHeap",
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
  "slug": "mkheap--a71e1cca688ab0b1d9e3cb6e",
  "source": {
    "blob": "e1f62fb1f8b37560546b6c8e2777f776ef293123",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 46,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variant32a80f5fa4ce83eb212c1c20e914c6eb3115e79a810ff5897d3ad48dda413d88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a71e1cca688ab0b1d9e3cb6e5b84cb259ecb03489f558321e6dfa79497613f3a",
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

Occurrence: `declaration:d4363466a80c88289b14886906c53a4a9e8cb673b241d005b2e75db7327c682a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkHeap (lt : α → α → Bool) (a : Array α) : {a' : Array α // a'.size = a.size} :=
  let rec loop : (i : Nat) → (a : Array α) → i ≤ a.size → {a' : Array α // a'.size = a.size}
  | 0, a, _ => ⟨a, rfl⟩
  | i+1, a, h =>
    let h := Nat.lt_of_succ_le h
    let a' := heapifyDown lt a ⟨i, h⟩
    let ⟨a₂, h₂⟩ := loop i a' ((heapifyDown ..).2.symm ▸ le_of_lt h)
    ⟨a₂, h₂.trans a'.2⟩
  loop (a.size / 2) a (Nat.div_le_self ..)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variant32a80f5fa4ce83eb212c1c20e914c6eb3115e79a810ff5897d3ad48dda413d88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variant32a80f5fa4ce83eb212c1c20e914c6eb3115e79a810ff5897d3ad48dda413d88.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1f62fb1f8b37560546b6c8e2777f776ef293123` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
