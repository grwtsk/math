# weighted_coefficient_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "12e1d1c6666d4e249a1e02c4810c1c4bf6b3d221",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 148,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/828fae71a7778dfcff77d04a230e05e5cae925ffed1ed1066643070badeebf5b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d2316aba-26e1-adbb-7616-3a109fca4dcc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ab16f028-95ac-ff7a-acba-b509e7280661",
  "kind": "theorem",
  "lexical_name": "weighted_coefficient_eq",
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
  "slug": "weighted-coefficient-eq--e0807d1b16d40927ed89d43e",
  "source": {
    "blob": "12e1d1c6666d4e249a1e02c4810c1c4bf6b3d221",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 148,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTilt/Variant828fae71a7778dfcff77d04a230e05e5cae925ffed1ed1066643070badeebf5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0807d1b16d40927ed89d43ebf02a0428e1367c387ce285aed5a35d5088b303b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTilt/Variant828fae71a7778dfcff77d04a230e05e5cae925ffed1ed1066643070badeebf5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab16f028-95ac-ff7a-acba-b509e7280661`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem weighted_coefficient_eq (z : ℂ) (n : ℕ) (hn : 1 ≤ n) :
    powerWeight z (n : ℝ) * reciprocalCoefficient n =
      (ArithmeticFunction.moebius n : ℂ) *
        Complex.exp (-(1 / 2 + z) * (Real.log (n : ℝ) : ℂ)) := by
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
  have he : Complex.exp (-(Real.log (n : ℝ) : ℂ)) = (n : ℂ)⁻¹ := by
    rw [← Complex.ofReal_neg, ← Complex.ofReal_exp, Real.exp_neg,
      Real.exp_log hn0, Complex.ofReal_inv]
    rfl
  unfold powerWeight reciprocalCoefficient
  simp only [div_eq_mul_inv]
  rw [← he]
  calc
    _ = (ArithmeticFunction.moebius n : ℂ) *
      (Complex.exp ((1 / 2 - z) * (Real.log (n : ℝ) : ℂ)) *
        Complex.exp (-(Real.log (n : ℝ) : ℂ))) := by ring
    _ = _ := by
      rw [← Complex.exp_add]
      congr 2
      ring

/-- Exact finite complex Abel transport retains the endpoint and every signed coefficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTilt/Variant828fae71a7778dfcff77d04a230e05e5cae925ffed1ed1066643070badeebf5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTilt/Variant828fae71a7778dfcff77d04a230e05e5cae925ffed1ed1066643070badeebf5b.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12e1d1c6666d4e249a1e02c4810c1c4bf6b3d221` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
