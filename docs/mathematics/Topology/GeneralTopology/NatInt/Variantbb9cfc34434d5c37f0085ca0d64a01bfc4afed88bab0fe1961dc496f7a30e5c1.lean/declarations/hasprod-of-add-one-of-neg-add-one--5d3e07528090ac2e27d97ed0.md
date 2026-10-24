# HasProd.of_add_one_of_neg_add_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "068846239a74b9cff04c456bcba142809ac58eca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 451,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bb9cfc34434d5c37f0085ca0d64a01bfc4afed88bab0fe1961dc496f7a30e5c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:45ab9a3a-ee57-027e-6199-31a8783307bd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8629523e-dbe0-3d74-4fbb-a2d03d6410ae",
  "kind": "theorem",
  "lexical_name": "HasProd.of_add_one_of_neg_add_one",
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
  "slug": "hasprod-of-add-one-of-neg-add-one--5d3e07528090ac2e27d97ed0",
  "source": {
    "blob": "068846239a74b9cff04c456bcba142809ac58eca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 456,
    "line": 451,
    "path": "GRWTSK/Topology/GeneralTopology/NatInt/Variantbb9cfc34434d5c37f0085ca0d64a01bfc4afed88bab0fe1961dc496f7a30e5c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d3e07528090ac2e27d97ed0102522ed890e5df5489a953a8256d3d3680064a3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NatInt/Variantbb9cfc34434d5c37f0085ca0d64a01bfc4afed88bab0fe1961dc496f7a30e5c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8629523e-dbe0-3d74-4fbb-a2d03d6410ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 451–456.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasProd.of_add_one_of_neg_add_one {f : ℤ → M}
    (hf₁ : HasProd (fun n : ℕ ↦ f (n + 1)) m) (hf₂ : HasProd (fun n : ℕ ↦ f (-(n + 1))) m') :
    HasProd f (m * f 0 * m') :=
  HasProd.of_nat_of_neg_add_one (mul_comm _ m ▸ HasProd.zero_mul hf₁) hf₂

@[to_additive Summable.of_add_one_of_neg_add_one]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NatInt/Variantbb9cfc34434d5c37f0085ca0d64a01bfc4afed88bab0fe1961dc496f7a30e5c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NatInt/Variantbb9cfc34434d5c37f0085ca0d64a01bfc4afed88bab0fe1961dc496f7a30e5c1.lean#L451).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `068846239a74b9cff04c456bcba142809ac58eca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
