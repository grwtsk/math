# handleConst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8b8195093ce371e5b4ca6f18ff711704b43e475214587d6a34794d84072733d8",
  "kind": "def",
  "lexical_name": "handleConst",
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
  "slug": "handleconst--e8b51186333443abd9cec84a",
  "source": {
    "blob": "d444ffc407a56b7dae67dec365884c769d768c11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 268,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variante0b04fb88ff3228ce55cac597f089a4038bdbe3afdaaf2d1a7fcc4e6965a68d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e8b51186333443abd9cec84ac2001f609ca6a0a02322a842c625c4110c3362cf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variante0b04fb88ff3228ce55cac597f089a4038bdbe3afdaaf2d1a7fcc4e6965a68d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8b8195093ce371e5b4ca6f18ff711704b43e475214587d6a34794d84072733d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def handleConst : Simproc := fun e => do
  let .const n lvls := e | return .rfl
  let info ← getConstInfo n
  unless info.isDefinition do return .rfl
  let eType := info.type
  -- Fast path: a syntactically functional type cannot whnf to a non-function.
  if eType matches .forallE .. then return .rfl
  let eType ← whnfD eType
  if eType matches .forallE .. then return .rfl
  unless info.hasValue && info.levelParams.length == lvls.length do return .rfl
  let fBody ← instantiateValueLevelParams info lvls
  let fBody ← Sym.unfoldReducible fBody
  let eNew ← Sym.share fBody
  trace[Meta.Tactic.cbv.unfold] "const `{n}`:{indentExpr e}\n==>{indentExpr eNew}"
  return .step eNew (← Sym.mkEqRefl eNew)

/--
Pre-pass structural dispatch. Routes each expression form to the appropriate handler:
literals, projections, constants, applications (control flow first), and let-bindings
(non-dependent → `toBetaApp`, dependent → zeta-reduce). Binders and variables are
marked done immediately.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variante0b04fb88ff3228ce55cac597f089a4038bdbe3afdaaf2d1a7fcc4e6965a68d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variante0b04fb88ff3228ce55cac597f089a4038bdbe3afdaaf2d1a7fcc4e6965a68d8.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d444ffc407a56b7dae67dec365884c769d768c11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
