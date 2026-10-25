# isShallowExpression

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:51833a1d80b3a59806e2f9502bcdcb33c5aedbfbf27b0b861f4bd3f6c0fb2e70",
  "kind": "def",
  "lexical_name": "isShallowExpression",
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
  "slug": "isshallowexpression--0033bb9492f544b84ab957cd",
  "source": {
    "blob": "291d618e54e6b8ae7671e551b11d113825336ce1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 369,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf109b13153edb8c12b2bf86edf7b334b7b0a3f3d02b73a43a7a0f4d9d911544a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0033bb9492f544b84ab957cde23a4fe2a2c858b4b04fac8269743984820723e2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf109b13153edb8c12b2bf86edf7b334b7b0a3f3d02b73a43a7a0f4d9d911544a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:51833a1d80b3a59806e2f9502bcdcb33c5aedbfbf27b0b861f4bd3f6c0fb2e70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 369–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isShallowExpression (threshold : Nat) (e : Expr) : Bool :=
  -- Approximate depth is saturated at 255 for very deep expressions.
  -- Need to clamp to `[0, 254]` so that not every expression is shallow.
  let threshold := min 254 threshold
  e.approxDepth.toNat ≤ threshold

/--
Returns `true` if, at the current depth, we should omit the term and use `⋯` rather than
delaborating it. This function can only return `true` if `pp.deepTerms` is set to `false`.
It also contains a heuristic to allow "shallow terms" to be delaborated, even if they appear deep in
an expression, which prevents terms such as atomic expressions or `OfNat.ofNat` literals from being
delaborated as `⋯`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf109b13153edb8c12b2bf86edf7b334b7b0a3f3d02b73a43a7a0f4d9d911544a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf109b13153edb8c12b2bf86edf7b334b7b0a3f3d02b73a43a7a0f4d9d911544a.lean#L369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `291d618e54e6b8ae7671e551b11d113825336ce1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
