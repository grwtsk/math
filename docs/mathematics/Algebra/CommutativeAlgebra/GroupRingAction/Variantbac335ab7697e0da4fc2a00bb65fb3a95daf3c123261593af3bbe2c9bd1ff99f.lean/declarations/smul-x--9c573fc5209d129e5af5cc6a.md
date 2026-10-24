# smul_X

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7801f5c753350b0b476aa3c31c569e2e1193d7d4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 51,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/bac335ab7697e0da4fc2a00bb65fb3a95daf3c123261593af3bbe2c9bd1ff99f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b82929f6-bfae-471e-39ec-74f235d6e749",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8526f0c6-2183-640b-1046-dd45e8c0f4f3",
  "kind": "theorem",
  "lexical_name": "smul_X",
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
  "slug": "smul-x--9c573fc5209d129e5af5cc6a",
  "source": {
    "blob": "7801f5c753350b0b476aa3c31c569e2e1193d7d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 51,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/GroupRingAction/Variantbac335ab7697e0da4fc2a00bb65fb3a95daf3c123261593af3bbe2c9bd1ff99f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c573fc5209d129e5af5cc6a60291a1ff6d06122daf8ff3e8df031ff6c90f41a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/GroupRingAction/Variantbac335ab7697e0da4fc2a00bb65fb3a95daf3c123261593af3bbe2c9bd1ff99f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8526f0c6-2183-640b-1046-dd45e8c0f4f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_X (m : M) : (m • X : R[X]) = X :=
  (smul_eq_map R m).symm ▸ map_X _

variable (S : Type*) [CommSemiring S] [MulSemiringAction M S]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/GroupRingAction/Variantbac335ab7697e0da4fc2a00bb65fb3a95daf3c123261593af3bbe2c9bd1ff99f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/GroupRingAction/Variantbac335ab7697e0da4fc2a00bb65fb3a95daf3c123261593af3bbe2c9bd1ff99f.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7801f5c753350b0b476aa3c31c569e2e1193d7d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
