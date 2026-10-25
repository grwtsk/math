# IterM.step_zip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea785db9-f088-44d5-c61b-0206445f4afa",
  "kind": "theorem",
  "lexical_name": "IterM.step_zip",
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
  "slug": "iterm-step-zip--b9c5b470c1bae7fb986be63a",
  "source": {
    "blob": "e69794313392e13b047e72d3a8fec77669b66f2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 85,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zip/Variant50fba425feb52f1cd059b140c12df7845364f165cc9fd2f8637f0365bf16cc6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9c5b470c1bae7fb986be63ad7d22a7d5a7c0f415d4f5fb7a73175f25c35da2b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zip/Variant50fba425feb52f1cd059b140c12df7845364f165cc9fd2f8637f0365bf16cc6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea785db9-f088-44d5-c61b-0206445f4afa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IterM.step_zip [Monad m] [Iterator α₁ m β₁] [Iterator α₂ m β₂]
    {it₁ : IterM (α := α₁) m β₁}
    {it₂ : IterM (α := α₂) m β₂} :
    (it₁.zip it₂).step = (do
      match (← it₁.step).inflate with
      | .yield it₁' out hp =>
        pure <| .deflate <| .skip (Intermediate.zip it₁' (some ⟨out, _, _, hp⟩) it₂)
          (.yieldLeft rfl hp)
      | .skip it₁' hp =>
        pure <| .deflate <| .skip (Intermediate.zip it₁' none it₂)
          (.skipLeft rfl hp)
      | .done hp =>
        pure <| .deflate <| .done (.doneLeft rfl hp)) := by
  simp [zip_eq_intermediateZip, step_intermediateZip]

end Std
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zip/Variant50fba425feb52f1cd059b140c12df7845364f165cc9fd2f8637f0365bf16cc6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zip/Variant50fba425feb52f1cd059b140c12df7845364f165cc9fd2f8637f0365bf16cc6d.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e69794313392e13b047e72d3a8fec77669b66f2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
