# popMaxAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:db73d934d0ce85278616d39f3bd7814c4b323eeff60e8bf4e31bddfc9d0fbffd",
  "kind": "def",
  "lexical_name": "popMaxAux",
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
  "slug": "popmaxaux--221e1685bb5cb7e6c083fdb9",
  "source": {
    "blob": "3bad79cf647bfc75fc03516db7f61a4593cbb92b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 114,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variante92bc70e35401a12e3ad783d65096784bd9d99a35dc09305ea1198549beebf05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:221e1685bb5cb7e6c083fdb945ed534daf5322e8793b4bd064b3d69e5d2bd787",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variante92bc70e35401a12e3ad783d65096784bd9d99a35dc09305ea1198549beebf05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:db73d934d0ce85278616d39f3bd7814c4b323eeff60e8bf4e31bddfc9d0fbffd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def popMaxAux {lt} (self : BinaryHeap α lt) : {a' : BinaryHeap α lt // a'.size = self.size - 1} :=
  match e: self.1.size with
  | 0 => ⟨self, by simp [size, e]⟩
  | n+1 =>
    have h0 := by rw [e]; apply Nat.succ_pos
    have hn := by rw [e]; apply Nat.lt_succ_self
    if hn0 : 0 < n then
      let a := self.1.swap ⟨0, h0⟩ ⟨n, hn⟩ |>.pop
      ⟨⟨heapifyDown lt a ⟨0, by rwa [Array.size_pop, Array.size_swap, e]⟩⟩,
        by simp [size]⟩
    else
      ⟨⟨self.1.pop⟩, by simp [size]⟩

/-- `O(log n)`. Remove the maximum element from a `BinaryHeap`.
Call `max` first to actually retrieve the maximum element. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variante92bc70e35401a12e3ad783d65096784bd9d99a35dc09305ea1198549beebf05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryHeap/Variante92bc70e35401a12e3ad783d65096784bd9d99a35dc09305ea1198549beebf05.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bad79cf647bfc75fc03516db7f61a4593cbb92b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
