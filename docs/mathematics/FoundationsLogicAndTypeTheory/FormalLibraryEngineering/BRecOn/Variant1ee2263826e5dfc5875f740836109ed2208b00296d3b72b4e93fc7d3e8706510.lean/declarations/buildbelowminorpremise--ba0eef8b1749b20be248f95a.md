# buildBelowMinorPremise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08bc03cb30b98e6e5b32ac56d317990794799e2d9ee174b80ab1fd3fa6ff8aaf",
  "kind": "def",
  "lexical_name": "buildBelowMinorPremise",
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
  "slug": "buildbelowminorpremise--ba0eef8b1749b20be248f95a",
  "source": {
    "blob": "7a47d1979b14d644592160eef63ef17fb45b972a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 33,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant1ee2263826e5dfc5875f740836109ed2208b00296d3b72b4e93fc7d3e8706510.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba0eef8b1749b20be248f95a480e21a979a160bf549d14750509a7a0cf950997",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant1ee2263826e5dfc5875f740836109ed2208b00296d3b72b4e93fc7d3e8706510.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08bc03cb30b98e6e5b32ac56d317990794799e2d9ee174b80ab1fd3fa6ff8aaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def buildBelowMinorPremise (rlvl : Level) (motives : Array Expr) (minorType : Expr) : MetaM Expr :=
  forallTelescope minorType fun minor_args _ => do go #[] minor_args.toList
where
  go (prods : Array Expr) : List Expr → MetaM Expr
  | [] => PProdN.pack rlvl prods
  | arg::args => do
    let argType ← inferType arg
    forallTelescope argType fun arg_args arg_type => do
      if motives.contains arg_type.getAppFn then
        let name ← arg.fvarId!.getUserName
        let type' ← forallTelescope argType fun args _ => mkForallFVars args (.sort rlvl)
        withLocalDeclD name type' fun arg' => do
          let e' ← mkForallFVars arg_args <| ← mkPProd arg_type (mkAppN arg' arg_args)
          mkLambdaFVars #[arg'] (← go (prods.push e') args)
      else
        mkLambdaFVars #[arg] (← go prods args)

/--
Constructs the `.below` definition for a inductive predicate.

For example for the `List` type, it constructs,
```
@[reducible] protected def List.below.{u} : {a : Type} → {motive : List a → Sort u} → List a → Sort (max 1 u) :=
fun {a} {motive} t => List.rec PUnit (fun a_1 a a_ih => motive a ×' a_ih) t
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant1ee2263826e5dfc5875f740836109ed2208b00296d3b72b4e93fc7d3e8706510.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant1ee2263826e5dfc5875f740836109ed2208b00296d3b72b4e93fc7d3e8706510.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a47d1979b14d644592160eef63ef17fb45b972a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
