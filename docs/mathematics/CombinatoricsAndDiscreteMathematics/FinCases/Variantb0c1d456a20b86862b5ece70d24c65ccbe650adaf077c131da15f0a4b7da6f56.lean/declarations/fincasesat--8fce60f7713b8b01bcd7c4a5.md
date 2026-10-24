# finCasesAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:063382869eaceb0a314c30dc76f608aff39b90994c90d2f9933e189ef760b08e",
  "kind": "def",
  "lexical_name": "finCasesAt",
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
  "slug": "fincasesat--8fce60f7713b8b01bcd7c4a5",
  "source": {
    "blob": "0fb313ef81e297f57d79e978b499a9f3a7b66706",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 59,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FinCases/Variantb0c1d456a20b86862b5ece70d24c65ccbe650adaf077c131da15f0a4b7da6f56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8fce60f7713b8b01bcd7c4a5ec0580245370a7e4ad1b7e1f79abd41d35fee991",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FinCases/Variantb0c1d456a20b86862b5ece70d24c65ccbe650adaf077c131da15f0a4b7da6f56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:063382869eaceb0a314c30dc76f608aff39b90994c90d2f9933e189ef760b08e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
partial def finCasesAt (g : MVarId) (hyp : FVarId) : MetaM (List MVarId) := g.withContext do
  let type ← hyp.getType >>= instantiateMVars
  match ← getMemType type with
  | some _ => unfoldCases g hyp (userNamePre := ← g.getTag)
  | none =>
    -- Deal with `x : A`, where `[Fintype A]` is available:
    let inst ← synthInstance (← mkAppM ``Fintype #[type])
    let elems ← mkAppOptM ``Fintype.elems #[type, inst]
    let t ← mkAppM ``Membership.mem #[elems, .fvar hyp]
    let v ← mkAppOptM ``Fintype.complete #[type, inst, Expr.fvar hyp]
    let (fvar, g) ← (← g.assert `this t v).intro1P
    finCasesAt g fvar

/--
`fin_cases h` performs case analysis on a hypothesis of the form
`h : A`, where `[Fintype A]` is available, or
`h : a ∈ A`, where `A : Finset X`, `A : Multiset X` or `A : List X`.

As an example, in
```
example (f : ℕ → Prop) (p : Fin 3) (h0 : f 0) (h1 : f 1) (h2 : f 2) : f p.val := by
  fin_cases p; simp
  all_goals assumption
```
after `fin_cases p; simp`, there are three goals, `f 0`, `f 1`, and `f 2`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FinCases/Variantb0c1d456a20b86862b5ece70d24c65ccbe650adaf077c131da15f0a4b7da6f56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FinCases/Variantb0c1d456a20b86862b5ece70d24c65ccbe650adaf077c131da15f0a4b7da6f56.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fb313ef81e297f57d79e978b499a9f3a7b66706` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
