# buildProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c756522030c424288efeca334c6bda3811ce1f5e9a5bee9dec9ff4916d0aa47",
  "kind": "def",
  "lexical_name": "buildProof",
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
  "slug": "buildproof--6b311c319d6ddb3c42620d32",
  "source": {
    "blob": "c45f908020ab8ae86a140fee5edc1759b46a4dcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 421,
    "line": 387,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromLRAT/Variant523082300614919893a869fed46ff1b1def2a4d93e12a4cd90b72cdd3c71bfc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6b311c319d6ddb3c42620d32aae10c88935b6bfea0b0f659994dd7e447ea78f5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromLRAT/Variant523082300614919893a869fed46ff1b1def2a4d93e12a4cd90b72cdd3c71bfc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c756522030c424288efeca334c6bda3811ce1f5e9a5bee9dec9ff4916d0aa47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 387–421.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def buildProof (arr : Array (Array Int)) (ctx ctx' : Expr)
  (steps : Array LRATStep) : MetaM Expr := do
  let p := mkApp (mkConst ``Sat.Fmla.subsumes_self) ctx
  let mut db := (buildClauses arr ctx 0 arr.size ctx' p default).2
  for step in steps do
    match step with
    | LRATStep.del ds => db := ds.foldl (·.erase ·) db
    | LRATStep.add i ns pf =>
      let e := buildClause ns
      match buildProofStep db ns pf ctx e with
      | Except.ok proof =>
        if ns.isEmpty then return proof
        db := db.insert i { lits := ns, expr := e, proof }
      | Except.error msg => throwError msg
  throwError "failed to prove empty clause"

/-- Build the type and value of the reified theorem. This rewrites all the SAT definitions
into standard operators on `Prop`, for example if the formula is `[[1, 2], [-1, 2], [-2]]` then
this produces a proof of `⊢ ∀ a b : Prop, (a ∧ b) ∨ (¬a ∧ b) ∨ ¬b`. We use the input `nvars` to
decide how many quantifiers to use.

Most of the proof is under `2 * nvars + 1` quantifiers
`a1 .. an : Prop, v : Valuation, h1 : v 0 ↔ a1, ... hn : v (n-1) ↔ an ⊢ ...`, and we do the index
arithmetic by hand.

  1. First, we call `reifyFormula ctx'` which returns `a` and `pr : reify v ctx' a`
  2. Then we build `fun (v : Valuation) (h1 : v 0 ↔ a1) ... (hn : v (n-1) ↔ an) ↦ pr`
  3. We have to lower expression `a` from step 1 out of the quantifiers by lowering all variable
     indices by `nvars+1`. This is okay because `v` and `h1..hn` do not appear in `a`.
  4. We construct the expression `ps`, which is `a1 .. an : Prop ⊢ [a1, ..., an] : List Prop`
  5. `refute ctx (hf : ctx.proof []) (fun v h1 .. hn ↦ pr) : a` forces some definitional unfolding
     since `fun h1 .. hn ↦ pr` should have type `implies v (reify v ctx a) [a1, ..., an] a`,
     which involves unfolding `implies` n times as well as `ctx ↦ ctx'`.
  6. Finally, we `intro a1 ... an` so that we have a proof of `∀ a1 ... an, a`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromLRAT/Variant523082300614919893a869fed46ff1b1def2a4d93e12a4cd90b72cdd3c71bfc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromLRAT/Variant523082300614919893a869fed46ff1b1def2a4d93e12a4cd90b72cdd3c71bfc5.lean#L387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c45f908020ab8ae86a140fee5edc1759b46a4dcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
