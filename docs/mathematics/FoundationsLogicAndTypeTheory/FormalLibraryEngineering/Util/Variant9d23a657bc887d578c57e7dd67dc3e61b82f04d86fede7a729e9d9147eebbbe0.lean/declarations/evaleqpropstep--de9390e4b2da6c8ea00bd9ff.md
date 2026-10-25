# evalEqPropStep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab58d21dadea3a78a3c5662c9d37aa695a6e9d505f3a1334516b03c9dc2d9a6c",
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
  "slug": "evaleqpropstep--de9390e4b2da6c8ea00bd9ff",
  "source": {
    "blob": "7b9962b08217143d7e252e1125f8c3b70109052c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 40,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant9d23a657bc887d578c57e7dd67dc3e61b82f04d86fede7a729e9d9147eebbbe0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de9390e4b2da6c8ea00bd9ff79d80a8b767c44a982ad3f7ebc64e1e6ef2ba8c2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant9d23a657bc887d578c57e7dd67dc3e61b82f04d86fede7a729e9d9147eebbbe0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab58d21dadea3a78a3c5662c9d37aa695a6e9d505f3a1334516b03c9dc2d9a6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–56.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant9d23a657bc887d578c57e7dd67dc3e61b82f04d86fede7a729e9d9147eebbbe0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant9d23a657bc887d578c57e7dd67dc3e61b82f04d86fede7a729e9d9147eebbbe0.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b9962b08217143d7e252e1125f8c3b70109052c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
