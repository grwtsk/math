# fractionalWeight_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5601d29-f69c-cda3-97cf-eab0d1f4d4c7",
  "kind": "theorem",
  "lexical_name": "fractionalWeight_integrable",
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
  "slug": "fractionalweight-integrable--12a560ff2bb0db220752c721",
  "source": {
    "blob": "12de7304f4ddd4ee36be30e7434b8a30002b33c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 27,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt06/Variant51c342244b580d76917775a1ec09f8f4a49bfeec8882383d8a6b5a6c8f7f14b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12a560ff2bb0db220752c721f77a41a10e48bdcd37979bdb29cf383762050f75",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt06/Variant51c342244b580d76917775a1ec09f8f4a49bfeec8882383d8a6b5a6c8f7f14b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5601d29-f69c-cda3-97cf-eab0d1f4d4c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fractionalWeight_integrable {σ : ℝ} (hσ : 0 < σ) :
    IntegrableOn (fractionalWeight σ) (Ioi 1) := by
  have hi : IntegrableOn (fun u : ℝ => u ^ (-σ - 1)) (Ioi 1) :=
    integrableOn_Ioi_rpow_of_lt (by linarith) (by norm_num)
  exact hi.bdd_mul measurable_fract.aestronglyMeasurable
    (ae_of_all _ fun u => by
      rw [Real.norm_eq_abs, abs_of_nonneg (Int.fract_nonneg u)]
      exact (Int.fract_lt_one u).le)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt06/Variant51c342244b580d76917775a1ec09f8f4a49bfeec8882383d8a6b5a6c8f7f14b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt06/Variant51c342244b580d76917775a1ec09f8f4a49bfeec8882383d8a6b5a6c8f7f14b6.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12de7304f4ddd4ee36be30e7434b8a30002b33c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
