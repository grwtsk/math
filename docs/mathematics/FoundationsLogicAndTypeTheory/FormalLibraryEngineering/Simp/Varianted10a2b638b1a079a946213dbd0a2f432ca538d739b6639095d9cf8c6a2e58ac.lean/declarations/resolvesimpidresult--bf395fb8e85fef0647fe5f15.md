# ResolveSimpIdResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:19d3887318838a36edf2b7d637c58f8fc28ab9a0e5c7474c9bce97fbf762fe31",
  "kind": "inductive",
  "lexical_name": "ResolveSimpIdResult",
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
  "slug": "resolvesimpidresult--bf395fb8e85fef0647fe5f15",
  "source": {
    "blob": "379beba19a25407004e5570bc892cf0e8327798b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 205,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf395fb8e85fef0647fe5f15e5ded861323634ff6b39243ebf5e0bf3a70f251d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:19d3887318838a36edf2b7d637c58f8fc28ab9a0e5c7474c9bce97fbf762fe31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive ResolveSimpIdResult where
  | none
  | expr (e : Expr)
  | simproc (declName : Name)
  /--
  Recall that when we declare a `simp` attribute using `register_simp_attr`, we automatically
  create a `simproc` attribute. However, if the user creates `simp` and `simproc` attributes
  programmatically, then one of them may be missing. Moreover, when we write `simp [seval]`,
  we want to retrieve both the simp and simproc sets. We want to hide from users that
  `simp` and `simproc` sets are stored in different data-structures.
  -/
  | ext  (ext₁? : Option SimpExtension) (ext₂? : Option Simp.SimprocExtension) (h : ext₁?.isSome || ext₂?.isSome)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `379beba19a25407004e5570bc892cf0e8327798b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
