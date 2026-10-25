# normalizedInterior_endpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:227c6f50-0b78-46a8-b0f6-2628a7f835df",
  "kind": "theorem",
  "lexical_name": "normalizedInterior_endpoint",
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
  "slug": "normalizedinterior-endpoint--c44f4565e3f5aa660a228b5a",
  "source": {
    "blob": "56ce41488f68991c0ea2b725a8f27ac7d60fbf42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 37,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ActualEndpoint/Variantb107e757980b96cf6a3c2acaa1052e76b926bb55bbebf36968602c813b818638.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c44f4565e3f5aa660a228b5a1772123a6a987fbad17fafdb257a8e939ccab804",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ActualEndpoint/Variantb107e757980b96cf6a3c2acaa1052e76b926bb55bbebf36968602c813b818638.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:227c6f50-0b78-46a8-b0f6-2628a7f835df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedInterior_endpoint (A u : ℝ) (hA : 1 ≤ A) :
    normalizedInterior A (A-u) =
      endpointPolynomial u (1/A) /
        (A^4 * Real.sqrt A * Real.sqrt (sourceNormalization A)) := by
  have ha : A ≠ 0 := by linarith
  have hs : Real.sqrt A ≠ 0 := (Real.sqrt_pos.2 (by linarith)).ne'
  have hz : Real.sqrt (sourceNormalization A) ≠ 0 :=
    (Real.sqrt_pos.2 (source_normalization_pos A hA)).ne'
  unfold normalizedInterior secondInterior bumpInterior endpointPolynomial
  field_simp
  ring

/-- Includes both touching source endpoints. No equality premise is assumed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ActualEndpoint/Variantb107e757980b96cf6a3c2acaa1052e76b926bb55bbebf36968602c813b818638.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ActualEndpoint/Variantb107e757980b96cf6a3c2acaa1052e76b926bb55bbebf36968602c813b818638.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56ce41488f68991c0ea2b725a8f27ac7d60fbf42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
