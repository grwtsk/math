# actual_localized_square_sectors_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "09af7426b7522213644bfe7a8667fe92e4b50184",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 158,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/47fe6120aa374ef946555e0db09f9b1504a74ae47ca0dc02b6dfad897537d485.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c18303ee-ab6c-869f-dc21-5f3208b16a1c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:84711d4c-6198-73c4-8a55-117cb9d7e00d",
  "kind": "theorem",
  "lexical_name": "actual_localized_square_sectors_integrable",
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
  "slug": "actual-localized-square-sectors-integrable--2da33946966b9f04faebffe7",
  "source": {
    "blob": "09af7426b7522213644bfe7a8667fe92e4b50184",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 158,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceVaughanLocalization/Variant47fe6120aa374ef946555e0db09f9b1504a74ae47ca0dc02b6dfad897537d485.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2da33946966b9f04faebffe76bf1d7779b1dc3cf7a5ce03523b17dd33bedec73",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceVaughanLocalization/Variant47fe6120aa374ef946555e0db09f9b1504a74ae47ca0dc02b6dfad897537d485.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84711d4c-6198-73c4-8a55-117cb9d7e00d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_localized_square_sectors_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun x ↦ (localizedMangoldtProfile A x + localizedCenteredMobiusProfile A x) ^ 2) ∧
      Integrable (fun x ↦ (localizedMangoldtProfile A x - localizedCenteredMobiusProfile A x) ^ 2) :=
  localized_square_sectors_integrable (by linarith : 0 < A) _ _ _ _ _

/-- The localized square difference reproduces the full signed pairing exactly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceVaughanLocalization/Variant47fe6120aa374ef946555e0db09f9b1504a74ae47ca0dc02b6dfad897537d485.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceVaughanLocalization/Variant47fe6120aa374ef946555e0db09f9b1504a74ae47ca0dc02b6dfad897537d485.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09af7426b7522213644bfe7a8667fe92e4b50184` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
