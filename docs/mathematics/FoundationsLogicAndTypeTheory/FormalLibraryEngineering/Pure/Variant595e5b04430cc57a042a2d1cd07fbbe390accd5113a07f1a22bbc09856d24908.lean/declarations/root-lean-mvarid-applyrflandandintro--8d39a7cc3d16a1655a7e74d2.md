# _root_.Lean.MVarId.applyRflAndAndIntro

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ffba6b8518f74566a0f68a565bfd57e8f0405491a2151682d6dee718dceb3a91",
  "kind": "def",
  "lexical_name": "_root_.Lean.MVarId.applyRflAndAndIntro",
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
  "slug": "root-lean-mvarid-applyrflandandintro--8d39a7cc3d16a1655a7e74d2",
  "source": {
    "blob": "5adbbbf1efe8de6034819a94620720db94d1b9a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 96,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pure/Variant595e5b04430cc57a042a2d1cd07fbbe390accd5113a07f1a22bbc09856d24908.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8d39a7cc3d16a1655a7e74d2c3e6ab12d5e169dd5d972d5e47c49b6159a1ca3a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pure/Variant595e5b04430cc57a042a2d1cd07fbbe390accd5113a07f1a22bbc09856d24908.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ffba6b8518f74566a0f68a565bfd57e8f0405491a2151682d6dee718dceb3a91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def _root_.Lean.MVarId.applyRflAndAndIntro (mvar : MVarId) : MetaM Unit := do
  -- The target might look like `(⌜nₛ = ?n ∧ ?m = b⌝ s).down`, which we reduce to
  -- `nₛ = ?n ∧ ?m = b` with `extractPureProp`.
  -- (Recall that `⌜s = 4⌝ s` is `SPred.pure (σs:=[Nat]) (s = 4) s` and `SPred.pure` is
  -- semi-reducible.)
  let ty ← mvar.getType >>= instantiateMVarsIfMVarApp
  let ty ← (·.getD ty) <$> extractPureProp ty
  trace[Elab.Tactic.Do.spec] "pure Prop: {ty}"
  if ty.isAppOf ``True then
    mvar.assign (mkConst ``True.intro)
  else if let some (lhs, rhs) := ty.app2? ``And then
    let hlhs ← mkFreshExprMVar lhs
    let hrhs ← mkFreshExprMVar rhs
    applyRflAndAndIntro hlhs.mvarId!
    applyRflAndAndIntro hrhs.mvarId!
    mvar.assign (mkApp4 (mkConst ``And.intro) lhs rhs hlhs hrhs)
  else
    mvar.setType ty
    mvar.applyRfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pure/Variant595e5b04430cc57a042a2d1cd07fbbe390accd5113a07f1a22bbc09856d24908.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pure/Variant595e5b04430cc57a042a2d1cd07fbbe390accd5113a07f1a22bbc09856d24908.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5adbbbf1efe8de6034819a94620720db94d1b9a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
