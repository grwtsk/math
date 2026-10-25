# codRestrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cee137592d67b3ad84e837ce21fce2c44366c34a4fb6264e360e3607b74f40ea",
  "kind": "def",
  "lexical_name": "codRestrict",
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
  "slug": "codrestrict--ebc03bd1f74e4761b22d5ed6",
  "source": {
    "blob": "581266ce8d400bc5bcb6a369e9433b80f3af2e45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 53,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant76761cea481a3a62a80bf9cd19031b65d4a2e8aa10a69a1460d96e08aa354694.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ebc03bd1f74e4761b22d5ed69492d029965d3b0b3d5e43e7d477dd6bdb7eda9e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant76761cea481a3a62a80bf9cd19031b65d4a2e8aa10a69a1460d96e08aa354694.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cee137592d67b3ad84e837ce21fce2c44366c34a4fb6264e360e3607b74f40ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def codRestrict (α : Type*) {β : Type*} (bs : Set β) :
    { f : α ↪ β // ∀ a, f a ∈ bs } ≃
      (α ↪ bs) where
  toFun f := (f : α ↪ β).codRestrict bs f.prop
  invFun f := ⟨f.trans (Function.Embedding.subtype _), fun a => (f a).prop⟩
  left_inv x := by ext; rfl
  right_inv x := by ext; rfl

/-- Pairs of embeddings with disjoint ranges are equivalent to a dependent sum of embeddings,
in which the second embedding cannot take values in the range of the first. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant76761cea481a3a62a80bf9cd19031b65d4a2e8aa10a69a1460d96e08aa354694.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant76761cea481a3a62a80bf9cd19031b65d4a2e8aa10a69a1460d96e08aa354694.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `581266ce8d400bc5bcb6a369e9433b80f3af2e45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
