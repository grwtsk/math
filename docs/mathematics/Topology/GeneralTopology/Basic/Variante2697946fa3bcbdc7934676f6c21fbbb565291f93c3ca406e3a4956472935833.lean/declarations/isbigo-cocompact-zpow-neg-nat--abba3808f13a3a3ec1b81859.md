# isBigO_cocompact_zpow_neg_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5b4a9c9cc147973695cfef46415308ed215424ed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 141,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e2697946fa3bcbdc7934676f6c21fbbb565291f93c3ca406e3a4956472935833.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d2dfd00c-32e4-1f92-a727-9409187b5154",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f745ecc6-47c5-c032-2437-fa30c245f120",
  "kind": "theorem",
  "lexical_name": "isBigO_cocompact_zpow_neg_nat",
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
  "slug": "isbigo-cocompact-zpow-neg-nat--abba3808f13a3a3ec1b81859",
  "source": {
    "blob": "5b4a9c9cc147973695cfef46415308ed215424ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 141,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante2697946fa3bcbdc7934676f6c21fbbb565291f93c3ca406e3a4956472935833.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abba3808f13a3a3ec1b818594592754488857daadba2cb5ce9d08e8129c3ff67",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variante2697946fa3bcbdc7934676f6c21fbbb565291f93c3ca406e3a4956472935833.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f745ecc6-47c5-c032-2437-fa30c245f120`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isBigO_cocompact_zpow_neg_nat (k : ℕ) :
    f =O[cocompact E] (‖·‖ ^ (-k : ℤ)) := by
  obtain ⟨d, _, hd'⟩ := f.decay k 0
  simp only [norm_iteratedFDeriv_zero] at hd'
  simp_rw [Asymptotics.IsBigO, Asymptotics.IsBigOWith]
  refine ⟨d, Filter.Eventually.filter_mono Filter.cocompact_le_cofinite ?_⟩
  refine (Filter.eventually_cofinite_ne 0).mono fun x hx ↦ ?_
  rw [Real.norm_of_nonneg (by positivity), zpow_neg, ← div_eq_mul_inv, le_div_iff₀' (by positivity)]
  exact hd' x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante2697946fa3bcbdc7934676f6c21fbbb565291f93c3ca406e3a4956472935833.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante2697946fa3bcbdc7934676f6c21fbbb565291f93c3ca406e3a4956472935833.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b4a9c9cc147973695cfef46415308ed215424ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
