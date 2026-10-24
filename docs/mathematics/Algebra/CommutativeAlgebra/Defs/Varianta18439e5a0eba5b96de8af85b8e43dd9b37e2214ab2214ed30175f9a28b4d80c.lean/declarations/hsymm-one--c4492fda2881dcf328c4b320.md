# hsymm_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "26175eda9c0094593161c29a04242e7b631874ff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 323,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a18439e5a0eba5b96de8af85b8e43dd9b37e2214ab2214ed30175f9a28b4d80c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9d674967-1a6f-fe10-6025-3de3f00ea010",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b8b3c07a-dbb8-8476-f2a8-891738d7d246",
  "kind": "theorem",
  "lexical_name": "hsymm_one",
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
  "slug": "hsymm-one--c4492fda2881dcf328c4b320",
  "source": {
    "blob": "26175eda9c0094593161c29a04242e7b631874ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 323,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Defs/Varianta18439e5a0eba5b96de8af85b8e43dd9b37e2214ab2214ed30175f9a28b4d80c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4492fda2881dcf328c4b32044bf162a91a8f6f3db4173e0174717e3e4139253",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Defs/Varianta18439e5a0eba5b96de8af85b8e43dd9b37e2214ab2214ed30175f9a28b4d80c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8b3c07a-dbb8-8476-f2a8-891738d7d246`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hsymm_one : hsymm σ R 1 = ∑ i, X i := by
  symm
  apply Fintype.sum_equiv oneEquiv
  simp only [oneEquiv_apply, Multiset.map_singleton, Multiset.prod_singleton, implies_true]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Defs/Varianta18439e5a0eba5b96de8af85b8e43dd9b37e2214ab2214ed30175f9a28b4d80c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Defs/Varianta18439e5a0eba5b96de8af85b8e43dd9b37e2214ab2214ed30175f9a28b4d80c.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26175eda9c0094593161c29a04242e7b631874ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
