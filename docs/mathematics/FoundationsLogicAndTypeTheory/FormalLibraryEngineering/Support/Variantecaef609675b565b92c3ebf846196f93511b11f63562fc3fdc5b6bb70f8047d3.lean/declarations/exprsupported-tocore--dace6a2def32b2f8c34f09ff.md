# ExprSupported.toCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f7c0d7c045e1b455d396a934fc15190be5e5b818",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ecaef609675b565b92c3ebf846196f93511b11f63562fc3fdc5b6bb70f8047d3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cecca704-67ea-df53-dc82-86cb100a97e4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:181166a1-aa8a-196a-c665-058f4cb26b4a",
  "kind": "theorem",
  "lexical_name": "ExprSupported.toCore",
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
  "slug": "exprsupported-tocore--dace6a2def32b2f8c34f09ff",
  "source": {
    "blob": "f7c0d7c045e1b455d396a934fc15190be5e5b818",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 86,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Support/Variantecaef609675b565b92c3ebf846196f93511b11f63562fc3fdc5b6bb70f8047d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dace6a2def32b2f8c34f09ff1dfc620e20e7b8de70d2563a4fb637117ee33424",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Support/Variantecaef609675b565b92c3ebf846196f93511b11f63562fc3fdc5b6bb70f8047d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:181166a1-aa8a-196a-c665-058f4cb26b4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ExprSupported.toCore {e : Expr} (h : ExprSupported e) : ExprSupportedCore e := by
  induction h with
  | const q => exact ExprSupportedCore.const q
  | var idx => exact ExprSupportedCore.var idx
  | add _ _ ih₁ ih₂ => exact ExprSupportedCore.add ih₁ ih₂
  | mul _ _ ih₁ ih₂ => exact ExprSupportedCore.mul ih₁ ih₂
  | neg _ ih => exact ExprSupportedCore.neg ih
  | sin _ ih => exact ExprSupportedCore.sin ih
  | cos _ ih => exact ExprSupportedCore.cos ih
  | exp _ ih => exact ExprSupportedCore.exp ih

/-! ### Syntactic support predicate with inv and log -/

/-- Syntactic support predicate for expressions with inv and log (no semantic conditions).
    This is the most general support predicate, allowing all expression constructors.
    Semantic correctness is handled by evalInterval? returning None when conditions fail. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Support/Variantecaef609675b565b92c3ebf846196f93511b11f63562fc3fdc5b6bb70f8047d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Support/Variantecaef609675b565b92c3ebf846196f93511b11f63562fc3fdc5b6bb70f8047d3.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7c0d7c045e1b455d396a934fc15190be5e5b818` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
