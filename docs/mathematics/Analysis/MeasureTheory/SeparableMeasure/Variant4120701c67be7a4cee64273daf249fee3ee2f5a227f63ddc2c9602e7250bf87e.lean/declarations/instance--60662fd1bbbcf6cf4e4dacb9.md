# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c640d097cbbc599c8c074399bcddd7d7e6a716122be9d472954cccc80fd81f6",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--60662fd1bbbcf6cf4e4dacb9",
  "source": {
    "blob": "074ad086f166d02a09dce58d5fee60fd0ce3f53b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 422,
    "line": 410,
    "path": "GRWTSK/Analysis/MeasureTheory/SeparableMeasure/Variant4120701c67be7a4cee64273daf249fee3ee2f5a227f63ddc2c9602e7250bf87e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:60662fd1bbbcf6cf4e4dacb99cecb03bb4fd927da8ce853ae2c1fb67febf08b4",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SeparableMeasure/Variant4120701c67be7a4cee64273daf249fee3ee2f5a227f63ddc2c9602e7250bf87e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c640d097cbbc599c8c074399bcddd7d7e6a716122be9d472954cccc80fd81f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 410–422.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [hμ : IsSeparable μ] : IsSeparable μ.completion := by
  obtain ⟨𝒜, count_𝒜, h𝒜⟩ := exists_countable_measureDense μ
  exact ⟨𝒜, count_𝒜, h𝒜.completion⟩

end IsSeparable

section SecondCountableLp

/-! ### A sufficient condition for $L^p$ spaces to be second-countable -/

/-- If the measure `μ` is separable (in particular if `X` is countably generated and `μ` is
`s`-finite), if `E` is a second-countable `NormedAddCommGroup`, and if `1 ≤ p < +∞`,
then the associated `Lᵖ` space is second-countable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SeparableMeasure/Variant4120701c67be7a4cee64273daf249fee3ee2f5a227f63ddc2c9602e7250bf87e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SeparableMeasure/Variant4120701c67be7a4cee64273daf249fee3ee2f5a227f63ddc2c9602e7250bf87e.lean#L410).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `074ad086f166d02a09dce58d5fee60fd0ce3f53b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
