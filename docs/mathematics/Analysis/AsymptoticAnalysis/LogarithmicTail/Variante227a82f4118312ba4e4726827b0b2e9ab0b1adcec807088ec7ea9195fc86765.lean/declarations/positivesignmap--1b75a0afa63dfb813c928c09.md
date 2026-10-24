# positiveSignMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1b5b00966f49567792706c50b4e1e5eb3fc47ce8de6e5f6ebe431d3179abd3ef",
  "kind": "def",
  "lexical_name": "positiveSignMap",
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
  "slug": "positivesignmap--1b75a0afa63dfb813c928c09",
  "source": {
    "blob": "45b7dc87611831c52cfd902ad80de71c58f773cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 49,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/LogarithmicTail/Variante227a82f4118312ba4e4726827b0b2e9ab0b1adcec807088ec7ea9195fc86765.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1b75a0afa63dfb813c928c09fa7fe51e99235816970a95840204a71c25a7ffc2",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/LogarithmicTail/Variante227a82f4118312ba4e4726827b0b2e9ab0b1adcec807088ec7ea9195fc86765.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1b5b00966f49567792706c50b4e1e5eb3fc47ce8de6e5f6ebe431d3179abd3ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def positiveSignMap (t : ℝ) : NonzeroPrefix t → PositivePrefix t × Bool := fun o =>
  if h : 0 < (shiftedValue o.val).im then
    (⟨o.val, h, by simpa only [abs_of_pos h] using o.property.2⟩, true)
  else
    (⟨conjugateOccurrence o.val, by
      rw [shiftedValue_conjugate, Complex.conj_im]
      have hn : (shiftedValue o.val).im < 0 :=
        lt_of_le_of_ne (le_of_not_gt h) (abs_pos.mp o.property.1)
      exact neg_pos.mpr hn, by
      rw [shiftedValue_conjugate, Complex.conj_im]
      have hn : (shiftedValue o.val).im < 0 :=
        lt_of_le_of_ne (le_of_not_gt h) (abs_pos.mp o.property.1)
      simpa only [abs_of_neg hn] using o.property.2⟩, false)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/LogarithmicTail/Variante227a82f4118312ba4e4726827b0b2e9ab0b1adcec807088ec7ea9195fc86765.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/LogarithmicTail/Variante227a82f4118312ba4e4726827b0b2e9ab0b1adcec807088ec7ea9195fc86765.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45b7dc87611831c52cfd902ad80de71c58f773cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
