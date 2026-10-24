# mem_inv_pointwise_smul_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c72ec65bd8197689280fbeb442b5844bd9537b02",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 862,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f74d4fdfd5ad4f71fef69ab9c0547259d9fc02d8b972478e3068180490757b9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:018aac46-7844-e095-47ef-cf05549b8b0b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:138a0a77-dbfa-72eb-8b9e-ccae0d166820",
  "kind": "theorem",
  "lexical_name": "mem_inv_pointwise_smul_iff",
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
  "slug": "mem-inv-pointwise-smul-iff--72469a7bcdd678f51b661efa",
  "source": {
    "blob": "c72ec65bd8197689280fbeb442b5844bd9537b02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 866,
    "line": 862,
    "path": "GRWTSK/Algebra/ValuationSubring/Variant1f74d4fdfd5ad4f71fef69ab9c0547259d9fc02d8b972478e3068180490757b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72469a7bcdd678f51b661efaff31b3d28b7d093d7d30a2727aea74f2d31343ee",
  "verification": {
    "reference": "docs/verification/Algebra/ValuationSubring/Variant1f74d4fdfd5ad4f71fef69ab9c0547259d9fc02d8b972478e3068180490757b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:138a0a77-dbfa-72eb-8b9e-ccae0d166820`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 862–866.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_inv_pointwise_smul_iff {g : G} {S : ValuationSubring K} {x : K} :
    x ∈ g⁻¹ • S ↔ g • x ∈ S := Set.mem_inv_smul_set_iff
#align valuation_subring.mem_inv_pointwise_smul_iff ValuationSubring.mem_inv_pointwise_smul_iff

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ValuationSubring/Variant1f74d4fdfd5ad4f71fef69ab9c0547259d9fc02d8b972478e3068180490757b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ValuationSubring/Variant1f74d4fdfd5ad4f71fef69ab9c0547259d9fc02d8b972478e3068180490757b9.lean#L862).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c72ec65bd8197689280fbeb442b5844bd9537b02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
