# toNNReal_eq_one_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:efe56ee1-9acc-f198-ff0c-369aea4d494b",
  "kind": "theorem",
  "lexical_name": "toNNReal_eq_one_iff",
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
  "slug": "tonnreal-eq-one-iff--c017b8258744be2a2d95cb1e",
  "source": {
    "blob": "e4cfabef178e00a6c93f0a8829a067e90e17153c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 100,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/WithZero/Varianta887367e04407a9c64736f5841c2464fe867ccdfb607c90146459062b0233f40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c017b8258744be2a2d95cb1e87ab5fa2710c7c0776ebfa189254af9b131afce2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/WithZero/Varianta887367e04407a9c64736f5841c2464fe867ccdfb607c90146459062b0233f40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efe56ee1-9acc-f198-ff0c-369aea4d494b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toNNReal_eq_one_iff {e : ℝ≥0} (m : ℤₘ₀) (he0 : e ≠ 0) (he1 : e ≠ 1) :
    toNNReal he0 m = 1 ↔ m = 1 := by
  by_cases hm : m = 0
  · simp only [hm, map_zero, zero_ne_one]
  · refine ⟨fun h1 ↦ ?_, fun h1 ↦ h1 ▸ map_one _⟩
    rw [toNNReal_neg_apply he0 hm, zpow_eq_one_iff_right₀ (zero_le e) he1, toAdd_eq_zero] at h1
    rw [← WithZero.coe_unzero hm, h1, coe_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/WithZero/Varianta887367e04407a9c64736f5841c2464fe867ccdfb607c90146459062b0233f40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/WithZero/Varianta887367e04407a9c64736f5841c2464fe867ccdfb607c90146459062b0233f40.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4cfabef178e00a6c93f0a8829a067e90e17153c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
