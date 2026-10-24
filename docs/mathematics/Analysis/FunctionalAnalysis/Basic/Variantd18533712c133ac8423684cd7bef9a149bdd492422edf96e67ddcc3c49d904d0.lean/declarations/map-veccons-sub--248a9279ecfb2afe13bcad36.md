# map_vecCons_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8b349492ea9a25945a3523d063a266dc2e9b0627",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 471,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d18533712c133ac8423684cd7bef9a149bdd492422edf96e67ddcc3c49d904d0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:755b7367-ffd0-578a-ed09-8fd445374b5f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d0e8c6b2-d659-56b7-bf75-4b7f24097682",
  "kind": "theorem",
  "lexical_name": "map_vecCons_sub",
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
  "slug": "map-veccons-sub--248a9279ecfb2afe13bcad36",
  "source": {
    "blob": "8b349492ea9a25945a3523d063a266dc2e9b0627",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 479,
    "line": 471,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variantd18533712c133ac8423684cd7bef9a149bdd492422edf96e67ddcc3c49d904d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:248a9279ecfb2afe13bcad36aa09d4473840f0977e0cc9066500ea6712a223d7",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Basic/Variantd18533712c133ac8423684cd7bef9a149bdd492422edf96e67ddcc3c49d904d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0e8c6b2-d659-56b7-bf75-4b7f24097682`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 471–479.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_vecCons_sub {n} (f : M [⋀^Fin (n + 1)]→L[R] N) (x y : M) (v : Fin n → M) :
    f (Matrix.vecCons (x - y) v) = f (Matrix.vecCons x v) - f (Matrix.vecCons y v) := by
  rw [vecCons, ← Fin.update_cons_zero 0, map_update_sub]
  simp [vecCons]

section IsTopologicalAddGroup

variable [IsTopologicalAddGroup N]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Basic/Variantd18533712c133ac8423684cd7bef9a149bdd492422edf96e67ddcc3c49d904d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Basic/Variantd18533712c133ac8423684cd7bef9a149bdd492422edf96e67ddcc3c49d904d0.lean#L471).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b349492ea9a25945a3523d063a266dc2e9b0627` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
