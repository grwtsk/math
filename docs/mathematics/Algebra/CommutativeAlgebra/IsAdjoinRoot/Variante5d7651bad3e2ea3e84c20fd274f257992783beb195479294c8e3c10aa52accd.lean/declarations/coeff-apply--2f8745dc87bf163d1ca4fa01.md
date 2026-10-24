# coeff_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "305e2c8b02a9226bcdab9bdb6017ad6c18888b4e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 541,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e5d7651bad3e2ea3e84c20fd274f257992783beb195479294c8e3c10aa52accd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:08803b8b-3003-09aa-ca08-8465003d1c31",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2037abb5-a606-b004-bd38-4e7e7b17385e",
  "kind": "theorem",
  "lexical_name": "coeff_apply",
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
  "slug": "coeff-apply--2f8745dc87bf163d1ca4fa01",
  "source": {
    "blob": "305e2c8b02a9226bcdab9bdb6017ad6c18888b4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 547,
    "line": 541,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variante5d7651bad3e2ea3e84c20fd274f257992783beb195479294c8e3c10aa52accd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f8745dc87bf163d1ca4fa0146ea4e252983c55f647ab24adf2fedecd964ea2b",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variante5d7651bad3e2ea3e84c20fd274f257992783beb195479294c8e3c10aa52accd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2037abb5-a606-b004-bd38-4e7e7b17385e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 541–547.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_apply (h : IsAdjoinRootMonic S f) (z : S) (i : ℕ) :
    h.coeff z i = if hi : i < natDegree f then h.basis.repr z ⟨i, hi⟩ else 0 := by
  split_ifs with hi
  · exact h.coeff_apply_lt z i hi
  · exact h.coeff_apply_le z i (le_of_not_lt hi)
#align is_adjoin_root_monic.coeff_apply IsAdjoinRootMonic.coeff_apply

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variante5d7651bad3e2ea3e84c20fd274f257992783beb195479294c8e3c10aa52accd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variante5d7651bad3e2ea3e84c20fd274f257992783beb195479294c8e3c10aa52accd.lean#L541).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `305e2c8b02a9226bcdab9bdb6017ad6c18888b4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
