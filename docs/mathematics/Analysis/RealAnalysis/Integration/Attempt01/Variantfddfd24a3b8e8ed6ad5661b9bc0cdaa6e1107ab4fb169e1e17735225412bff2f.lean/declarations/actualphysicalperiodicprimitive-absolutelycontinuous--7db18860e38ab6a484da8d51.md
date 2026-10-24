# actualPhysicalPeriodicPrimitive_absolutelyContinuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cba6e0d3-4a2c-431f-097c-f6064e2fb4c5",
  "kind": "theorem",
  "lexical_name": "actualPhysicalPeriodicPrimitive_absolutelyContinuous",
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
  "slug": "actualphysicalperiodicprimitive-absolutelycontinuous--7db18860e38ab6a484da8d51",
  "source": {
    "blob": "82158697f6f99243fb67c1d0afd74df203e8bc69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 217,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt01/Variantfddfd24a3b8e8ed6ad5661b9bc0cdaa6e1107ab4fb169e1e17735225412bff2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7db18860e38ab6a484da8d514080f5c0d347ab35892bfa46f7409d3249bb66af",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt01/Variantfddfd24a3b8e8ed6ad5661b9bc0cdaa6e1107ab4fb169e1e17735225412bff2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cba6e0d3-4a2c-431f-097c-f6064e2fb4c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPhysicalPeriodicPrimitive_absolutelyContinuous (U : ℕ) {l b : ℝ}
    (hl : 0 ≤ l) (hlb : l ≤ b) :
    AbsolutelyContinuousOnInterval (actualPhysicalPeriodicPrimitive U) l b := by
  have hi := actualPhysicalPeriodicDensity_intervalIntegrable U 0 b
  have ha := hi.absolutelyContinuousOnInterval_intervalIntegral (by simp : (0 : ℝ) ∈ uIcc 0 b)
  apply ha.mono
  rw [uIcc_of_le hlb, uIcc_of_le (hl.trans hlb)]
  exact Icc_subset_Icc hl le_rfl

/-- The AE derivative is the literal period density; no integer jump is silently removed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt01/Variantfddfd24a3b8e8ed6ad5661b9bc0cdaa6e1107ab4fb169e1e17735225412bff2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt01/Variantfddfd24a3b8e8ed6ad5661b9bc0cdaa6e1107ab4fb169e1e17735225412bff2f.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82158697f6f99243fb67c1d0afd74df203e8bc69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
