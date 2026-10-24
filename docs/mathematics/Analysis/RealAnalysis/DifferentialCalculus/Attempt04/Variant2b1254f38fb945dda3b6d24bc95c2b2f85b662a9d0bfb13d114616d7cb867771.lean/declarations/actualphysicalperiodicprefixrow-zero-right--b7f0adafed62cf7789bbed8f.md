# actualPhysicalPeriodicPrefixRow_zero_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5b076b4-6eca-2d83-8c69-c63474b3ff26",
  "kind": "theorem",
  "lexical_name": "actualPhysicalPeriodicPrefixRow_zero_right",
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
  "slug": "actualphysicalperiodicprefixrow-zero-right--b7f0adafed62cf7789bbed8f",
  "source": {
    "blob": "dbd1aad8f678674eba7f820cbbc64555c3e63fe2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 138,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant2b1254f38fb945dda3b6d24bc95c2b2f85b662a9d0bfb13d114616d7cb867771.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7f0adafed62cf7789bbed8f9145a3ad40ed678ae1b8cd29b64bf5202dccc36f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant2b1254f38fb945dda3b6d24bc95c2b2f85b662a9d0bfb13d114616d7cb867771.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5b076b4-6eca-2d83-8c69-c63474b3ff26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPhysicalPeriodicPrefixRow_zero_right {A t l b : ℝ} (hA : 1 ≤ A)
    (hl : 0 < l) (hlb : l ≤ b) (ht : 2 * A - Real.log l ≤ t) :
    actualPhysicalPeriodicPrefixRow A t l b = 0 := by
  unfold actualPhysicalPeriodicPrefixRow
  apply intervalIntegral.integral_eq_zero_of_forall
  intro x hx
  rw [uIcc_of_le hlb] at hx
  have hs : 2 * A ≤ t + Real.log x := by linarith [Real.log_le_log hl hx.1]
  rw [actualPeriodicPhysicalCellProfile_zero_right hA hs, mul_zero]

end
end FormalResearch.RiemannHypothesis.SourceActualFarPeriodicBudget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant2b1254f38fb945dda3b6d24bc95c2b2f85b662a9d0bfb13d114616d7cb867771.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant2b1254f38fb945dda3b6d24bc95c2b2f85b662a9d0bfb13d114616d7cb867771.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbd1aad8f678674eba7f820cbbc64555c3e63fe2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
