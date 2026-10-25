# constantsToVars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c47d9819b769b0f8e4f954fc3373091ec62c90565023d74319e538a9c047f13c",
  "kind": "def",
  "lexical_name": "constantsToVars",
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
  "slug": "constantstovars--dc65fdafba4d66e126815b37",
  "source": {
    "blob": "e13feba647d50c91a020dc959db8fa64179f8324",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 184,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variantbf5cac9fd5cf88a26cb346f1fa0c0f50b9a9bea897bdf0f6c3996c653e8a68be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc65fdafba4d66e126815b37e740dff2f1dff412c0d760acc813524afedd238f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variantbf5cac9fd5cf88a26cb346f1fa0c0f50b9a9bea897bdf0f6c3996c653e8a68be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c47d9819b769b0f8e4f954fc3373091ec62c90565023d74319e538a9c047f13c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def constantsToVars : L[[γ]].Term α → L.Term (Sum γ α)
  | var a => var (Sum.inr a)
  | @func _ _ 0 f ts =>
    Sum.casesOn f (fun f => func f fun i => (ts i).constantsToVars) fun c => var (Sum.inl c)
  | @func _ _ (_n + 1) f ts =>
    Sum.casesOn f (fun f => func f fun i => (ts i).constantsToVars) fun c => isEmptyElim c
#align first_order.language.term.constants_to_vars FirstOrder.Language.Term.constantsToVars

--Porting note: universes in different order
/-- Sends a term with extra variables to a term with constants. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variantbf5cac9fd5cf88a26cb346f1fa0c0f50b9a9bea897bdf0f6c3996c653e8a68be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variantbf5cac9fd5cf88a26cb346f1fa0c0f50b9a9bea897bdf0f6c3996c653e8a68be.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e13feba647d50c91a020dc959db8fa64179f8324` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
