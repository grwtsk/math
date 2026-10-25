# buildBRecOnMinorPremise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab713e802a81a2ff1b4f3b42b8fb8e32f12809493da06f7d60276a047ca7c00b",
  "kind": "def",
  "lexical_name": "buildBRecOnMinorPremise",
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
  "slug": "buildbreconminorpremise--8b4455ae0af5b6e933095c5c",
  "source": {
    "blob": "7a47d1979b14d644592160eef63ef17fb45b972a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 149,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant1ee2263826e5dfc5875f740836109ed2208b00296d3b72b4e93fc7d3e8706510.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8b4455ae0af5b6e933095c5ce2d26e61ccb64717c2d4e5f47d6f1a9eb2b20dc1",
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

Occurrence: `declaration:ab713e802a81a2ff1b4f3b42b8fb8e32f12809493da06f7d60276a047ca7c00b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def buildBRecOnMinorPremise (rlvl : Level) (motives : Array Expr)
    (belows : Array Expr) (fs : Array Expr) (minorType : Expr) : MetaM Expr :=
  forallTelescope minorType fun minor_args minor_type => do
    let rec go (prods : Array Expr) : List Expr → MetaM Expr
      | [] => minor_type.withApp fun minor_type_fn minor_type_args => do
          let b ← PProdN.mk rlvl prods
          let .some idx := motives.idxOf? minor_type_fn
            | throwError m!"Did not find {minor_type} in {motives}"
          mkPProdMk (mkAppN fs[idx]! (minor_type_args.push b)) b
      | arg::args => do
        let argType ← inferType arg
        forallTelescope argType fun arg_args arg_type => do
          arg_type.withApp fun arg_type_fn arg_type_args => do
            if let .some idx := motives.idxOf? arg_type_fn then
              let name ← arg.fvarId!.getUserName
              let type' ← mkForallFVars arg_args
                (← mkPProd arg_type (mkAppN belows[idx]! arg_type_args) )
              withLocalDeclD name type' fun arg' => do
                mkLambdaFVars #[arg'] (← go (prods.push arg') args)
            else
              mkLambdaFVars #[arg] (← go prods args)
    go #[] minor_args.toList

/--
Constructs the `.brecOn` definition for a inductive predicate.

For example for the `List` type, it constructs,
```
@[reducible] protected def List.brecOn.go.{u} : {a : Type} →
  {motive : List a → Sort u} →
    (t : List a) → ((t : List a) → List.below t → motive t) → motive t ×' List.below t :=
fun {a} {motive} t F_1 =>
  List.rec ⟨F_1 List.nil PUnit.unit, PUnit.unit⟩ (fun a_1 a_2 a_ih => ⟨F_1 (List.cons a_1 a_2) a_ih, a_ih⟩) t

@[reducible] protected def List.brecOn.{u} : {a : Type} →
  {motive : List a → Sort u} → (t : List a) → ((t : List a) → List.below t → motive t) → motive t :=
fun {a} {motive} t F_1 => (List.brecOn.go t F_1).1

protected theorem List.brecOn.eq.{u} : ∀ {a : Type} {motive : List a → Sort u} (t : List a)
  (F_1 : (t : List a) → List.below t → motive t), List.brecOn t F_1 = F_1 t (List.brecOn.go t F_1).2
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant1ee2263826e5dfc5875f740836109ed2208b00296d3b72b4e93fc7d3e8706510.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a47d1979b14d644592160eef63ef17fb45b972a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
