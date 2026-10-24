# iInf_and

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8363b653b736b9863138beaf762286e165208603",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1323,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/88a367aeb0dadaa3eab4bfbde621c6ef5380f7c0a7997da2ae2dcc52ddb64fc6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3213a92d-284a-9d31-7ced-617d33c78af7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2acd2bea-3f5a-8239-e35a-06f60362fc40",
  "kind": "theorem",
  "lexical_name": "iInf_and",
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
  "slug": "iinf-and--00ebd48e031c919ebf3fc84f",
  "source": {
    "blob": "8363b653b736b9863138beaf762286e165208603",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1327,
    "line": 1323,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant88a367aeb0dadaa3eab4bfbde621c6ef5380f7c0a7997da2ae2dcc52ddb64fc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00ebd48e031c919ebf3fc84fa5cd4c1c8b3111515f5fd5015def6cf17a3332b7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant88a367aeb0dadaa3eab4bfbde621c6ef5380f7c0a7997da2ae2dcc52ddb64fc6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2acd2bea-3f5a-8239-e35a-06f60362fc40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1323–1327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iInf_and {p q : Prop} {s : p ∧ q → α} : iInf s = ⨅ (h₁) (h₂), s ⟨h₁, h₂⟩ :=
  @iSup_and αᵒᵈ _ _ _ _
#align infi_and iInf_and

/-- The symmetric case of `iSup_and`, useful for rewriting into a supremum over a conjunction -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant88a367aeb0dadaa3eab4bfbde621c6ef5380f7c0a7997da2ae2dcc52ddb64fc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant88a367aeb0dadaa3eab4bfbde621c6ef5380f7c0a7997da2ae2dcc52ddb64fc6.lean#L1323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8363b653b736b9863138beaf762286e165208603` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
