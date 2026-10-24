# imaginary_block_gram_error_floor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:adbd2ee7-168c-796a-124c-6aeacd190687",
  "kind": "theorem",
  "lexical_name": "imaginary_block_gram_error_floor",
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
  "slug": "imaginary-block-gram-error-floor--515476008b5e5a4d9d3a05f2",
  "source": {
    "blob": "49cca1f22a48fb43604ea01c60055567057518e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 310,
    "path": "GRWTSK/Analysis/ErrorBounds/HermitianGramRealification.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:515476008b5e5a4d9d3a05f2c96e92d88dc65714add8c6a4c37763460a338d14",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/HermitianGramRealification.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:adbd2ee7-168c-796a-124c-6aeacd190687`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem imaginary_block_gram_error_floor (feature : κ → Fin 2 → ℂ) :
    2 ≤ |(complexReadout imaginaryTest imaginaryBlock).re -
      (complexReadout imaginaryTest (complexGram feature)).re| := by
  exact positive_model_error_floor
    (actual := (complexReadout imaginaryTest imaginaryBlock).re)
    (approximate := (complexReadout imaginaryTest (complexGram feature)).re)
    (strength := 2)
    (by simpa only [imaginary_mixed_terms_fixture.1] using (le_refl (-2 : ℝ)))
    (complex_gram_readout_nonnegative imaginaryTest feature) le_rfl

/-- Keeping only one real row loses half the value in this one-feature example. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/HermitianGramRealification.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/HermitianGramRealification.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49cca1f22a48fb43604ea01c60055567057518e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
