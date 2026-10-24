# wrong_sign_defect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1045233f-8e45-7bd4-95de-d3cad17cfec1",
  "kind": "theorem",
  "lexical_name": "wrong_sign_defect",
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
  "slug": "wrong-sign-defect--bab5c22ed5d36d5fd815f176",
  "source": {
    "blob": "c73b42d61be39e040ff7e6a4e1e318c6f0514cf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 71,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalTentFiniteHeadGram.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bab5c22ed5d36d5fd815f1766f9d8900fa1ab9311833f27e3904f31e2d116f15",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalTentFiniteHeadGram.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1045233f-8e45-7bd4-95de-d3cad17cfec1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wrong_sign_defect
    (n : ℕ) (height : ℝ) :
    finiteHeadCorrection n height + (canonicalCorrection n : ℂ) =
      finiteHeadBalance (n + 2) height +
        2 * (canonicalCorrection n : ℂ) := by
  calc
    finiteHeadCorrection n height + (canonicalCorrection n : ℂ) =
        (finiteHeadCorrection n height - (canonicalCorrection n : ℂ)) +
          2 * (canonicalCorrection n : ℂ) := by ring
    _ = _ := by rw [finiteHeadCorrection_sub_canonicalCorrection_eq]

/-- Certified finite-height comparison, conditional only on the hypotheses
of the imported canonical explicit-formula and tail theorems. The bound is
not a zero-count certificate or a numerical enclosure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalTentFiniteHeadGram.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalTentFiniteHeadGram.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c73b42d61be39e040ff7e6a4e1e318c6f0514cf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
