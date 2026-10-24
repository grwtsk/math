# toGraphviz

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f606c33d24be43404735a7e18e1342e1118581cdf5649b6b553c31b514b76055",
  "kind": "def",
  "lexical_name": "toGraphviz",
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
  "slug": "tographviz--b0c7a848518cc7fc6a2e6550",
  "source": {
    "blob": "3bae1d9abbf3d69f00d2aa6297e5be306c80a487",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 411,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8ca1e8bbd30d89dae4c519ce0e8c7d719070b27ebab59a301570b8588573984b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b0c7a848518cc7fc6a2e6550980b287986316b65f8ac7ef52f89e96255e64a3e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8ca1e8bbd30d89dae4c519ce0e8c7d719070b27ebab59a301570b8588573984b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f606c33d24be43404735a7e18e1342e1118581cdf5649b6b553c31b514b76055`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 411–448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toGraphviz {α : Type} [DecidableEq α] [ToString α] [Hashable α] (entry : Entrypoint α) :
    String :=
  let ⟨⟨decls, _, hinv, _, _⟩, ⟨idx, invert, h⟩⟩ := entry
  let (dag, s) := go "" decls hinv idx h |>.run ∅
  let nodes := s.fold (fun x y ↦ x ++ toGraphvizString decls y) ""
  "Digraph AIG {" ++ nodes ++ dag ++ "}"
where
  go {α : Type} [DecidableEq α] [ToString α] [Hashable α] (acc : String) (decls : Array (Decl α))
      (hinv : IsDAG α decls) (idx : Nat) (hidx : idx < decls.size) :
      StateM (HashSet (Fin decls.size)) String := do
    let fidx : Fin decls.size := Fin.mk idx hidx
    if (← get).contains fidx then
      return acc
    modify (fun s ↦ s.insert fidx)
    match elem : decls[idx] with
    | Decl.false => return acc
    | Decl.atom _ => return acc
    | Decl.gate lhs rhs =>
      let lidx := lhs.gate
      let linv := lhs.invert
      let ridx := rhs.gate
      let rinv := rhs.invert
      let curr := s!"{idx} -> {lidx}{invEdgeStyle linv}; {idx} -> {ridx}{invEdgeStyle rinv};"
      let hlr := hinv hidx elem
      let laig ← go (acc ++ curr) decls hinv lidx (by omega)
      go laig decls hinv ridx (by omega)
  invEdgeStyle (isInv : Bool) : String :=
    if isInv then " [color=red]" else " [color=blue]"
  toGraphvizString {α : Type} [DecidableEq α] [ToString α] [Hashable α] (decls : Array (Decl α))
      (idx : Fin decls.size) : String :=
    match decls[idx] with
    | Decl.false => s!"{idx} [label=\"{false}\", shape=box];"
    | Decl.atom i => s!"{idx} [label=\"{i}\", shape=doublecircle];"
    | Decl.gate .. => s!"{idx} [label=\"{idx} ∧\",shape=trapezium];"

/--
A vector of references into `aig`. This is the `AIG` analog of `BitVec`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8ca1e8bbd30d89dae4c519ce0e8c7d719070b27ebab59a301570b8588573984b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8ca1e8bbd30d89dae4c519ce0e8c7d719070b27ebab59a301570b8588573984b.lean#L411).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bae1d9abbf3d69f00d2aa6297e5be306c80a487` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
