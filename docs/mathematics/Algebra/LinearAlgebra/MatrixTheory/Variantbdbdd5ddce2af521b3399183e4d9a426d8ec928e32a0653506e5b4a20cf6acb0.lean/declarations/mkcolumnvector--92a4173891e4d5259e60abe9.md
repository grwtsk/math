# mkColumnVector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bc99b95bb470862a473af9f18e851b5a202bcb206c4dbfce1d4e1c89f2f3ed59",
  "kind": "def",
  "lexical_name": "mkColumnVector",
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
  "slug": "mkcolumnvector--92a4173891e4d5259e60abe9",
  "source": {
    "blob": "e13ff85cceab2a7dcdb20b7a4e2c223a5244c66c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 62,
    "path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variantbdbdd5ddce2af521b3399183e4d9a426d8ec928e32a0653506e5b4a20cf6acb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:92a4173891e4d5259e60abe934bdccb58d5d6f559ed3ad9fe1fc898c4c82552e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/Variantbdbdd5ddce2af521b3399183e4d9a426d8ec928e32a0653506e5b4a20cf6acb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bc99b95bb470862a473af9f18e851b5a202bcb206c4dbfce1d4e1c89f2f3ed59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkColumnVector (elems : Array Term) : Term := Unhygienic.run `(!![$[$elems];*])

-- Check that the `!![$[$[$rows],*];*]` case can deal with empty arrays even though it uses sepBy1
run_cmd liftTermElabM do
  let e ← Term.elabTerm (mkMatrix #[]) q(Matrix (Fin 0) (Fin 0) Nat)
  Term.synthesizeSyntheticMVarsUsingDefault
  let e ← instantiateMVars e
  guard <| e == q(!![] : Matrix (Fin 0) (Fin 0) Nat)

  let e ← Term.elabTerm (mkColumnVector #[]) q(Matrix (Fin 0) (Fin 0) Nat)
  Term.synthesizeSyntheticMVarsUsingDefault
  let e ← instantiateMVars e
  guard <| e == q(!![] : Matrix (Fin 0) (Fin 0) Nat)

end safety

#guard !![1;2]       = of ![![1], ![2]]
#guard !![1,3]       = of ![![1,3]]
#guard !![1,2;3,4]   = of ![![1,2], ![3,4]]
#guard !![1,2;3,4;]  = of ![![1,2], ![3,4]]
#guard !![1,2,;3,4,] = of ![![1,2], ![3,4]]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/Variantbdbdd5ddce2af521b3399183e4d9a426d8ec928e32a0653506e5b4a20cf6acb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Matrix/Variantbdbdd5ddce2af521b3399183e4d9a426d8ec928e32a0653506e5b4a20cf6acb0.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e13ff85cceab2a7dcdb20b7a4e2c223a5244c66c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
