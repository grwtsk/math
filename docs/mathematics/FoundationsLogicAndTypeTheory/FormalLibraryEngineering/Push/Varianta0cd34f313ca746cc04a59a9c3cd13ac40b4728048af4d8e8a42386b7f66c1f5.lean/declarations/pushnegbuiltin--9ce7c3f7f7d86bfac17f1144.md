# pushNegBuiltin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:977a4ceeaaf96dc8bb7b4166ee945a715c87ccacf45f0a2e6d905051457d23ff",
  "kind": "def",
  "lexical_name": "pushNegBuiltin",
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
  "slug": "pushnegbuiltin--9ce7c3f7f7d86bfac17f1144",
  "source": {
    "blob": "734a5a1ab956d0a0a9362e968e54dc8231910429",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 94,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Push/Varianta0cd34f313ca746cc04a59a9c3cd13ac40b4728048af4d8e8a42386b7f66c1f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ce7c3f7f7d86bfac17f1144d5fa6506aa8ff5aeb360657633097a8c9c07bfe2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Push/Varianta0cd34f313ca746cc04a59a9c3cd13ac40b4728048af4d8e8a42386b7f66c1f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:977a4ceeaaf96dc8bb7b4166ee945a715c87ccacf45f0a2e6d905051457d23ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def pushNegBuiltin (cfg : Config) : Simp.Simproc := fun e => do
  let e := (← instantiateMVars e).cleanupAnnotations
  match e with
  | .app (.app (.const ``And _) p) q =>
    if cfg.distrib then
      return mkSimpStep (mkOr (mkNot p) (mkNot q)) (mkApp2 (.const ``not_and_or_eq []) p q)
    else
      return mkSimpStep (.forallE `_ p (mkNot q) .default) (mkApp2 (.const ``not_and_eq []) p q)
  | .forallE name ty body binfo =>
    let body' : Expr := .lam name ty (mkNot body) binfo
    let body'' : Expr := .lam name ty body binfo
    return mkSimpStep (← mkAppM ``Exists #[body']) (← mkAppM ``not_forall_eq #[body''])
  | _ =>
    return Simp.Step.continue
where
  mkSimpStep (e : Expr) (pf : Expr) : Simp.Step :=
    Simp.Step.continue (some { expr := e, proof? := some pf })

/-- The `simp` configuration used in `push`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Push/Varianta0cd34f313ca746cc04a59a9c3cd13ac40b4728048af4d8e8a42386b7f66c1f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Push/Varianta0cd34f313ca746cc04a59a9c3cd13ac40b4728048af4d8e8a42386b7f66c1f5.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `734a5a1ab956d0a0a9362e968e54dc8231910429` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
