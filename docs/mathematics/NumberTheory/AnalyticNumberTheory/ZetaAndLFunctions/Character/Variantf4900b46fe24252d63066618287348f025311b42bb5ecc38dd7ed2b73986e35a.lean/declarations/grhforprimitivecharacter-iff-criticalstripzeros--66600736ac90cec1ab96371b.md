# grhForPrimitiveCharacter_iff_criticalStripZeros

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ef0e64386f1b26debf97aa248cfadeaffb0b4820",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f4900b46fe24252d63066618287348f025311b42bb5ecc38dd7ed2b73986e35a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7074ddd0-07d1-4305-777f-4e6431a73eb4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db0a5d60-5e50-7136-7ec8-147237b7a5ca",
  "kind": "theorem",
  "lexical_name": "grhForPrimitiveCharacter_iff_criticalStripZeros",
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
  "slug": "grhforprimitivecharacter-iff-criticalstripzeros--66600736ac90cec1ab96371b",
  "source": {
    "blob": "ef0e64386f1b26debf97aa248cfadeaffb0b4820",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 124,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Character/Variantf4900b46fe24252d63066618287348f025311b42bb5ecc38dd7ed2b73986e35a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66600736ac90cec1ab96371b54ce161cc637f5f288db55238791cc45a60da82c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Character/Variantf4900b46fe24252d63066618287348f025311b42bb5ecc38dd7ed2b73986e35a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db0a5d60-5e50-7136-7ec8-147237b7a5ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem grhForPrimitiveCharacter_iff_criticalStripZeros
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q) :
    GRHForPrimitiveCharacter chi ↔
      ∀ s : ℂ, IsCriticalStripZero chi s → s.re = (1 / 2 : ℝ) := by
  constructor
  · intro h s hs
    exact h s hs.1 hs.2.1 hs.2.2
  · intro h s hs h0 h1
    exact h s ⟨hs, h0, h1⟩

/-- At modulus one, the generic character-local statement is literally the
critical-strip Riemann-zeta statement supplied by mathlib's
`LFunction_modOne_eq`. -/
@[surface_adapter]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Character/Variantf4900b46fe24252d63066618287348f025311b42bb5ecc38dd7ed2b73986e35a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Character/Variantf4900b46fe24252d63066618287348f025311b42bb5ecc38dd7ed2b73986e35a.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef0e64386f1b26debf97aa248cfadeaffb0b4820` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
