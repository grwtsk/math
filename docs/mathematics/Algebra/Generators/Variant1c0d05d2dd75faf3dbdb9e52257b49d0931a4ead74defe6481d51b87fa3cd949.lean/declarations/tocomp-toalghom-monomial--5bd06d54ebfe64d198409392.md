# toComp_toAlgHom_monomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "edf96eefcedc6a34f3c6d172d80cf6e4a33c43b9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 550,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1c0d05d2dd75faf3dbdb9e52257b49d0931a4ead74defe6481d51b87fa3cd949.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ca129f8a-1c5b-8d2d-227b-3dddbbfac56a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8acacb2e-826c-080e-1e8e-18a21aba5ba2",
  "kind": "lemma",
  "lexical_name": "toComp_toAlgHom_monomial",
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
  "slug": "tocomp-toalghom-monomial--5bd06d54ebfe64d198409392",
  "source": {
    "blob": "edf96eefcedc6a34f3c6d172d80cf6e4a33c43b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 559,
    "line": 550,
    "path": "GRWTSK/Algebra/Generators/Variant1c0d05d2dd75faf3dbdb9e52257b49d0931a4ead74defe6481d51b87fa3cd949.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bd06d54ebfe64d198409392319baae8f4a3d9781009cbdc66f958638f19b961",
  "verification": {
    "reference": "docs/verification/Algebra/Generators/Variant1c0d05d2dd75faf3dbdb9e52257b49d0931a4ead74defe6481d51b87fa3cd949.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8acacb2e-826c-080e-1e8e-18a21aba5ba2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 550–559.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toComp_toAlgHom_monomial (Q : Generators S T ι') (P : Generators R S ι) (j a) :
    (Q.toComp P).toAlgHom (monomial j a) =
      monomial (Finsupp.sumElim 0 j) a := by
  convert! rename_monomial _ _ _
  · ext f (i₁ | i₂)
    simp [rename_eq_aeval]
    rfl
  · ext f (i₁ | i₂) <;> simp [Finsupp.mapDomain_of_notMem_range, Sum.inr_injective]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Generators/Variant1c0d05d2dd75faf3dbdb9e52257b49d0931a4ead74defe6481d51b87fa3cd949.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Generators/Variant1c0d05d2dd75faf3dbdb9e52257b49d0931a4ead74defe6481d51b87fa3cd949.lean#L550).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edf96eefcedc6a34f3c6d172d80cf6e4a33c43b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
