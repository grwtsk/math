# search

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:584b430fc0189d1bdbb19143a903acbfd3edd7c28e1f260e2439baf322b3f85d",
  "kind": "def",
  "lexical_name": "search",
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
  "slug": "search--e3c4fdd1a0b5bc628862e306",
  "source": {
    "blob": "85e61390c8537999a0ae178039977307c4538d52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 461,
    "line": 424,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ITauto/Variant0275dec21335eb43533b41f05fc2067ef800b5d618520785a9c9faa073dfa6de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e3c4fdd1a0b5bc628862e3060d73976e070dd930725a2eef7dcc2ebc57e1ad99",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ITauto/Variant0275dec21335eb43533b41f05fc2067ef800b5d618520785a9c9faa073dfa6de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:584b430fc0189d1bdbb19143a903acbfd3edd7c28e1f260e2439baf322b3f85d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 424–461.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def search (Γ : Context) (B : IProp) : StateM Nat (Bool × Proof) := do
  if let some p := Γ[B]? then return (true, p)
  fun n =>
  let search₁ := Γ.foldl (init := none) fun r A p => do
    if let some r := r then return r
    let .imp A' C := A | none
    if let some q := Γ[A']? then
      isOk <| Context.withAdd (Γ.erase A) C (p.app q) B prove n
    else
      let .imp A₁ A₂ := A' | none
      let Γ : Context := Γ.erase A
      let (a, n) := freshName n
      let (p₁, n) ← isOk <| Γ.withAdd A₁ (.hyp a) A₂ (fun Γ_A₁ A₂ =>
        Γ_A₁.withAdd (IProp.imp A₂ C) (.impImpSimp a p) A₂ prove) n
      isOk <| Γ.withAdd C (p.app (.intro a p₁)) B prove n
  if let some (r, n) := search₁ then
    ((true, r), n)
  else if let .or B₁ B₂ := B then
    match (mapProof .orInL <$> prove Γ B₁) n with
    | ((false, _), _) => (mapProof .orInR <$> prove Γ B₂) n
    | r => r
  else ((false, .sorry), n)

/-- The main prover. This receives a context of proven or assumed lemmas and a target proposition,
and returns a proof or `none` (with state for the fresh variable generator).
The intuitionistic logic rules are separated into three groups:

* level 1: No splitting, validity preserving: apply whenever you can.
  Left rules in `Context.add`, right rules in `prove`
* level 2: Splitting rules, validity preserving: apply after level 1 rules. Done in `prove`
* level 3: Splitting rules, not validity preserving: apply only if nothing else applies.
  Done in `search`

The level 1 rules on the right of the turnstile are `Γ ⊢ ⊤` and `Γ ⊢ A → B`, these are easy to
handle. The rule `Γ ⊢ A ∧ B` is a level 2 rule, also handled here. If none of these apply, we try
the level 2 rule `A ∨ B ⊢ C` by searching the context and splitting all ors we find. Finally, if
we don't make any more progress, we go to the search phase.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ITauto/Variant0275dec21335eb43533b41f05fc2067ef800b5d618520785a9c9faa073dfa6de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ITauto/Variant0275dec21335eb43533b41f05fc2067ef800b5d618520785a9c9faa073dfa6de.lean#L424).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85e61390c8537999a0ae178039977307c4538d52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
