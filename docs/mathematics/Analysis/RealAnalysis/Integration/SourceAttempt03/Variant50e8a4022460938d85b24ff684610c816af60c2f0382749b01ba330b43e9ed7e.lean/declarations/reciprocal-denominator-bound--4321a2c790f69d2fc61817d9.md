# reciprocal_denominator_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d469354a-2cc9-7101-142f-f92086a2afc0",
  "kind": "theorem",
  "lexical_name": "reciprocal_denominator_bound",
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
  "slug": "reciprocal-denominator-bound--4321a2c790f69d2fc61817d9",
  "source": {
    "blob": "293c1cb51180c5f3175f5df8cdbedc181173b9b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 25,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt03/Variant50e8a4022460938d85b24ff684610c816af60c2f0382749b01ba330b43e9ed7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4321a2c790f69d2fc61817d972b8ef67d6a5078c1ca7b5ffbcee9875c05c11f5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceAttempt03/Variant50e8a4022460938d85b24ff684610c816af60c2f0382749b01ba330b43e9ed7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d469354a-2cc9-7101-142f-f92086a2afc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reciprocal_denominator_bound {t : ℝ} (ht : 0 < t) :
    1 / (1 - Real.exp (-2 * t)) ≤ 1 + 1 / (2 * t) := by
  have hlin : 2 * t ≤ Real.exp (2 * t) - 1 := by
    linarith [Real.add_one_le_exp (2 * t)]
  have hepos : 0 < Real.exp (2 * t) - 1 := by linarith
  have hid : 1 / (1 - Real.exp (-2 * t)) = 1 + 1 / (Real.exp (2 * t) - 1) := by
    rw [show -2 * t = -(2 * t) by ring, Real.exp_neg]
    field_simp [hepos.ne']
    ring
  rw [hid]
  exact add_le_add le_rfl (one_div_le_one_div_of_le (by linarith : 0 < 2 * t) hlin)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceAttempt03/Variant50e8a4022460938d85b24ff684610c816af60c2f0382749b01ba330b43e9ed7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt03/Variant50e8a4022460938d85b24ff684610c816af60c2f0382749b01ba330b43e9ed7e.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `293c1cb51180c5f3175f5df8cdbedc181173b9b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
