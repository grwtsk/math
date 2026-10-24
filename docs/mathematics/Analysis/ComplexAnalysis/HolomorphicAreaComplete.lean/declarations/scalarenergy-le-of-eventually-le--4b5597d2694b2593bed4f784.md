# scalarEnergy_le_of_eventually_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "055494c26c76536ae2eb644bd1b978eb3edb791e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/Analysis/Complex/HolomorphicAreaComplete.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:43eb06aa-9a01-74a9-6016-c05dc04507d5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef613c44-3f35-ea35-2581-d4259cdd764c",
  "kind": "theorem",
  "lexical_name": "scalarEnergy_le_of_eventually_le",
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
  "slug": "scalarenergy-le-of-eventually-le--4b5597d2694b2593bed4f784",
  "source": {
    "blob": "055494c26c76536ae2eb644bd1b978eb3edb791e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 92,
    "path": "GRWTSK/Analysis/Complex/HolomorphicAreaComplete.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b5597d2694b2593bed4f784a8298f971eb82f46ed91d528da5f715231c69b77",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/HolomorphicAreaComplete.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef613c44-3f35-ea35-2581-d4259cdd764c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scalarEnergy_le_of_eventually_le (hOpen : D.IsOpenCover)
    (F : ℕ → HolomorphicSection D.X) (f : HolomorphicSection D.X)
    (hF : ∀ x : D.X.carrier,
      Tendsto (fun n => (F n : Section D.X) x) atTop (𝓝 ((f : Section D.X) x)))
    (B : ℝ≥0∞) (hB : ∀ᶠ n in atTop, scalarEnergy hOpen (F n) ≤ B) :
    scalarEnergy hOpen f ≤ B := by
  apply (scalarEnergy_le_liminf hOpen F f hF).trans
  obtain ⟨N, hN⟩ := eventually_atTop.mp hB
  rw [liminf_eq_iSup_iInf_of_nat]
  apply iSup_le
  intro n
  exact iInf_le_of_le (max n N)
    (iInf_le_of_le (le_max_left n N) (hN (max n N) (le_max_right n N)))

/-- The preceding pointwise limit and holomorphic limit have the same exact values. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/HolomorphicAreaComplete.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/HolomorphicAreaComplete.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `055494c26c76536ae2eb644bd1b978eb3edb791e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
