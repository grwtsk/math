# grh_of_rightHalfPlane_zeroFree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4058e82ce1a3db11c3379e92f0cf455931e17812",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 27,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/dd1b90566b8c1acf629b20ff51b0ee22c909880d38fd3bd909f88ed877692d51.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b12cebd-b489-6ed7-d219-7f172e8fb40c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:209b441f-a443-12dd-d488-5167b8d2986e",
  "kind": "theorem",
  "lexical_name": "grh_of_rightHalfPlane_zeroFree",
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
  "slug": "grh-of-righthalfplane-zerofree--de21de0264a0312cb0cb1406",
  "source": {
    "blob": "4058e82ce1a3db11c3379e92f0cf455931e17812",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 27,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZeroExclusion/Variantdd1b90566b8c1acf629b20ff51b0ee22c909880d38fd3bd909f88ed877692d51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de21de0264a0312cb0cb14064389aa5679a50184ac65ca61d2ce6e15751c3013",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZeroExclusion/Variantdd1b90566b8c1acf629b20ff51b0ee22c909880d38fd3bd909f88ed877692d51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:209b441f-a443-12dd-d488-5167b8d2986e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem grh_of_rightHalfPlane_zeroFree
    {q : ℕ} [NeZero q]
    {χ : DirichletCharacter ℂ q}
    (hPrimitive : DirichletCharacter.IsPrimitive χ)
    (hZeroFree :
      ∀ s : ℂ,
        (1 / 2 : ℝ) < s.re →
        s.re < 1 →
        DirichletCharacter.LFunction χ s ≠ 0) :
    GRHForPrimitiveCharacter χ := by
  intro s hsZero hs0 hs1
  rcases lt_trichotomy s.re (1 / 2 : ℝ) with hLeft | hEq | hRight
  · have hReflectedZero :=
      primitive_LFunction_reflects_zero hPrimitive hs0 hLeft hsZero
    have hReflectedHalf :
        (1 / 2 : ℝ) < (criticalReflection s).re := by
      rw [criticalReflection_re]
      linarith
    have hReflectedOne : (criticalReflection s).re < 1 := by
      rw [criticalReflection_re]
      linarith
    exact False.elim
      ((hZeroFree (criticalReflection s) hReflectedHalf hReflectedOne)
        hReflectedZero)
  · exact hEq
  · exact False.elim ((hZeroFree s hRight hs1) hsZero)

/-- The centered twisted-Chebyshev half-plus-epsilon criterion implies GRH
for one primitive character, conditional only on its explicit Mellin and
logarithmic-derivative interface.  Functional-equation reflection is now a
direct theorem over mathlib's completed `L`-function. -/
@[surface_novel, surface_interface]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZeroExclusion/Variantdd1b90566b8c1acf629b20ff51b0ee22c909880d38fd3bd909f88ed877692d51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZeroExclusion/Variantdd1b90566b8c1acf629b20ff51b0ee22c909880d38fd3bd909f88ed877692d51.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4058e82ce1a3db11c3379e92f0cf455931e17812` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
