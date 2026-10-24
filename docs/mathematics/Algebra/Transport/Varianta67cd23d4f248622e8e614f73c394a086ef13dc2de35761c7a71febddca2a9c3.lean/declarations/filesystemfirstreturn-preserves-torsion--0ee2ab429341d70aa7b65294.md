# filesystemFirstReturn_preserves_torsion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5505da8c-ca73-1bb6-788c-b1f322c7ccc5",
  "kind": "theorem",
  "lexical_name": "filesystemFirstReturn_preserves_torsion",
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
  "slug": "filesystemfirstreturn-preserves-torsion--0ee2ab429341d70aa7b65294",
  "source": {
    "blob": "9d9605fd23587f3b24b0cca999e66b61b3627721",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 90,
    "path": "GRWTSK/Algebra/Transport/Varianta67cd23d4f248622e8e614f73c394a086ef13dc2de35761c7a71febddca2a9c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ee2ab429341d70aa7b65294c5e000e0df4c6f2e7fcdd27aef38c706760b235e",
  "verification": {
    "reference": "docs/verification/Algebra/Transport/Varianta67cd23d4f248622e8e614f73c394a086ef13dc2de35761c7a71febddca2a9c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5505da8c-ca73-1bb6-788c-b1f322c7ccc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem filesystemFirstReturn_preserves_torsion
    {Snapshot : Type u}
    {F : Type v}
    [Field F] [Fintype F] [Algebra BitMatrix.FiniteField.GF2 F]
    {r : Nat}
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (rowPerm : ∀ k, Equiv.Perm (Fin k → F))
    (M : FilesystemEditPresentation Snapshot)
    (A : M.Action (filesystemFirstReturnPerm C E rowPerm))
    (q : Nat)
    (x : M.toChainComplex.homology q) :
    IsOfFinAddOrder
        ((A.toHomologicalLift).homologyAddEquiv q x) ↔
      IsOfFinAddOrder x :=
  (A.toHomologicalLift).homologyIso_isOfFinAddOrder_iff q x

end FilesystemHomology
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Transport/Varianta67cd23d4f248622e8e614f73c394a086ef13dc2de35761c7a71febddca2a9c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Transport/Varianta67cd23d4f248622e8e614f73c394a086ef13dc2de35761c7a71febddca2a9c3.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d9605fd23587f3b24b0cca999e66b61b3627721` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
