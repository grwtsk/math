# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:39ac38f86e5c39a9157538266d14e42a75eac96a361ade691baba07808bc9310",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--3f82ec9c5aa4bf69e0fb6c95",
  "source": {
    "blob": "91a58cc564e64ab120e4b553b4c4e44adbf13722",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 95,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Datatypes/Variant321c0b5398254aebe4dbfe3dc272540e3af686c0158d18948a63d39bf679c23d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f82ec9c5aa4bf69e0fb6c9547235b64dd1254e01f719c0702f1b757a153ae01",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Datatypes/Variant321c0b5398254aebe4dbfe3dc272540e3af686c0158d18948a63d39bf679c23d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:39ac38f86e5c39a9157538266d14e42a75eac96a361ade691baba07808bc9310`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : UsableInSimplexAlgorithm SparseMatrix where
  getElem mat i j := mat.data[i]!.getD j 0
  setElem mat i j v :=
    if v == 0 then
      ⟨mat.data.modify i fun row => row.erase j⟩
    else
      ⟨mat.data.modify i fun row => row.insert j v⟩
  getValues mat :=
    mat.data.zipIdx.foldl (init := []) fun acc (row, i) =>
      let rowVals := row.toList.map fun (j, v) => (i, j, v)
      rowVals ++ acc
  ofValues {n _ : Nat} vals := Id.run do
    let mut data : Array (Std.HashMap Nat Rat) := Array.replicate n ∅
    for ⟨i, j, v⟩ in vals do
      if v != 0 then
        data := data.modify i fun row => row.insert j v
    return ⟨data⟩
  swapRows mat i j := ⟨mat.data.swapIfInBounds i j⟩
  subtractRow mat i j coef :=
    let newData := mat.data.modify j fun row =>
      mat.data[i]!.fold (fun cur k val =>
        let newVal := (cur.getD k 0) - coef * val
        if newVal != 0 then cur.insert k newVal else cur.erase k
      ) row
    ⟨newData⟩
  divideRow mat i coef :=
    let newData : Array (Std.HashMap Nat Rat) := mat.data.modify i fun row =>
      row.fold (fun cur k v => cur.insert k (v / coef)) row
    ⟨newData⟩

/--
`Tableau` is a structure the Simplex Algorithm operates on. The `i`-th row of `mat` expresses the
variable `basic[i]` as a linear combination of variables from `free`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Datatypes/Variant321c0b5398254aebe4dbfe3dc272540e3af686c0158d18948a63d39bf679c23d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Datatypes/Variant321c0b5398254aebe4dbfe3dc272540e3af686c0158d18948a63d39bf679c23d.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91a58cc564e64ab120e4b553b4c4e44adbf13722` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
