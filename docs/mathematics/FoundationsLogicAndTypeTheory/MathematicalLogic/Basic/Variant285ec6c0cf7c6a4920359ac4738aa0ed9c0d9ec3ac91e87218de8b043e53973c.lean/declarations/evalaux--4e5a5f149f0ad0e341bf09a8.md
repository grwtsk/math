# evalAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4588ead2596880ca5b1b8da53cf3c5691668d0ab625d637ace36ebcd309f542",
  "kind": "def",
  "lexical_name": "evalAux",
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
  "slug": "evalaux--4e5a5f149f0ad0e341bf09a8",
  "source": {
    "blob": "b84d3134005502fa36af858313d8646a4edecb6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 621,
    "line": 608,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant285ec6c0cf7c6a4920359ac4738aa0ed9c0d9ec3ac91e87218de8b043e53973c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e5a5f149f0ad0e341bf09a88cd0f2141035d830fdd8a4300321690d39eaf6f4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant285ec6c0cf7c6a4920359ac4738aa0ed9c0d9ec3ac91e87218de8b043e53973c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4588ead2596880ca5b1b8da53cf3c5691668d0ab625d637ace36ebcd309f542`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 608–621.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalAux :
    ∀ {n}, { f : Resp n → Arity ZFSet.{u} n // ∀ a b : Resp n, Resp.Equiv a b → f a = f b }
  | 0 => ⟨fun a => ⟦a.1⟧, fun _ _ h => Quotient.sound h⟩
  | n + 1 =>
    let F : Resp (n + 1) → Arity ZFSet (n + 1) := fun a =>
      @Quotient.lift _ _ PSet.setoid (fun x => evalAux.1 (a.f x)) fun _ _ h =>
        evalAux.2 _ _ (a.2 _ _ h)
    ⟨F, fun b c h =>
      funext <|
        (@Quotient.ind _ _ fun q => F b q = F c q) fun z =>
          evalAux.2 (Resp.f b z) (Resp.f c z) (h _ _ (PSet.Equiv.refl z))⟩
#align pSet.resp.eval_aux PSet.Resp.evalAux

/-- An equivalence-respecting function yields an n-ary ZFC set function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant285ec6c0cf7c6a4920359ac4738aa0ed9c0d9ec3ac91e87218de8b043e53973c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant285ec6c0cf7c6a4920359ac4738aa0ed9c0d9ec3ac91e87218de8b043e53973c.lean#L608).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b84d3134005502fa36af858313d8646a4edecb6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
