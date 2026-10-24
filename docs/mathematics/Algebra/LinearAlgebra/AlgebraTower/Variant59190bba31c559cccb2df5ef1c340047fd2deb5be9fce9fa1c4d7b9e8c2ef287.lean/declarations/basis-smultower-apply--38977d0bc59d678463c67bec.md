# Basis.smulTower_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "501618857aa927a1db6792510339270641e64f25",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 138,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/59190bba31c559cccb2df5ef1c340047fd2deb5be9fce9fa1c4d7b9e8c2ef287.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fc1343b7-a668-f334-b270-fda0f6deb70f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7f631e4d-bbd4-6415-2765-44259611b62f",
  "kind": "theorem",
  "lexical_name": "Basis.smulTower_apply",
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
  "slug": "basis-smultower-apply--38977d0bc59d678463c67bec",
  "source": {
    "blob": "501618857aa927a1db6792510339270641e64f25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 138,
    "path": "GRWTSK/Algebra/LinearAlgebra/AlgebraTower/Variant59190bba31c559cccb2df5ef1c340047fd2deb5be9fce9fa1c4d7b9e8c2ef287.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38977d0bc59d678463c67bec82219e0a072e5cf884bbcc3d3878206897af10de",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AlgebraTower/Variant59190bba31c559cccb2df5ef1c340047fd2deb5be9fce9fa1c4d7b9e8c2ef287.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f631e4d-bbd4-6415-2765-44259611b62f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Basis.smulTower_apply (ij) : (b.smulTower c) ij = b ij.1 • c ij.2 := by
  classical
  obtain ⟨i, j⟩ := ij
  rw [Basis.apply_eq_iff]
  ext ⟨i', j'⟩
  rw [Basis.smulTower_repr, LinearEquiv.map_smul, Basis.repr_self, Finsupp.smul_apply,
    Finsupp.single_apply]
  dsimp only
  split_ifs with hi
  · simp [hi, Finsupp.single_apply]
  · simp [hi]

/-- `Basis.smulTower (b : Basis ι R S) (c : Basis ι S A)` is the `R`-basis on `A`
where the `(i, j)`th basis vector is `b j • c i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AlgebraTower/Variant59190bba31c559cccb2df5ef1c340047fd2deb5be9fce9fa1c4d7b9e8c2ef287.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AlgebraTower/Variant59190bba31c559cccb2df5ef1c340047fd2deb5be9fce9fa1c4d7b9e8c2ef287.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `501618857aa927a1db6792510339270641e64f25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
