# prodMk'_prod_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e15a01eb951d4d4ae1e80acaf66af5a0da077c9d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 235,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8fd332ab21daf9f8ec8f1367e40a0a9af210e38a85e0d5ef31649c54ea1d3cf0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d36f6b11-7f41-3b0d-4179-ebe24b73333f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ade8daa0-bb33-d2f2-77f4-598921c3f526",
  "kind": "lemma",
  "lexical_name": "prodMk'_prod_apply",
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
  "slug": "prodmk-prod-apply--94aa994878b822e4682e5638",
  "source": {
    "blob": "e15a01eb951d4d4ae1e80acaf66af5a0da077c9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 235,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant8fd332ab21daf9f8ec8f1367e40a0a9af210e38a85e0d5ef31649c54ea1d3cf0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94aa994878b822e4682e563892f845a6f772e14472b86f626fa0b8f7a8e994cf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant8fd332ab21daf9f8ec8f1367e40a0a9af210e38a85e0d5ef31649c54ea1d3cf0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ade8daa0-bb33-d2f2-77f4-598921c3f526`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prodMk'_prod_apply (f : C(X, R)) (g : C(Y, R)) :
    prodMk' μ ν ((f.comp .fst) * (g.comp .snd)) = μ f * ν g := by
  simp only [prodMk'_apply, mul_comm (μ f) (ν g), ← smul_eq_mul, ← map_smul]
  congr 1 with x
  simp_rw [ContinuousMap.smul_apply, smul_eq_mul, mul_comm (ν g) (f x), contractSnd_apply,
    ← smul_eq_mul, ← map_smul]
  rfl

end LocallyCompact

section Profinite

variable [CompactSpace X] [CompactSpace Y] [T2Space X] [T2Space Y] [TotallyDisconnectedSpace X]
  [T0Space R]

/-- For profinite spaces, the two product structures on measures agree. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant8fd332ab21daf9f8ec8f1367e40a0a9af210e38a85e0d5ef31649c54ea1d3cf0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant8fd332ab21daf9f8ec8f1367e40a0a9af210e38a85e0d5ef31649c54ea1d3cf0.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e15a01eb951d4d4ae1e80acaf66af5a0da077c9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
