# norm_cpow_of_imp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:550a6301-053c-cecb-4c89-eb712d0d02b3",
  "kind": "theorem",
  "lexical_name": "norm_cpow_of_imp",
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
  "slug": "norm-cpow-of-imp--9b90f7eca8528894e36f3e94",
  "source": {
    "blob": "4305a837cf361c51094868adeed1c53106a2e913",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 292,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Real/Varianta424fc5b5b195f156baed677344a973b7d59a7d57d572e436029e78bf356dc2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b90f7eca8528894e36f3e94df72115bddf0e7c5846a5d650c5dbdb850ef34dd",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Real/Varianta424fc5b5b195f156baed677344a973b7d59a7d57d572e436029e78bf356dc2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:550a6301-053c-cecb-4c89-eb712d0d02b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_cpow_of_imp {z w : ℂ} (h : z = 0 → w.re = 0 → w = 0) :
    ‖z ^ w‖ = ‖z‖ ^ w.re / Real.exp (arg z * im w) := by
  rcases ne_or_eq z 0 with (hz | rfl) <;> [exact norm_cpow_of_ne_zero hz w; rw [norm_zero]]
  rcases eq_or_ne w.re 0 with hw | hw
  · simp [hw, h rfl hw]
  · rw [Real.zero_rpow hw, zero_div, zero_cpow, norm_zero]
    exact ne_of_apply_ne re hw

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Real/Varianta424fc5b5b195f156baed677344a973b7d59a7d57d572e436029e78bf356dc2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Real/Varianta424fc5b5b195f156baed677344a973b7d59a7d57d572e436029e78bf356dc2b.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4305a837cf361c51094868adeed1c53106a2e913` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
