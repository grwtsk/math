# re_term_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c2cac12-8182-14d9-ddc4-e06de0af7985",
  "kind": "lemma",
  "lexical_name": "re_term_eq",
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
  "slug": "re-term-eq--65558a48e2b102afea7dc001",
  "source": {
    "blob": "3d6b1ff684cde59c88654a846ec5231d2cf6aea0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 49,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Mu/Variantd1fa7c047443c82a7d229092174e5e059cfd91cd5804dab4d4c5c9e6354184f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65558a48e2b102afea7dc0017a859fcf570cdb3af154fca55e151ffe4171a482",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Mu/Variantd1fa7c047443c82a7d229092174e5e059cfd91cd5804dab4d4c5c9e6354184f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c2cac12-8182-14d9-ddc4-e06de0af7985`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma re_term_eq (t : ℝ) (n : ℕ) :
    ((1 : ℂ) / ((n : ℂ) + 1) - 1 / (((a : ℂ) + Complex.I * t) + n + 1)).re
      = 1 / ((n : ℝ) + 1) - ((n : ℝ) + 1 + a) / (((n : ℝ) + 1 + a) ^ 2 + t ^ 2) := by
  rw [Complex.sub_re]
  congr 1
  · rw [show ((n : ℂ) + 1) = (((n : ℝ) + 1 : ℝ) : ℂ) by push_cast; ring,
      show (1 : ℂ) / ((((n : ℝ) + 1 : ℝ)) : ℂ) = ((((1 : ℝ) / ((n : ℝ) + 1)) : ℝ) : ℂ) by
        push_cast
        ring]
    exact Complex.ofReal_re _
  · rw [one_div, Complex.inv_re]
    have hre : (((a : ℂ) + Complex.I * t) + n + 1).re = (n : ℝ) + 1 + a := by
      simp
      ring
    have him : (((a : ℂ) + Complex.I * t) + n + 1).im = t := by simp
    rw [hre, Complex.normSq_apply, hre, him]
    ring

/-- Re(1/z) on the line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Mu/Variantd1fa7c047443c82a7d229092174e5e059cfd91cd5804dab4d4c5c9e6354184f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Mu/Variantd1fa7c047443c82a7d229092174e5e059cfd91cd5804dab4d4c5c9e6354184f9.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d6b1ff684cde59c88654a846ec5231d2cf6aea0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
