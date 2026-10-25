# generalizeTelescopeAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6311f482a0b20ecc8cb52f778731c298f8ae1df453b591ecae5a7e43f4496003",
  "kind": "def",
  "lexical_name": "generalizeTelescopeAux",
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
  "slug": "generalizetelescopeaux--0b59e037888e3f3d6d332a57",
  "source": {
    "blob": "ca90554e4faae44c94d21b64186f9312d9ee23c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 37,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeTelescope/Variant64ca5c9e8f798670b9203d745fd0e8c484887bd1fffd2a036871ebcb031dbaee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b59e037888e3f3d6d332a5749652c64d2ac9b6806206b408472ae01c247211e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeTelescope/Variant64ca5c9e8f798670b9203d745fd0e8c484887bd1fffd2a036871ebcb031dbaee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6311f482a0b20ecc8cb52f778731c298f8ae1df453b591ecae5a7e43f4496003`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
partial def generalizeTelescopeAux {α} (k : Array Expr → MetaM α)
    (entries : Array Entry) (i : Nat) (fvars : Array Expr) : MetaM α := do
  if h : i < entries.size then
    let replace (baseUserName : Name) (e : Expr) (type : Expr) : MetaM α := do
      let userName ← mkFreshUserName baseUserName
      withLocalDeclD userName type fun x => do
        let entries ← updateTypes e x entries (i+1)
        generalizeTelescopeAux k entries (i+1) (fvars.push x)
    match entries[i] with
    | ⟨e@(.fvar fvarId), type, false⟩ =>
      let localDecl ← fvarId.getDecl
      match localDecl with
      | .cdecl .. => generalizeTelescopeAux k entries (i+1) (fvars.push e)
      | .ldecl .. => replace localDecl.userName e type
    | ⟨e, type, modified⟩ =>
      if modified then
        unless (← isTypeCorrect type) do
          throwError "failed to create telescope generalizing {entries.map Entry.expr}"
      replace `x e type
  else
    k fvars

end GeneralizeTelescope

open GeneralizeTelescope

/--
  Given expressions `es := #[e_1, e_2, ..., e_n]`, execute `k` with the
  free variables `(x_1 : A_1) (x_2 : A_2 [x_1]) ... (x_n : A_n [x_1, ... x_{n-1}])`.
  Moreover,
  - type of `e_1` is definitionally equal to `A_1`,
  - type of `e_2` is definitionally equal to `A_2[e_1]`.
  - ...
  - type of `e_n` is definitionally equal to `A_n[e_1, ..., e_{n-1}]`.

  This method tries to avoid the creation of new free variables. For example, if `e_i` is a
  free variable `x_i` and it is not a let-declaration variable, and its type does not depend on
  previous `e_j`s, the method will just use `x_i`.

  The telescope `x_1 ... x_n` can be used to create lambda and forall abstractions.
  Moreover, for any type correct lambda abstraction `f` constructed using `mkForall #[x_1, ..., x_n] ...`,
  The application `f e_1 ... e_n` is also type correct.

  The `kabstract` method is used to "locate" and abstract forward dependencies.
  That is, an occurrence of `e_i` in the of `e_j` for `j > i`.

  The method checks whether the abstract types `A_i` are type correct. Here is an example
  where `generalizeTelescope` fails to create the telescope `x_1 ... x_n`.
  Assume the local context contains `(n : Nat := 10) (xs : Vec Nat n) (ys : Vec Nat 10) (h : xs = ys)`.
  Then, assume we invoke `generalizeTelescope` with `es := #[10, xs, ys, h]`
  A type error is detected when processing `h`'s type. At this point, the method had successfully produced
  ```
    (x_1 : Nat) (xs : Vec Nat n) (x_2 : Vec Nat x_1)
  ```
  and the type for the new variable abstracting `h` is `xs = x_2` which is not type correct. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeTelescope/Variant64ca5c9e8f798670b9203d745fd0e8c484887bd1fffd2a036871ebcb031dbaee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeTelescope/Variant64ca5c9e8f798670b9203d745fd0e8c484887bd1fffd2a036871ebcb031dbaee.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca90554e4faae44c94d21b64186f9312d9ee23c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
