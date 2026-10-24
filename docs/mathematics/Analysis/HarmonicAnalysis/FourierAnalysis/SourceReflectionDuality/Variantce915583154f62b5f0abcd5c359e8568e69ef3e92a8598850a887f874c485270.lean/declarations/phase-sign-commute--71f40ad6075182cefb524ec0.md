# phase_sign_commute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3bf7bfdf81147ae1250fd5b0290962202ea26f10",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 336,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ce915583154f62b5f0abcd5c359e8568e69ef3e92a8598850a887f874c485270.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:decdbace-eef8-c06c-6006-450ed2f5c588",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df486bae-5cde-2452-3076-6ee427621fca",
  "kind": "theorem",
  "lexical_name": "phase_sign_commute",
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
  "slug": "phase-sign-commute--71f40ad6075182cefb524ec0",
  "source": {
    "blob": "3bf7bfdf81147ae1250fd5b0290962202ea26f10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 336,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantce915583154f62b5f0abcd5c359e8568e69ef3e92a8598850a887f874c485270.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71f40ad6075182cefb524ec051edda15674e8421e95779d1745c59e13aeaa1e1",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantce915583154f62b5f0abcd5c359e8568e69ef3e92a8598850a887f874c485270.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df486bae-5cde-2452-3076-6ee427621fca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 336–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem phase_sign_commute (u : ℝ) (f : ComplexL2) :
    signMultiplier (translationPhaseMultiplier u f) =
      translationPhaseMultiplier u (signMultiplier f) := by
  apply Lp.ext
  filter_upwards [signMultiplier_coe_ae (translationPhaseMultiplier u f),
    translationPhaseMultiplier_coe_ae u f,
    translationPhaseMultiplier_coe_ae u (signMultiplier f),signMultiplier_coe_ae f]
    with ξ h1 h2 h3 h4
  rw [h1,h2,h3,h4]
  ring

/-- The actual sign Fourier multiplier commutes with actual spatial translations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantce915583154f62b5f0abcd5c359e8568e69ef3e92a8598850a887f874c485270.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantce915583154f62b5f0abcd5c359e8568e69ef3e92a8598850a887f874c485270.lean#L336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bf7bfdf81147ae1250fd5b0290962202ea26f10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
