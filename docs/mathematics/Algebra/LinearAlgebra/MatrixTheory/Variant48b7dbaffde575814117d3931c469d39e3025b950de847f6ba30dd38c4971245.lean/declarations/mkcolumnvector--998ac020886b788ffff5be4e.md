# mkColumnVector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a9717609985ee68b5953df9e5fc19fb63adf050e2e464e0d198a54011785093",
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
  "slug": "mkcolumnvector--998ac020886b788ffff5be4e",
  "source": {
    "blob": "f4b3f5544cd2a5dc8c4d1edecf409ad21da38bf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 57,
    "path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant48b7dbaffde575814117d3931c469d39e3025b950de847f6ba30dd38c4971245.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:998ac020886b788ffff5be4e9bc0a7d68efa327ec590844960748c2a8d1df2ff",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/Variant48b7dbaffde575814117d3931c469d39e3025b950de847f6ba30dd38c4971245.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4a9717609985ee68b5953df9e5fc19fb63adf050e2e464e0d198a54011785093`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkColumnVector (elems : Array Term) : Term := Unhygienic.run `(!![$[$elems];*])

-- Check that the `!![$[$[$rows],*];*]` case can deal with empty arrays even though it uses sepBy1
run_elab do
  let e ← Term.elabTerm (mkMatrix #[]) q(Matrix (Fin 0) (Fin 0) Nat)
  Term.synthesizeSyntheticMVarsUsingDefault
  let e ← instantiateMVars e
  guard <| e == q(!![] : Matrix (Fin 0) (Fin 0) Nat)

run_elab do
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

section to_expr

open Lean Meta

/-- info: !![1 + 1, 1 + 2; 2 + 1, 2 + 2] : Matrix (Fin 2) (Fin 2) ℕ -/
#guard_msgs in
#check by_elab return Matrix.mkLiteralQ !![q(1 + 1), q(1 + 2); q(2 + 1), q(2 + 2)]

run_elab do
  let x := !![1, 2; 3, 4]
  guard (← withReducible <| isDefEq (toExpr x) q(!![1, 2; 3, 4]))

end to_expr

section delaborators

/-- info: !![0, 1, 2; 3, 4, 5] : Matrix (Fin 2) (Fin 3) ℕ -/
#guard_msgs in #check (!![0, 1, 2; 3, 4, 5] : Matrix (Fin 2) (Fin 3) ℕ)

/-- info: !![0, 1, 2; 3, 4, 5] 1 1 : ℕ -/
#guard_msgs in #check (!![0, 1, 2; 3, 4, 5] : Matrix (Fin 2) (Fin 3) ℕ) 1 1

/-- info: !![,,,] : Matrix (Fin 0) (Fin 3) ℕ -/
#guard_msgs in #check (!![,,,] : Matrix (Fin 0) (Fin 3) ℕ)

/-- info: !![;;;] : Matrix (Fin 3) (Fin 0) ℕ -/
#guard_msgs in #check (!![;;;] : Matrix (Fin 3) (Fin 0) ℕ)

/-- info: !![] : Matrix (Fin 0) (Fin 0) ℕ -/
#guard_msgs in #check (!![] : Matrix (Fin 0) (Fin 0) ℕ)

end delaborators

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/Variant48b7dbaffde575814117d3931c469d39e3025b950de847f6ba30dd38c4971245.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Matrix/Variant48b7dbaffde575814117d3931c469d39e3025b950de847f6ba30dd38c4971245.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4b3f5544cd2a5dc8c4d1edecf409ad21da38bf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
