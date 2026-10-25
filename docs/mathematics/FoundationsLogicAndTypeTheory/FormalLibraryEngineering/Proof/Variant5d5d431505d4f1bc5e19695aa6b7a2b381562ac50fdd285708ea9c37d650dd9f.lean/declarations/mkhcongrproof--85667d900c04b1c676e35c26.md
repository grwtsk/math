# mkHCongrProof'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:41d50c5a732eb4b1279f8435d9303a657278b9b37faeddd5024c0eb9b9001df2",
  "kind": "def",
  "lexical_name": "mkHCongrProof'",
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
  "slug": "mkhcongrproof--85667d900c04b1c676e35c26",
  "source": {
    "blob": "4a17193eb3517bce6e0b8e464a0b81098e6a11b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 204,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant5d5d431505d4f1bc5e19695aa6b7a2b381562ac50fdd285708ea9c37d650dd9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:85667d900c04b1c676e35c26d51c4c1685d5d607bc29d310e8aa17e86b711d2f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant5d5d431505d4f1bc5e19695aa6b7a2b381562ac50fdd285708ea9c37d650dd9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:41d50c5a732eb4b1279f8435d9303a657278b9b37faeddd5024c0eb9b9001df2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  private partial def mkHCongrProof' (f g : Expr) (numArgs : Nat) (lhs rhs : Expr) (heq : Bool) : GoalM Expr := do
    let thm ← mkHCongrWithArity f numArgs
    assert! thm.argKinds.size == numArgs
    let proof ← mkHCongrProofHelper thm lhs rhs numArgs
    if isSameExpr f g then
      mkEqOfHEqIfNeeded proof heq
    else
      /-
      `lhs` is of the form `f a_1 ... a_n`
      `rhs` is of the form `g b_1 ... b_n`
      `proof : f a_1 ... a_n ≍ f b_1 ... b_n`
      We construct a proof for `f a_1 ... a_n ≍ g b_1 ... b_n` using `Eq.ndrec`
      -/
      let motive ← withLocalDeclD (← mkFreshUserName `x) (← inferType f) fun x => do
        mkLambdaFVars #[x] (← mkHEq lhs (mkAppN x (rhs.getAppArgsN numArgs)))
      let fEq ← mkEqProofCore f g false
      let proof ← mkEqNDRec motive proof fEq
      mkEqOfHEqIfNeeded proof heq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant5d5d431505d4f1bc5e19695aa6b7a2b381562ac50fdd285708ea9c37d650dd9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant5d5d431505d4f1bc5e19695aa6b7a2b381562ac50fdd285708ea9c37d650dd9f.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a17193eb3517bce6e0b8e464a0b81098e6a11b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
