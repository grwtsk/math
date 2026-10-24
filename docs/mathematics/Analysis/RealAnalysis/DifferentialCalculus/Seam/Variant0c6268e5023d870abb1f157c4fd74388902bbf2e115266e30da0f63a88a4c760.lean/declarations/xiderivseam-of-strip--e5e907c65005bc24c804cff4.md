# xiDerivSeam_of_strip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f3cf3101f93dfcf07bb85e48e647927410a6ff1e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 264,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0c6268e5023d870abb1f157c4fd74388902bbf2e115266e30da0f63a88a4c760.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8263aa8e-d50c-8687-63da-96fd6df51898",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ad6b6a67-36ac-0f8c-3600-5a93d2a7fe65",
  "kind": "theorem",
  "lexical_name": "xiDerivSeam_of_strip",
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
  "slug": "xiderivseam-of-strip--e5e907c65005bc24c804cff4",
  "source": {
    "blob": "f3cf3101f93dfcf07bb85e48e647927410a6ff1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 264,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Seam/Variant0c6268e5023d870abb1f157c4fd74388902bbf2e115266e30da0f63a88a4c760.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5e907c65005bc24c804cff471966d8c39927f1c4b2bbba1335a767de8fbfb2d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Seam/Variant0c6268e5023d870abb1f157c4fd74388902bbf2e115266e30da0f63a88a4c760.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad6b6a67-36ac-0f8c-3600-5a93d2a7fe65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xiDerivSeam_of_strip (hF2 : XiDerivZerosInStrip) : XiDerivSeam where
  one_le_mult := fun ρ h => (one_le_xiDerivMult_iff ρ).mpr h
  reflect_zero := fun ρ h => (xiDeriv_reflect_eq_zero_iff ρ).mpr h
  mult_reflect := fun ρ _ => xiDerivMult_reflect ρ
  finite_window := finite_window_of_strip hF2


/-! ### §3. h, L = h′/h, and Y = ξ′/Γℝ  [XF′ §0, Lemma 2.1]

h(s) := s(s−1)/2 · Γℝ(s) (so ξ = h·ζ on Re s > 0, s ≠ 1), L := h′/h = Γℝ′/Γℝ + 1/s + 1/(s−1)
([XF′]'s L(s) = 1/s + 1/(s−1) − ½log π + ½ψ(s/2), via Zeta23.RvM.logDeriv_Gammaℝ), and
Y(s) := ξ′(s)/Γℝ(s).  Y is the function all the zero-count estimates of this development are about:
it is analytic on Re s > 0 with the SAME zeros and multiplicities as ξ′ there (Γℝ is analytic and
zero-free on Re s > 0), and unlike ξ′ it has only polynomial growth in |Im s| (closed form below), so
Jensen/Landau on discs centred at 2 + it inside Re s > 0 apply to it exactly as they do to ζ in
Zeta23/RvM/LocalCount.lean. -/

/-- L(s) := Γℝ′/Γℝ(s) + 1/s + 1/(s−1)  (= h′/h). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Seam/Variant0c6268e5023d870abb1f157c4fd74388902bbf2e115266e30da0f63a88a4c760.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Seam/Variant0c6268e5023d870abb1f157c4fd74388902bbf2e115266e30da0f63a88a4c760.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3cf3101f93dfcf07bb85e48e647927410a6ff1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
