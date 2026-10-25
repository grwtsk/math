# linearFormOfExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fc40ca0b877f1e6ae4c532a67803b23b9479bac8e2391bb39261fd36e584744b",
  "kind": "def",
  "lexical_name": "linearFormOfExpr",
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
  "slug": "linearformofexpr--c3a96680c5c857b02d1d9a32",
  "source": {
    "blob": "629813390c1ee7894638728fd7a2771d87eaf46d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 182,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variantaafea13110ebb4dc3a13282ffb53f9a2a2040d0c4a2e9a4d8cb1a07c4d56fd65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c3a96680c5c857b02d1d9a32c713877449aaec76fede63d7e064442f8c4ba151",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variantaafea13110ebb4dc3a13282ffb53f9a2a2040d0c4a2e9a4d8cb1a07c4d56fd65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fc40ca0b877f1e6ae4c532a67803b23b9479bac8e2391bb39261fd36e584744b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def linearFormOfExpr (red : TransparencyMode) (m : ExprMap) (e : Expr) :
    MetaM (ExprMap × Sum) :=
  match e.numeral? with
  | some 0 => return ⟨m, TreeMap.empty⟩
  | some (n+1) => return ⟨m, scalar (n+1)⟩
  | none =>
  match e.getAppFnArgs with
  | (``HMul.hMul, #[_, _, _, _, e1, e2]) => do
    let (m1, comp1) ← linearFormOfExpr red m e1
    let (m2, comp2) ← linearFormOfExpr red m1 e2
    return (m2, comp1.mul comp2)
  | (``HAdd.hAdd, #[_, _, _, _, e1, e2]) => do
    let (m1, comp1) ← linearFormOfExpr red m e1
    let (m2, comp2) ← linearFormOfExpr red m1 e2
    return (m2, comp1 + comp2)
  | (``HSub.hSub, #[_, _, _, _, e1, e2]) => do
    let (m1, comp1) ← linearFormOfExpr red m e1
    let (m2, comp2) ← linearFormOfExpr red m1 e2
    return (m2, comp1 + comp2.map (fun _ v => -v))
  | (``Neg.neg, #[_, _, e]) => do
    let (m1, comp) ← linearFormOfExpr red m e
    return (m1, comp.map (fun _ v => -v))
  | (``HPow.hPow, #[_, _, _, _, a, n]) => do
    match n.numeral? with
    | some n => do
      let (m1, comp) ← linearFormOfExpr red m a
      return (m1, comp.pow n)
    | none => linearFormOfAtom red m e
  | _ => linearFormOfAtom red m e

/--
`elimMonom s map` eliminates the monomial level of the `Sum` `s`.

`map` is a lookup map from monomials to variable numbers.
The output `TreeMap ℕ ℤ` has the same structure as `s : Sum`,
but each monomial key is replaced with its index according to `map`.
If any new monomials are encountered, they are assigned variable numbers and `map` is updated.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variantaafea13110ebb4dc3a13282ffb53f9a2a2040d0c4a2e9a4d8cb1a07c4d56fd65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variantaafea13110ebb4dc3a13282ffb53f9a2a2040d0c4a2e9a4d8cb1a07c4d56fd65.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `629813390c1ee7894638728fd7a2771d87eaf46d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
