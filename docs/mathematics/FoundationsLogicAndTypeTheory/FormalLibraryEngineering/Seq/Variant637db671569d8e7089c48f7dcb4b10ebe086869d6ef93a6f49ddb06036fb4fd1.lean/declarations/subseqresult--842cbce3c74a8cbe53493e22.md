# SubseqResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:654b211f0a17acb7540b5b89f77320fdf97a86b198da76f4add855d17f2145c1",
  "kind": "inductive",
  "lexical_name": "SubseqResult",
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
  "slug": "subseqresult--842cbce3c74a8cbe53493e22",
  "source": {
    "blob": "a71ef5c45e22715c48dc913881aa1c669046d021",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 96,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Seq/Variant637db671569d8e7089c48f7dcb4b10ebe086869d6ef93a6f49ddb06036fb4fd1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:842cbce3c74a8cbe53493e22048adb2060005c0658b06f2fafd6c2978012715d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Seq/Variant637db671569d8e7089c48f7dcb4b10ebe086869d6ef93a6f49ddb06036fb4fd1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:654b211f0a17acb7540b5b89f77320fdf97a86b198da76f4add855d17f2145c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive SubseqResult where
  | /-- `s₁` is not a subsequence of `s₂` -/
    false
  | /-- `s₁ == s₂` -/
    exact
  | /-- `s₁ ++ s == s₂` -/
    prefix (s : Seq)
  | /-- `s ++ s₁ == s₂` -/
    suffix (s : Seq)
  | /-- `p ++ s₁ ++ s == s₂` -/
    middle (p s : Seq)

/--
`s₁.subseq s₂` checks whether `s₁` is a subsequence of `s₂`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Seq/Variant637db671569d8e7089c48f7dcb4b10ebe086869d6ef93a6f49ddb06036fb4fd1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Seq/Variant637db671569d8e7089c48f7dcb4b10ebe086869d6ef93a6f49ddb06036fb4fd1.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a71ef5c45e22715c48dc913881aa1c669046d021` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
