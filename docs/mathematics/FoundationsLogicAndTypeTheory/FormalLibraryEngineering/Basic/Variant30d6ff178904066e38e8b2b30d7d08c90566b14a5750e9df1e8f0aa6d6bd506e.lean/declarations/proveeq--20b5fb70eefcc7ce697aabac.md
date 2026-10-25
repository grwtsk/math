# proveEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:67063ce378b8e8df725bf84c7115d85ed9c336cb2a7ba66e086527b682fb6fca",
  "kind": "def",
  "lexical_name": "proveEq",
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
  "slug": "proveeq--20b5fb70eefcc7ce697aabac",
  "source": {
    "blob": "c0556d34bf7c0e9bdaf9836960c6b93fc2c23d35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1128,
    "line": 1103,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant30d6ff178904066e38e8b2b30d7d08c90566b14a5750e9df1e8f0aa6d6bd506e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:20b5fb70eefcc7ce697aabac583c56e75c39712c8e67c65fb9e2abc371ae7342",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant30d6ff178904066e38e8b2b30d7d08c90566b14a5750e9df1e8f0aa6d6bd506e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:67063ce378b8e8df725bf84c7115d85ed9c336cb2a7ba66e086527b682fb6fca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1103–1128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def proveEq (g : MVarId) : AtomM Unit := do
  let some (α, e₁, e₂) := (← whnfR <|← instantiateMVars <|← g.getType).eq?
    | throwError "ring failed: not an equality"
  let .sort u ← whnf (← inferType α) | unreachable!
  let v ← try u.dec catch _ => throwError "not a type{indentExpr α}"
  have α : Q(Type v) := α
  have e₁ : Q($α) := e₁; have e₂ : Q($α) := e₂
  let sα ← synthInstanceQ (q(CommSemiring $α) : Q(Type v))
  let c ← mkCache sα
  profileitM Exception "ring" (← getOptions) do
    let ⟨a, va, pa⟩ ← eval sα c e₁
    let ⟨b, vb, pb⟩ ← eval sα c e₂
    unless va.eq vb do
      let g ← mkFreshExprMVar (← (← ringCleanupRef.get) q($a = $b))
      throwError "ring failed, ring expressions not equal\n{g.mvarId!}"
    let pb : Q($e₂ = $a) := pb
    g.assign q(of_eq $pa $pb)

/--
Tactic for solving equations of *commutative* (semi)rings,
allowing variables in the exponent.

* This version of `ring` fails if the target is not an equality.
* The variant `ring1!` will use a more aggressive reducibility setting
  to determine equality of atoms.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant30d6ff178904066e38e8b2b30d7d08c90566b14a5750e9df1e8f0aa6d6bd506e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant30d6ff178904066e38e8b2b30d7d08c90566b14a5750e9df1e8f0aa6d6bd506e.lean#L1103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0556d34bf7c0e9bdaf9836960c6b93fc2c23d35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
