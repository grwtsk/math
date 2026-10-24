# toIcoDiv_sub_eq_toIcoDiv_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5ecbc04cc63ae5ad964418fe89bb64487784f700",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 298,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9cc8dae1c3257db84abdbb8c23ce04d2a92d5ebbdb633496ef284234a53bea8c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eeaf8afb-954f-6dfb-1e61-8f843814e1b7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:861e7b30-fd83-8e0d-92bc-576d757d9956",
  "kind": "theorem",
  "lexical_name": "toIcoDiv_sub_eq_toIcoDiv_add",
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
  "slug": "toicodiv-sub-eq-toicodiv-add--9a6eb84604b8919aa1bbadee",
  "source": {
    "blob": "5ecbc04cc63ae5ad964418fe89bb64487784f700",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 298,
    "path": "GRWTSK/Algebra/UniversalAlgebra/ToIntervalMod/Variant9cc8dae1c3257db84abdbb8c23ce04d2a92d5ebbdb633496ef284234a53bea8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a6eb84604b8919aa1bbadee54371c9ce30c6e1b7a8fe701394f742bd519a4a3",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/ToIntervalMod/Variant9cc8dae1c3257db84abdbb8c23ce04d2a92d5ebbdb633496ef284234a53bea8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:861e7b30-fd83-8e0d-92bc-576d757d9956`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toIcoDiv_sub_eq_toIcoDiv_add (a b c : α) :
    toIcoDiv hp a (b - c) = toIcoDiv hp (a + c) b := by
  apply toIcoDiv_eq_of_sub_zsmul_mem_Ico
  rw [← sub_right_comm, Set.sub_mem_Ico_iff_left, add_right_comm]
  exact sub_toIcoDiv_zsmul_mem_Ico hp (a + c) b

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/ToIntervalMod/Variant9cc8dae1c3257db84abdbb8c23ce04d2a92d5ebbdb633496ef284234a53bea8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/ToIntervalMod/Variant9cc8dae1c3257db84abdbb8c23ce04d2a92d5ebbdb633496ef284234a53bea8c.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ecbc04cc63ae5ad964418fe89bb64487784f700` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
