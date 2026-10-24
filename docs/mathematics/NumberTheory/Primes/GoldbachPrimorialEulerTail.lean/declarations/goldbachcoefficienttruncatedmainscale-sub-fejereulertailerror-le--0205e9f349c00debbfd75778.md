# goldbachCoefficientTruncatedMainScale_sub_fejerEulerTailError_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c7cd2df-5f27-cac2-504e-9a6785a98425",
  "kind": "theorem",
  "lexical_name": "goldbachCoefficientTruncatedMainScale_sub_fejerEulerTailError_le",
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
  "slug": "goldbachcoefficienttruncatedmainscale-sub-fejereulertailerror-le--0205e9f349c00debbfd75778",
  "source": {
    "blob": "fc18a8b4f8e86ee7e3cb5a9c8ceded60e7105b31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 367,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0205e9f349c00debbfd75778d0d572326bcd4e3e034c697ac5a5b38fe45912c5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c7cd2df-5f27-cac2-504e-9a6785a98425`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 367–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachCoefficientTruncatedMainScale_sub_fejerEulerTailError_le
    (Q N : ℕ) :
    goldbachCoefficientTruncatedMainScale
        Q N (goldbachFejerCoreMain N) -
        goldbachFejerEulerTailError Q N ≤
      goldbachFejerDenominatorLowerSum Q N := by
  have hsplit :=
    goldbachFiniteCoefficientEulerProduct_eq_range_add_tail Q N
  have htail :=
    norm_goldbachPrimorialCoefficientTail_le Q N
  have htailRe :
      |(goldbachPrimorialCoefficientTail Q N).re| ≤
        goldbachPrimorialCoefficientTailNorm Q N :=
    (Complex.abs_re_le_norm
      (goldbachPrimorialCoefficientTail Q N)).trans htail
  have hcore0 : 0 ≤ goldbachFejerCoreMain N := by
    unfold goldbachFejerCoreMain
    positivity
  rw [goldbachFejerDenominatorLowerSum_eq_core_mul_range_sub_penalty]
  unfold goldbachCoefficientTruncatedMainScale
    goldbachFejerEulerTailError
  have hreal := congrArg Complex.re hsplit
  simp only [Complex.add_re] at hreal
  rw [hreal]
  have hupperTail :
      (goldbachPrimorialCoefficientTail Q N).re ≤
        goldbachPrimorialCoefficientTailNorm Q N :=
    (abs_le.mp htailRe).2
  nlinarith

/-- Terminal finite certificate using the exact composite coefficient formula,
the explicit primorial tail, the Fejér sign penalty, progression residuals,
and the complete signed minor contribution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean#L367).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc18a8b4f8e86ee7e3cb5a9c8ceded60e7105b31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
