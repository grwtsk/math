# introsHygienic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:418aa3bacced4de58886ceba52e64cc6106ce12d8289da618e5d64a56175631d",
  "kind": "def",
  "lexical_name": "introsHygienic",
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
  "slug": "introshygienic--ee4c30d26e0031ed8a3797f9",
  "source": {
    "blob": "c4d992dedf70719b4c5f6212d61db676aefb4c9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 110,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaec81086c800e16f7578fbc6eaac50e357df93e42f7924ca9b14cb274858fae9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee4c30d26e0031ed8a3797f985395c262f509e476df0ad90fe151c3e8b29b14b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaec81086c800e16f7578fbc6eaac50e357df93e42f7924ca9b14cb274858fae9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:418aa3bacced4de58886ceba52e64cc6106ce12d8289da618e5d64a56175631d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def introsHygienic (goal : MVarId) (overrides : Array Name := #[]) : VCGenM MVarId :=
  goal.withContext do
    let rec collectBinders (type : Expr) (acc : Array Name) : Array Name :=
      match type with
      | .forallE n _ b _ => collectBinders b (acc.push n)
      | .letE n _ _ b _ => collectBinders b (acc.push n)
      | _ => acc
    let binderNames := collectBinders (← goal.getType) #[]
    if binderNames.isEmpty then return goal
    let mut names := #[]
    for h : i in *...binderNames.size do
      names := names.push (← Meta.mkFreshBinderNameForTactic (overrides[i]?.getD binderNames[i]))
    let .goal _ goal ← Sym.intros goal names | return goal
    return goal

/--
Simplify the goal's target with the configured hypothesis simp methods (a no-op without
`Context.hypSimpMethods`), threading the persistent simp cache through `VCGenM`'s state.
`.noProgress` is forwarded to the caller.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaec81086c800e16f7578fbc6eaac50e357df93e42f7924ca9b14cb274858fae9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaec81086c800e16f7578fbc6eaac50e357df93e42f7924ca9b14cb274858fae9.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4d992dedf70719b4c5f6212d61db676aefb4c9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
