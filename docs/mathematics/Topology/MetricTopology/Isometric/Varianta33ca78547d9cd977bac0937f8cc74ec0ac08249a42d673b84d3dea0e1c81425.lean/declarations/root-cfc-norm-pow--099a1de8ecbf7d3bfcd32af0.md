# _root_.CFC.norm_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4cb60573d3567a07b7f8aaec96fede8298b1157b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 171,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a33ca78547d9cd977bac0937f8cc74ec0ac08249a42d673b84d3dea0e1c81425.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2df21d85-a7c9-0370-b901-0d780cd7bf68",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d6c51cf5-0b94-301c-9f2a-b76bb16bd5db",
  "kind": "lemma",
  "lexical_name": "_root_.CFC.norm_pow",
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
  "slug": "root-cfc-norm-pow--099a1de8ecbf7d3bfcd32af0",
  "source": {
    "blob": "4cb60573d3567a07b7f8aaec96fede8298b1157b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 171,
    "path": "GRWTSK/Topology/MetricTopology/Isometric/Varianta33ca78547d9cd977bac0937f8cc74ec0ac08249a42d673b84d3dea0e1c81425.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:099a1de8ecbf7d3bfcd32af0880940c4ad369035592b3b7b012f1759a0eb4c3d",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Isometric/Varianta33ca78547d9cd977bac0937f8cc74ec0ac08249a42d673b84d3dea0e1c81425.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6c51cf5-0b94-301c-9f2a-b76bb16bd5db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma _root_.CFC.norm_pow (a : A) (n : ℕ) (hn : n ≠ 0) (ha : p a := by cfc_tac) :
    ‖a ^ n‖ = ‖a‖ ^ n := by
  obtain (h | h) := subsingleton_or_nontrivial A
  · simp [h.elim a 0, hn]
  apply le_antisymm (by simpa using norm_pow_le' _ (Nat.zero_lt_of_ne_zero hn))
  have ⟨⟨x, hx, hx'⟩, h₂⟩ := isGreatest_norm_spectrum (𝕜 := 𝕜) a ha
  simp only at hx'
  rw [← hx', ← norm_pow, ← cfc_id' 𝕜 a, ← cfc_pow ..]
  exact norm_apply_le_norm_cfc (· ^ n) a hx

end IsometricContinuousFunctionalCalculus

end NormedRing

namespace SpectrumRestricts

variable {R S A : Type*} {p q : A → Prop}
variable [Semifield R] [StarRing R] [MetricSpace R] [IsTopologicalSemiring R] [ContinuousStar R]
variable [Semifield S] [StarRing S] [MetricSpace S] [IsTopologicalSemiring S] [ContinuousStar S]
variable [Ring A] [StarRing A] [Algebra S A]
variable [Algebra R S] [Algebra R A] [IsScalarTower R S A] [StarModule R S] [ContinuousSMul R S]
variable [MetricSpace A] [IsometricContinuousFunctionalCalculus S A q]
variable [CompleteSpace R] [ContinuousMap.UniqueHom R A]

set_option backward.isDefEq.respectTransparency.types false in
open scoped ContinuousFunctionalCalculus in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Isometric/Varianta33ca78547d9cd977bac0937f8cc74ec0ac08249a42d673b84d3dea0e1c81425.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Isometric/Varianta33ca78547d9cd977bac0937f8cc74ec0ac08249a42d673b84d3dea0e1c81425.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cb60573d3567a07b7f8aaec96fede8298b1157b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
