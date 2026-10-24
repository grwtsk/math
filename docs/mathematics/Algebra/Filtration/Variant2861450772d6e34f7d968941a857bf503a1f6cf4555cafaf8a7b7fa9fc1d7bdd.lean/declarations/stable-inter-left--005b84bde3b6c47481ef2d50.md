# Stable.inter_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cd00b9939ea9017af86e913b656b695ded979226",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 376,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:33d8265a-bc81-a90c-68ea-3f4db4e20818",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8f4497f3-c21f-ab61-3d0a-51e255ee9419",
  "kind": "theorem",
  "lexical_name": "Stable.inter_left",
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
  "slug": "stable-inter-left--005b84bde3b6c47481ef2d50",
  "source": {
    "blob": "cd00b9939ea9017af86e913b656b695ded979226",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 376,
    "path": "GRWTSK/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:005b84bde3b6c47481ef2d50e5ce0e95fd1b96338b635f16ae16961297ebac8e",
  "verification": {
    "reference": "docs/verification/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f4497f3-c21f-ab61-3d0a-51e255ee9419`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 376–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Stable.inter_left [IsNoetherianRing R] [Module.Finite R M] (hF : F.Stable) :
    (F' ⊓ F).Stable :=
  hF.of_le inf_le_right

end Ideal.Filtration

variable (I)

/-- **Artin-Rees lemma** -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean#L376).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd00b9939ea9017af86e913b656b695ded979226` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
