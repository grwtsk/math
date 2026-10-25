# eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:764b14629f680baa64acec996f7964117d976a7086f9e492215f1a679ee888a7",
  "kind": "def",
  "lexical_name": "eval",
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
  "slug": "eval--da050b63f56501cfef2e43ce",
  "source": {
    "blob": "0a0bfd2ee6a0415b489d32e3c39c7794614bcd26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 733,
    "line": 676,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant8fbe67fef87cfb9158f710cdf75920413718b7e9de8b6ba32a78f8208fd53522.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da050b63f56501cfef2e43ceffce3cdebc709cad78d7df7a0a26cc46f81d8f36",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant8fbe67fef87cfb9158f710cdf75920413718b7e9de8b6ba32a78f8208fd53522.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:764b14629f680baa64acec996f7964117d976a7086f9e492215f1a679ee888a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 676–733.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def eval {M : Q(Type v)} (iM : Q(AddCommMonoid $M)) (base? : Option (Σ u : Level, Q(Type u)))
    (postCtx : Simp.Context) (e : Q($M)) : AtomM Simp.Result := do
  let ⟨_, _, iR, iRM, l, pf⟩ ← parse iM e
  if let [((_, x), _)] := l then
    -- a single atom with unit coefficient is already in normal form
    if ← withTransparency (← read).red <| isDefEq x e then
      return { expr := e }
  let lifted? ← match base? with
    | some base => qNF.liftToBase? iM iR iRM base l
    | none => pure none
  let (e', pf') ← match lifted? with
    | some ⟨_, _, iB, iBM, l', pfL⟩ => do
      let ⟨e', pf'⟩ ← qNF.rebuild iM iB iBM postCtx l'
      pure ((e' : Expr), ← mkEqTrans (← mkEqSymm pfL) pf')
    | none => do
      let ⟨e', pf'⟩ ← qNF.rebuild iM iR iRM postCtx l
      pure ((e' : Expr), (pf' : Expr))
  return { expr := e', proof? := some (← mkEqTrans pf pf') }

/-- Given a goal parseable as a linear combination `⊢ a • x + ... + b • y = c • x + ... + d • y`,
`match_scalars` splits up the goal into equalities of the scalars for each respective atom. This
means the example goal above is replaced by goals `⊢ a = c` (from `x`), ..., `⊢ b = d` (from `y`).

The `module` tactic is equivalent to `match_scalars <;> ring1`.

`match_scalars` can parse into expressions made of the operators `+`, `-`, `•` and the numeral `0`.
Any other subexpressions (including variables) are treated as atoms.
If the goal is an equality in the type `M`, then `match_scalars` requires an `AddCommMonoid M`
instance. If the goal contains a scalar multiplication `(a : R) • (x : M)`, this requires a
`Semiring R` and `Module R M` instance. If any of the instances are missing, `match_scalars` fails.

The scalar type for the goals produced by the `match_scalars` tactic is the largest scalar type
encountered; for example, if `ℕ`, `ℚ` and a characteristic-zero field `K` all occur as scalars, then
the goals produced are equalities in `K` with the appropriate casts (from `ℕ`, `ℤ`, `ℚ`) and
`algebraMap`s (otherwise) inserted. Inserted casts are simplified by lemmas tagged `@[push_cast]`.
If the set of scalar types encountered is not totally ordered (in the sense that for all rings `R`,
`S` encountered, it holds that either `Algebra R S` or `Algebra S R`), then `match_scalars` fails.

Examples:
```
example [AddCommMonoid M] [Semiring R] [Module R M] (a b : R) (x : M) :
    a • x + b • x = (b + a) • x := by
  match_scalars
  -- one goal: `⊢ a + b = b + a`

example [AddCommGroup M] [Ring R] [Module R M] (a b : R) (x : M) :
    a • (a • x - b • y) + (b • a • y + b • b • x) = x := by
  match_scalars
  -- two goals:
  -- `⊢ a * a + b * b = 1` (from the `x` atom)
  -- `⊢ a * -b + b * a = 0` (from the `y` atom)

example [AddCommGroup M] [Ring R] [Module R M] (a : R) (x : M) :
    -(2:R) • a • x = a • (-2:ℤ) • x := by
  match_scalars
  -- one goal: `⊢ -2 * a = a * -2`
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant8fbe67fef87cfb9158f710cdf75920413718b7e9de8b6ba32a78f8208fd53522.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant8fbe67fef87cfb9158f710cdf75920413718b7e9de8b6ba32a78f8208fd53522.lean#L676).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a0bfd2ee6a0415b489d32e3c39c7794614bcd26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
