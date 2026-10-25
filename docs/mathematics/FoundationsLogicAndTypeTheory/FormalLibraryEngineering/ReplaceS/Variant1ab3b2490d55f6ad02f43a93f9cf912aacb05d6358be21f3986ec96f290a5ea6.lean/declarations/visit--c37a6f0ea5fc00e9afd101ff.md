# visit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d4516dd90188754ae3a85817f7035bac2bb68172a28d21a32d77f3942683b584",
  "kind": "def",
  "lexical_name": "visit",
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
  "slug": "visit--c37a6f0ea5fc00e9afd101ff",
  "source": {
    "blob": "4be9e6165409747673700a049bf80ed4c3c063be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 41,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReplaceS/Variant1ab3b2490d55f6ad02f43a93f9cf912aacb05d6358be21f3986ec96f290a5ea6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c37a6f0ea5fc00e9afd101ffae13135e50c57e5b56abff98079eecfb53391293",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReplaceS/Variant1ab3b2490d55f6ad02f43a93f9cf912aacb05d6358be21f3986ec96f290a5ea6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d4516dd90188754ae3a85817f7035bac2bb68172a28d21a32d77f3942683b584`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[specialize] def visit (e : Expr) (offset : Nat) (fn : Expr → Nat → AlphaShareBuilderM (Option Expr)) : M Expr := do
  match e with
  | .lit _ | .mvar _ | .bvar _ | .fvar _ | .const _ _ | .sort _ => unreachable!
  | .app f a => e.updateAppS! (← visitChild f offset fn) (← visitChild a offset fn)
  | .mdata _ a => e.updateMDataS! (← visitChild a offset fn)
  | .proj _ _ a => e.updateProjS! (← visitChild a offset fn)
  | .forallE _ d b _ => e.updateForallS! (← visitChild d offset fn) (← visitChild b (offset+1) fn)
  | .lam _ d b _ => e.updateLambdaS! (← visitChild d offset fn) (← visitChild b (offset+1) fn)
  | .letE _ t v b _ => e.updateLetS! (← visitChild t offset fn) (← visitChild v offset fn) (← visitChild b (offset+1) fn)
end

/--
Similar to `replace_fn` in the kernel, but assumes input is maximally shared, and ensures
output is also maximally shared.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReplaceS/Variant1ab3b2490d55f6ad02f43a93f9cf912aacb05d6358be21f3986ec96f290a5ea6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReplaceS/Variant1ab3b2490d55f6ad02f43a93f9cf912aacb05d6358be21f3986ec96f290a5ea6.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4be9e6165409747673700a049bf80ed4c3c063be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
