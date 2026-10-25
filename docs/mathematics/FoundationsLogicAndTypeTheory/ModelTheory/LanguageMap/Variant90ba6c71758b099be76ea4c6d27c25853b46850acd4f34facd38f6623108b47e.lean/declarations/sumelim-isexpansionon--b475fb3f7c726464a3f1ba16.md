# sumElim_isExpansionOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:91562ad8aad24d2cc39b679493bed1b43858a4e5edd17040e002821176eae552",
  "kind": "instance",
  "lexical_name": "sumElim_isExpansionOn",
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
  "slug": "sumelim-isexpansionon--b475fb3f7c726464a3f1ba16",
  "source": {
    "blob": "0be882c55dd766e1e917b4ec32f78b67dec57303",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 229,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/LanguageMap/Variant90ba6c71758b099be76ea4c6d27c25853b46850acd4f34facd38f6623108b47e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b475fb3f7c726464a3f1ba1696c2f36fe7d557b112d5599eeed4e081b87610d4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/LanguageMap/Variant90ba6c71758b099be76ea4c6d27c25853b46850acd4f34facd38f6623108b47e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:91562ad8aad24d2cc39b679493bed1b43858a4e5edd17040e002821176eae552`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance sumElim_isExpansionOn {L'' : Language} (ψ : L'' →ᴸ L') (M : Type*) [L.Structure M]
    [L'.Structure M] [L''.Structure M] [ϕ.IsExpansionOn M] [ψ.IsExpansionOn M] :
    (ϕ.sumElim ψ).IsExpansionOn M :=
  ⟨fun f _ => Sum.casesOn f (by simp) (by simp), fun R _ => Sum.casesOn R (by simp) (by simp)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/LanguageMap/Variant90ba6c71758b099be76ea4c6d27c25853b46850acd4f34facd38f6623108b47e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/LanguageMap/Variant90ba6c71758b099be76ea4c6d27c25853b46850acd4f34facd38f6623108b47e.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0be882c55dd766e1e917b4ec32f78b67dec57303` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
