# mPureIntroCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3f5f5e8149c3c5c85f7a12e5f5f2b544ea34db3d8719a376ba7d32fc45b367b",
  "kind": "def",
  "lexical_name": "mPureIntroCore",
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
  "slug": "mpureintrocore--76827a127a88172e309d93ed",
  "source": {
    "blob": "81114d88ecc3d99c4eac482cda24f2d88651594e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 70,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pure/Variantf8f918ba947ebded6842f8312b3eb3cef5765a130daf8ee23ada8d8c7f783231.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:76827a127a88172e309d93ed9a1d4e4683a55b1129318e3de8296bdb2c49d348",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pure/Variantf8f918ba947ebded6842f8312b3eb3cef5765a130daf8ee23ada8d8c7f783231.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3f5f5e8149c3c5c85f7a12e5f5f2b544ea34db3d8719a376ba7d32fc45b367b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mPureIntroCore [Monad m] [MonadLiftT MetaM m]
  (goal : MGoal)
  (k : Expr /-φ:Prop-/ → m (α × Expr)) : m (α × Expr) := do
  let φ ← mkFreshExprMVar (mkSort .zero)
  let inst ← synthInstance (mkApp3 (mkConst ``IsPure [goal.u]) goal.σs goal.target φ)
  let (a, hφ) ← k φ
  let prf := mkApp6 (mkConst ``Pure.intro [goal.u]) goal.σs goal.hyps goal.target φ inst hφ
  return (a, prf)

@[builtin_tactic Lean.Parser.Tactic.mpureIntro]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pure/Variantf8f918ba947ebded6842f8312b3eb3cef5765a130daf8ee23ada8d8c7f783231.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pure/Variantf8f918ba947ebded6842f8312b3eb3cef5765a130daf8ee23ada8d8c7f783231.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81114d88ecc3d99c4eac482cda24f2d88651594e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
