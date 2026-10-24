# actual_multiple_eq_plain_sample

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:80116b46-6fdc-0886-90ed-f8a322b014dc",
  "kind": "theorem",
  "lexical_name": "actual_multiple_eq_plain_sample",
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
  "slug": "actual-multiple-eq-plain-sample--6b120c128d93b1856f5b33b9",
  "source": {
    "blob": "dea9826e01e8b9d69853dc9311ed25d4a10e44fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 91,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4dc2c15b0a0deb196af8SourceDivisorQuotientSampling/Variantdb3c5e52641b19ebdef5757e2d649e22fe0ad64dce9602207d6959f551752be0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b120c128d93b1856f5b33b9252d2d65c394e312e99e2249e8be08c1d7aa4ff2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4dc2c15b0a0deb196af8SourceDivisorQuotientSampling/Variantdb3c5e52641b19ebdef5757e2d649e22fe0ad64dce9602207d6959f551752be0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80116b46-6fdc-0886-90ed-f8a322b014dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actual_multiple_eq_plain_sample
    (A : ℝ) {m d j : ℕ} (hm : 0 < m) (hd : 0 < d) (hj : 0 < j) :
    sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ) =
      plainProfile A ((d * m : ℕ) : ℝ) (j : ℝ) := by
  have hk : 0 < ((d * m : ℕ) : ℝ) := by exact_mod_cast Nat.mul_pos hd hm
  have hjr : 0 < (j : ℝ) := by exact_mod_cast hj
  rw [plainProfile_eq_of_pos A _ hjr, sourcePlainSamplingTerm_eq_source_weight A hk hjr]
  simp only [Nat.cast_mul]
  congr 1
  ring

/-- The full actual multiplied sample retains its independent main term and exact A^-2 error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4dc2c15b0a0deb196af8SourceDivisorQuotientSampling/Variantdb3c5e52641b19ebdef5757e2d649e22fe0ad64dce9602207d6959f551752be0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4dc2c15b0a0deb196af8SourceDivisorQuotientSampling/Variantdb3c5e52641b19ebdef5757e2d649e22fe0ad64dce9602207d6959f551752be0.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dea9826e01e8b9d69853dc9311ed25d4a10e44fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
