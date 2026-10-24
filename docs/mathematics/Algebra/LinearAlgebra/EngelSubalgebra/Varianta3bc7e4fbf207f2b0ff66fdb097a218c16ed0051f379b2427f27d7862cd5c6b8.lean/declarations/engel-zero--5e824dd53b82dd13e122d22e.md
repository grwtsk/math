# engel_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "50f45ddb310abcd31fb37e437949eef1f23022a1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a3bc7e4fbf207f2b0ff66fdb097a218c16ed0051f379b2427f27d7862cd5c6b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:569a0224-9e24-07dd-84d5-734043a2ac14",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e24eb307-f8b7-2c29-398d-84c743659bb4",
  "kind": "lemma",
  "lexical_name": "engel_zero",
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
  "slug": "engel-zero--5e824dd53b82dd13e122d22e",
  "source": {
    "blob": "50f45ddb310abcd31fb37e437949eef1f23022a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 71,
    "path": "GRWTSK/Algebra/LinearAlgebra/EngelSubalgebra/Varianta3bc7e4fbf207f2b0ff66fdb097a218c16ed0051f379b2427f27d7862cd5c6b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e824dd53b82dd13e122d22ee512bd91c5aa954ec2c50d67a6ea98ff51dad6a6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/EngelSubalgebra/Varianta3bc7e4fbf207f2b0ff66fdb097a218c16ed0051f379b2427f27d7862cd5c6b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e24eb307-f8b7-2c29-398d-84c743659bb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma engel_zero : engel R (0 : L) = ⊤ := by
  rw [eq_top_iff]
  rintro x -
  rw [mem_engel_iff, LieHom.map_zero]
  use 1
  simp only [pow_one, LinearMap.zero_apply]

/-- Engel subalgebras are self-normalizing.
See `LieSubalgebra.normalizer_eq_self_of_engel_le` for a proof that Lie-subalgebras
containing an Engel subalgebra are also self-normalizing,
provided that the ambient Lie algebra is artinina. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/EngelSubalgebra/Varianta3bc7e4fbf207f2b0ff66fdb097a218c16ed0051f379b2427f27d7862cd5c6b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/EngelSubalgebra/Varianta3bc7e4fbf207f2b0ff66fdb097a218c16ed0051f379b2427f27d7862cd5c6b8.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50f45ddb310abcd31fb37e437949eef1f23022a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
