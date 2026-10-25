# encode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a2a369428aa56d7ad9c5e5838bb711f9195484c35d6228fed60c2eb22d5b8e7",
  "kind": "def",
  "lexical_name": "encode",
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
  "slug": "encode--78621127bea15ceae883ab9c",
  "source": {
    "blob": "23fe21148ee796f9459ae9a39cfc62d243b6c995",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 46,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanExporter/Varianta13ca41fbc619e8c45556eeaa96e8c3276379c77a1ceed22b19d32151237aede.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:78621127bea15ceae883ab9c3e2199b9ffddc5f198815a569ab6adad032844e8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanExporter/Varianta13ca41fbc619e8c45556eeaa96e8c3276379c77a1ceed22b19d32151237aede.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a2a369428aa56d7ad9c5e5838bb711f9195484c35d6228fed60c2eb22d5b8e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def encode (params : List Name) (e : Expr) : StateT Dag (Except String) Nat := do
  let key : ExprStructEq := ⟨e⟩
  if let some i := (← get).seen[key]? then return i
  if let .mdata _ body := e then return ← encode params body
  let j : Json ← match e with
    | .bvar n => pure <| arr #[str "bvar", num n]
    | .fvar _ => throw "free expression variable"
    | .mvar _ => throw "expression metavariable"
    | .sort l => do pure <| arr #[str "sort", ← dagLevel params l]
    | .const n ls => do pure <| arr #[str "const", nameJson n, arr (← ls.toArray.mapM (dagLevel params))]
    | .app f a => do pure <| arr #[str "app", num (← encode params f), num (← encode params a)]
    | .lam _ t b bi => do pure <| arr #[str "lam", num (← encode params t), num (← encode params b), binderJson bi]
    | .forallE _ t b bi => do pure <| arr #[str "forallE", num (← encode params t), num (← encode params b), binderJson bi]
    | .letE _ t v b nd => do pure <| arr #[str "letE", num (← encode params t), num (← encode params v), num (← encode params b), toJson nd]
    | .lit (.natVal n) => pure <| arr #[str "natVal", str (toString n)]
    | .lit (.strVal s) => pure <| arr #[str "strVal", str s]
    | .proj n i b => do pure <| arr #[str "proj", nameJson n, num i, num (← encode params b)]
    | .mdata _ _ => throw "unreachable metadata branch"
  let state ← get
  if let some i := state.canonical[j.compress]? then
    modify fun s => {s with seen := s.seen.insert key i}
    return i
  if state.nodes.size ≥ 2000000 then throw "expression node resource bound exceeded"
  let i := state.nodes.size
  set ({seen := state.seen.insert key i, canonical := state.canonical.insert j.compress i, nodes := state.nodes.push j} : Dag)
  return i

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanExporter/Varianta13ca41fbc619e8c45556eeaa96e8c3276379c77a1ceed22b19d32151237aede.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanExporter/Varianta13ca41fbc619e8c45556eeaa96e8c3276379c77a1ceed22b19d32151237aede.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23fe21148ee796f9459ae9a39cfc62d243b6c995` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
