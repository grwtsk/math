# closure_halfSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5eddb0f6-8a0f-97d4-2c3e-722b0d666026",
  "kind": "theorem",
  "lexical_name": "closure_halfSpace",
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
  "slug": "closure-halfspace--39a9eb4f8e88c719074747bf",
  "source": {
    "blob": "0af108d554100e3e24777c0dfc2c6be8883cd523",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 142,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39a9eb4f8e88c719074747bfbe1117f3c4f41a267a0a7777ca1237ba2a774814",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5eddb0f6-8a0f-97d4-2c3e-722b0d666026`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closure_halfSpace {n : ℕ} (p : ℝ≥0∞) (a : ℝ) (i : Fin n) :
    closure { y : PiLp p (fun _ : Fin n ↦ ℝ) | a ≤ y i } = { y | a ≤ y i } := by
  let f : (Π _ : Fin n, ℝ) →L[ℝ] ℝ := ContinuousLinearMap.proj i
  change closure (f ⁻¹' Ici a) = f ⁻¹' Ici a
  rw [f.closure_preimage, closure_Ici]
  apply Function.surjective_eval

@[deprecated (since := "2024-11-12")] alias closure_halfspace := closure_halfSpace

open ENNReal in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0af108d554100e3e24777c0dfc2c6be8883cd523` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
