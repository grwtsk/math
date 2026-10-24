# zpow_le_one_of_nonpos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1f92eed11f0b64a95f3e9689bf50ebbc3379a283",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 785,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/024c956d19cb36cc510d615ca8737fc3bcc1e9c4e50e6ec67176c7aad18ba370.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d8098950-d21a-91e8-38c2-11248bebb0bb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:971dd2ed-ef45-c13e-7237-1342e037a3ac",
  "kind": "lemma",
  "lexical_name": "zpow_le_one_of_nonpos",
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
  "slug": "zpow-le-one-of-nonpos--0410ab4b227b1e1b6c77c8e6",
  "source": {
    "blob": "1f92eed11f0b64a95f3e9689bf50ebbc3379a283",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 790,
    "line": 785,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Inv/Variant024c956d19cb36cc510d615ca8737fc3bcc1e9c4e50e6ec67176c7aad18ba370.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0410ab4b227b1e1b6c77c8e6237ee3d6f9ff480e118fb0eec20db76c4ad90af3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Inv/Variant024c956d19cb36cc510d615ca8737fc3bcc1e9c4e50e6ec67176c7aad18ba370.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:971dd2ed-ef45-c13e-7237-1342e037a3ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 785–790.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma zpow_le_one_of_nonpos {n : ℤ} (hn : n ≤ 0) {x : ℝ≥0∞} (hx : 1 ≤ x) : x ^ n ≤ 1 := by
  obtain ⟨m, rfl⟩ := neg_surjective n
  lift m to ℕ using by simpa using hn
  rw [← ENNReal.inv_zpow', ENNReal.inv_zpow, ENNReal.inv_le_one]
  exact mod_cast one_le_pow₀ hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Inv/Variant024c956d19cb36cc510d615ca8737fc3bcc1e9c4e50e6ec67176c7aad18ba370.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Inv/Variant024c956d19cb36cc510d615ca8737fc3bcc1e9c4e50e6ec67176c7aad18ba370.lean#L785).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f92eed11f0b64a95f3e9689bf50ebbc3379a283` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
