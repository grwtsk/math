# normalizeLineEndings_canonical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5830cc5-25c0-19b5-4b54-f3a216ec2281",
  "kind": "theorem",
  "lexical_name": "normalizeLineEndings_canonical",
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
  "slug": "normalizelineendings-canonical--96d0a4f36620e0865a02e892",
  "source": {
    "blob": "93b818bf55f6f6587d1dd1a155a6ff1da60bb1b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/InductiveTypes/CharacterLineEndingNormalization/Variantfaafb0a2d44eed22/LineEndingNormalization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96d0a4f36620e0865a02e892098d49aefb13fdb87d3ba7fd677c1a4bb3e8083d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/InductiveTypes/CharacterLineEndingNormalization/Variantfaafb0a2d44eed22/LineEndingNormalization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5830cc5-25c0-19b5-4b54-f3a216ec2281`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizeLineEndings_canonical (characters : List Char) :
    CanonicalLineEndings (normalizeLineEndings characters) := by
  induction characters using normalizeLineEndings.induct with
  | case1 => simp [normalizeLineEndings, CanonicalLineEndings]
  | case2 rest induction =>
      simp only [normalizeLineEndings, CanonicalLineEndings,
        List.mem_cons, not_or]
      exact ⟨by decide, induction⟩
  | case3 rest exclusion induction =>
      simp only [normalizeLineEndings, CanonicalLineEndings,
        List.mem_cons, not_or]
      exact ⟨by decide, induction⟩
  | case4 character rest exclusion headNotCr induction =>
      simp only [normalizeLineEndings, CanonicalLineEndings,
        List.mem_cons, not_or]
      exact ⟨fun equality => headNotCr equality.symm, induction⟩


/-- Canonical LF-only input is unchanged. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/InductiveTypes/CharacterLineEndingNormalization/Variantfaafb0a2d44eed22/LineEndingNormalization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/InductiveTypes/CharacterLineEndingNormalization/Variantfaafb0a2d44eed22/LineEndingNormalization.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93b818bf55f6f6587d1dd1a155a6ff1da60bb1b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
