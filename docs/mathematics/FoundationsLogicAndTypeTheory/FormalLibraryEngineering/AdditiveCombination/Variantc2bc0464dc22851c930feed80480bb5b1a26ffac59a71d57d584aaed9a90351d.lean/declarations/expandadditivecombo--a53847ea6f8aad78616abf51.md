# expandAdditiveCombo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b9da8be84c9006fbf1ca08cdb4b2801d3a1d8eebf0d9842cadcf4c9c4f9c5c4",
  "kind": "def",
  "lexical_name": "expandAdditiveCombo",
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
  "slug": "expandadditivecombo--a53847ea6f8aad78616abf51",
  "source": {
    "blob": "afd436634c0dfd7c50750e67b6a293cc0028c7c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 61,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variantc2bc0464dc22851c930feed80480bb5b1a26ffac59a71d57d584aaed9a90351d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a53847ea6f8aad78616abf514db923f134a28c2ba4db9f74950ce5c6d89b97d4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variantc2bc0464dc22851c930feed80480bb5b1a26ffac59a71d57d584aaed9a90351d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b9da8be84c9006fbf1ca08cdb4b2801d3a1d8eebf0d9842cadcf4c9c4f9c5c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def expandAdditiveCombo (ty : Expr) (stx : Syntax.Term) : TermElabM Expanded := withRef stx do
  match stx with
  | `(($e)) => expandLinearCombo ty e
  | `($e₁ + $e₂) => do
    match ← expandAdditiveCombo ty e₁, ← expandAdditiveCombo ty e₂ with
    | .const c₁, .const c₂ => .const <$> ``($c₁ + $c₂)
    | .proof p₁, .const c₂ => .proof <$> ``(pf_add_c $p₁ $c₂)
    | .const c₁, .proof p₂ => .proof <$> ``(c_add_pf $p₂ $c₁)
    | .proof p₁, .proof p₂ => .proof <$> ``(add_pf $p₁ $p₂)
  | `($e₁ - $e₂) => do
    match ← expandAdditiveCombo ty e₁, ← expandAdditiveCombo ty e₂ with
    | .const c₁, .const c₂ => .const <$> ``($c₁ - $c₂)
    | .proof p₁, .const c₂ => .proof <$> ``(pf_sub_c $p₁ $c₂)
    | .const c₁, .proof p₂ => .proof <$> ``(c_sub_pf $p₂ $c₁)
    | .proof p₁, .proof p₂ => .proof <$> ``(sub_pf $p₁ $p₂)
  | `(-$e) => do
    match ← expandAdditiveCombo ty e with
    | .const c => .const <$> `(-$c)
    | .proof p => .proof <$> ``(neg_pf $p)
  | `(← $e) => do
    match ← expandAdditiveCombo ty e with
    | .const c => return .const c
    | .proof p => .proof <$> ``(Eq.symm $p)
  | `($e₁ • $e₂) => do
    match ← expandAdditiveCombo ty e₁, ← expandAdditiveCombo ty e₂ with
    | .const c₁, .const c₂ => .const <$> ``($c₁ • $c₂)
    | .proof p₁, .const c₂ => .proof <$> ``(pf_smul_c $p₁ $c₂)
    | .const c₁, .proof p₂ => .proof <$> ``(c_smul_pf $p₂ $c₁)
    | .proof p₁, .proof p₂ => .proof <$> ``(smul_pf $p₁ $p₂)
  | e =>
    -- We have the expected type from the goal, so we can fully synthesize this leaf node.
    withSynthesize do
      -- It is OK to use `ty` as the expected type even if `e` is a proof.
      -- The expected type is just a hint.
      let c ← withSynthesizeLight <| Term.elabTerm e ty
      if (← whnfR (← inferType c)).isEq then
        .proof <$> c.toSyntax
      else
        .const <$> c.toSyntax

/-- Implementation of `additive_combination` and `additive_combination2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variantc2bc0464dc22851c930feed80480bb5b1a26ffac59a71d57d584aaed9a90351d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variantc2bc0464dc22851c930feed80480bb5b1a26ffac59a71d57d584aaed9a90351d.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afd436634c0dfd7c50750e67b6a293cc0028c7c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
