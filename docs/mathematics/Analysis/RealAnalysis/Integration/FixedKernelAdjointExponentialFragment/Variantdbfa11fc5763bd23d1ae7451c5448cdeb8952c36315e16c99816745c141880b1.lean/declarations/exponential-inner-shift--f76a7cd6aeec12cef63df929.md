# exponential_inner_shift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec245e77-e5f3-e498-c9fe-7ef3bd869f37",
  "kind": "theorem",
  "lexical_name": "exponential_inner_shift",
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
  "slug": "exponential-inner-shift--f76a7cd6aeec12cef63df929",
  "source": {
    "blob": "f46b26e735629adf21b1bc27bf16151d619ceaa4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 80,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponentialFragment/Variantdbfa11fc5763bd23d1ae7451c5448cdeb8952c36315e16c99816745c141880b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f76a7cd6aeec12cef63df929661e92f5e74a912ce2aa4e92cab38a45c46a04c2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponentialFragment/Variantdbfa11fc5763bd23d1ae7451c5448cdeb8952c36315e16c99816745c141880b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec245e77-e5f3-e498-c9fe-7ef3bd869f37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exponential_inner_shift (a : ℝ) (ha : 0 ≤ a) (z : ℂ) (hz : 0 < z.re) (f : H) :
    inner ℂ (zeroExtension (exponentialVector z hz)) (fullShift a (zeroExtension f)) =
      Complex.exp (-z * (a : ℂ)) * inner ℂ (exponentialVector z hz) f := by
  calc
    _ = inner ℂ (fullShift (-a) (zeroExtension (exponentialVector z hz)))
        (fullShift (-a) (fullShift a (zeroExtension f))) :=
      ((fullShift (-a)).inner_map_map _ _).symm
    _ = inner ℂ (restriction (fullShift (-a) (zeroExtension (exponentialVector z hz)))) f := by
      rw [fullShift_neg_cancel, inner_restriction_zeroExtension]
    _ = _ := by
      rw [restriction_backwardShift_exponential a ha z hz, inner_smul_left]
      rw [← Complex.exp_conj]
      simp only [map_mul, map_neg, Complex.conj_conj, Complex.conj_ofReal]

/-- An admitted Bochner integral gives the exact weak source-operator identity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponentialFragment/Variantdbfa11fc5763bd23d1ae7451c5448cdeb8952c36315e16c99816745c141880b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponentialFragment/Variantdbfa11fc5763bd23d1ae7451c5448cdeb8952c36315e16c99816745c141880b1.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f46b26e735629adf21b1bc27bf16151d619ceaa4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
