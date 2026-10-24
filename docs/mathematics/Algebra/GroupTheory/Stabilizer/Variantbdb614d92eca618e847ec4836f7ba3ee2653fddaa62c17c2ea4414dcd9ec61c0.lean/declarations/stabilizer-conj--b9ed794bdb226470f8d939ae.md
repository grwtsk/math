# stabilizer_conj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "efb480d34be82e72e284b306b2116e1931035419",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bdb614d92eca618e847ec4836f7ba3ee2653fddaa62c17c2ea4414dcd9ec61c0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fb9b2a8f-abc2-7702-1837-b70a1ccf7fe5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e485b4a7-4eaa-7948-a4f8-d990cf320909",
  "kind": "lemma",
  "lexical_name": "stabilizer_conj",
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
  "slug": "stabilizer-conj--b9ed794bdb226470f8d939ae",
  "source": {
    "blob": "efb480d34be82e72e284b306b2116e1931035419",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 60,
    "path": "GRWTSK/Algebra/GroupTheory/Stabilizer/Variantbdb614d92eca618e847ec4836f7ba3ee2653fddaa62c17c2ea4414dcd9ec61c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9ed794bdb226470f8d939ae31462f233d056813111ad89d272ad91421cb4c10",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Stabilizer/Variantbdb614d92eca618e847ec4836f7ba3ee2653fddaa62c17c2ea4414dcd9ec61c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e485b4a7-4eaa-7948-a4f8-d990cf320909`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma stabilizer_conj (ρ : Representation k G V) (g : G) (v : V) :
    ρ.stabilizer (ρ g v) = (stabilizer ρ v).map (MulAut.conj g) := by
  ext x
  simp only [mem_stabilizer, Subgroup.mem_map, MonoidHom.coe_coe, MulAut.conj_apply,
    ← Module.End.mul_apply, ← inv_apply_eq_iff, ← map_mul, ← mul_assoc]
  exact ⟨fun h ↦ ⟨_, h, by simp [mul_assoc]⟩, by rintro ⟨y, hy1, rfl⟩; simp [mul_assoc, hy1]⟩

end Representation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Stabilizer/Variantbdb614d92eca618e847ec4836f7ba3ee2653fddaa62c17c2ea4414dcd9ec61c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Stabilizer/Variantbdb614d92eca618e847ec4836f7ba3ee2653fddaa62c17c2ea4414dcd9ec61c0.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efb480d34be82e72e284b306b2116e1931035419` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
