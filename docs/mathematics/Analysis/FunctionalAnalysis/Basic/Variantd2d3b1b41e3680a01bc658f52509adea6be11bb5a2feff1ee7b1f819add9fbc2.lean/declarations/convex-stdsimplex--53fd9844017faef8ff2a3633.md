# convex_stdSimplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:180af3c8-73b1-5b25-d4d3-056f9b8b884d",
  "kind": "theorem",
  "lexical_name": "convex_stdSimplex",
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
  "slug": "convex-stdsimplex--53fd9844017faef8ff2a3633",
  "source": {
    "blob": "ba916e3cff660920e51dd42b1afacb020d30e246",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 681,
    "line": 670,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variantd2d3b1b41e3680a01bc658f52509adea6be11bb5a2feff1ee7b1f819add9fbc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53fd9844017faef8ff2a363382d79890366e9a92d3700317000a8ff38e2d172b",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Basic/Variantd2d3b1b41e3680a01bc658f52509adea6be11bb5a2feff1ee7b1f819add9fbc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:180af3c8-73b1-5b25-d4d3-056f9b8b884d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 670–681.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convex_stdSimplex : Convex 𝕜 (stdSimplex 𝕜 ι) := by
  refine' fun f hf g hg a b ha hb hab => ⟨fun x => _, _⟩
  · apply_rules [add_nonneg, mul_nonneg, hf.1, hg.1]
  · erw [Finset.sum_add_distrib]
    simp only [Pi.smul_apply] -- Porting note: `erw` failed to rewrite with `← Finset.smul_sum`
    rw [← Finset.smul_sum, ← Finset.smul_sum, hf.2, hg.2, smul_eq_mul,
      smul_eq_mul, mul_one, mul_one]
    exact hab
#align convex_std_simplex convex_stdSimplex

variable {ι}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Basic/Variantd2d3b1b41e3680a01bc658f52509adea6be11bb5a2feff1ee7b1f819add9fbc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Basic/Variantd2d3b1b41e3680a01bc658f52509adea6be11bb5a2feff1ee7b1f819add9fbc2.lean#L670).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba916e3cff660920e51dd42b1afacb020d30e246` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
