# _root_.GRWTSK.Algebra.GroupTheory.FunctionInjectiveMulActionHomEmbedding.Variantf4a07fd7a094dca573323cc58426ae80906ee6efddaff65de1f30f966e42d58d.MulActionHom.embMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:96d808b4300951cdfccf73d3b11673d586c6d73ad6f43bb0d2864e5acdb5f412",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Algebra.GroupTheory.FunctionInjectiveMulActionHomEmbedding.Variantf4a07fd7a094dca573323cc58426ae80906ee6efddaff65de1f30f966e42d58d.MulActionHom.embMap",
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
  "slug": "root-grwtsk-algebra-grouptheory-functioninjectivemulactionhomembedding-v--453045c5db0548ae46111f12",
  "source": {
    "blob": "f535497d9c5c837feaaa3f8a1c3765a1e7c8e7b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 251,
    "path": "GRWTSK/Algebra/GroupTheory/MultipleTransitivity/Variant3607710dc5b7d7cabd8132caae4b020f67ced09e1fa240cf14417f7531d3fe43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:453045c5db0548ae46111f1296b39b5533ab5cf69feeeefccbda26addb70c53a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MultipleTransitivity/Variant3607710dc5b7d7cabd8132caae4b020f67ced09e1fa240cf14417f7531d3fe43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:96d808b4300951cdfccf73d3b11673d586c6d73ad6f43bb0d2864e5acdb5f412`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Algebra.GroupTheory.FunctionInjectiveMulActionHomEmbedding.Variantf4a07fd7a094dca573323cc58426ae80906ee6efddaff65de1f30f966e42d58d.MulActionHom.embMap {m n : Type*} (e : m ↪ n) :
    (n ↪ α) →[G]  (m ↪ α) where
  toFun i := e.trans i
  map_smul' _ _ := rfl

/-- If `α` has at least `n` elements, then any `n`-pretransitive action on `α`
is `m`-pretransitive for any `m ≤ n`.

This version allows `α` to be infinite and uses `ENat.card`.
For `Finite α`, use `MulAction.isMultiplyPretransitive_of_le` -/
@[to_additive
"If `α` has at least `n` elements, then any `n`-pretransitive action on `α`
is `n`-pretransitive for any `m ≤ n`.

This version allows `α` to be infinite and uses `ENat.card`.
For `Finite α`, use `AddAction.isMultiplyPretransitive_of_le`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MultipleTransitivity/Variant3607710dc5b7d7cabd8132caae4b020f67ced09e1fa240cf14417f7531d3fe43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MultipleTransitivity/Variant3607710dc5b7d7cabd8132caae4b020f67ced09e1fa240cf14417f7531d3fe43.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f535497d9c5c837feaaa3f8a1c3765a1e7c8e7b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
