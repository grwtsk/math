# evalEqPropStep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:20fe0d7784fd3ff009cb7b4bd63a749c226fb59705ff8817e9777fe81190b4e8",
  "kind": "def",
  "lexical_name": "evalEqPropStep",
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
  "slug": "evaleqpropstep--36edc01cc15d347a9fa85430",
  "source": {
    "blob": "520ff197627e366e79f2b686da46ab4f8590b5c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc8343445246c2756d10926613d4712b405b95318c40c8b71c08d82b875d5c691.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:36edc01cc15d347a9fa854301a3ba92aa6f19e44946300d8513a48f44d11b21b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc8343445246c2756d10926613d4712b405b95318c40c8b71c08d82b875d5c691.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:20fe0d7784fd3ff009cb7b4bd63a749c226fb59705ff8817e9777fe81190b4e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalEqPropStep (e : Expr) (eq : Bool) (mkNeProof : SimpM Expr) : SimpM Step := do
  let α := e.appFn!.appFn!.appArg!
  let a := e.appFn!.appArg!
  let u := e.appFn!.appFn!.appFn!.constLevels!.head!
  if eq then
    let proof := mkApp2 (mkConst ``eq_true) e (mkApp2 (mkConst ``Eq.refl [u]) α a)
    return .done { expr := mkConst ``True, proof? := proof }
  else
    let neProof ← mkNeProof
    let proof := mkApp2 (mkConst ``eq_false) e neProof
    return .done { expr := mkConst ``False, proof? := proof }

/--
Like `evalPropStep`, but specialized for `@Ne.{u} α a b`. When the values differ, calls
`mkNeProof` to build a proof of `a ≠ b`. When equal, uses `eq_false (not_not_intro rfl)`
which requires no kernel evaluation.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc8343445246c2756d10926613d4712b405b95318c40c8b71c08d82b875d5c691.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc8343445246c2756d10926613d4712b405b95318c40c8b71c08d82b875d5c691.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `520ff197627e366e79f2b686da46ab4f8590b5c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
