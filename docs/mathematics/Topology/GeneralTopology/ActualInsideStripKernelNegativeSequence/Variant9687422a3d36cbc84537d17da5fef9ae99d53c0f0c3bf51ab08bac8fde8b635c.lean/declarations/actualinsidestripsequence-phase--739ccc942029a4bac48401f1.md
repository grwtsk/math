# actualInsideStripSequence_phase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec118efc-63e1-6d25-5d60-7df419d43b53",
  "kind": "theorem",
  "lexical_name": "actualInsideStripSequence_phase",
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
  "slug": "actualinsidestripsequence-phase--739ccc942029a4bac48401f1",
  "source": {
    "blob": "261fce18e3b19f753f085af6c88fec70fe69f63c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 65,
    "path": "GRWTSK/Topology/GeneralTopology/ActualInsideStripKernelNegativeSequence/Variant9687422a3d36cbc84537d17da5fef9ae99d53c0f0c3bf51ab08bac8fde8b635c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:739ccc942029a4bac48401f19f1cb279003256462ce694836432d5ead5bbd06a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualInsideStripKernelNegativeSequence/Variant9687422a3d36cbc84537d17da5fef9ae99d53c0f0c3bf51ab08bac8fde8b635c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec118efc-63e1-6d25-5d60-7df419d43b53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualInsideStripSequence_phase (n : ℕ) :
    Complex.exp (-2 * actualInsideStripMode * (actualInsideStripSequence n : ℂ)) =
      (Real.exp (-actualInsideStripSequence n / 2) : ℂ) := by
  have he : -2 * actualInsideStripMode * (actualInsideStripSequence n : ℂ) =
      (-actualInsideStripSequence n / 2 : ℝ) -
        (n : ℂ) * (2 * Real.pi * Complex.I) := by
    dsimp [actualInsideStripMode, actualInsideStripSequence, actualPrescribedScaleSequence]
    push_cast
    ring
  rw [he, sub_eq_add_neg, Complex.exp_add,
    Complex.exp_neg ((n : ℂ) * (2 * Real.pi * Complex.I)),
    Complex.exp_nat_mul_two_pi_mul_I, inv_one, mul_one]
  exact (Complex.ofReal_exp _).symm

/-- Exact actual bilateral source asymptotics give the negative real limit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualInsideStripKernelNegativeSequence/Variant9687422a3d36cbc84537d17da5fef9ae99d53c0f0c3bf51ab08bac8fde8b635c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualInsideStripKernelNegativeSequence/Variant9687422a3d36cbc84537d17da5fef9ae99d53c0f0c3bf51ab08bac8fde8b635c.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `261fce18e3b19f753f085af6c88fec70fe69f63c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
