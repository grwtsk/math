# ore_right_cancel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e11df203543567be6144419be45c780087ea5ed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d36d7f42c6f0a78ee80a68c5bccab7742d98ea8715d739bc2124f483d212ac8f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ba27b1d5-06a3-dea8-b0c5-ed3b3d9fe934",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b44b8470-adf9-8694-25bc-0016bee813c4",
  "kind": "theorem",
  "lexical_name": "ore_right_cancel",
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
  "slug": "ore-right-cancel--2f4035e185fb0d8b91880542",
  "source": {
    "blob": "8e11df203543567be6144419be45c780087ea5ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 73,
    "path": "GRWTSK/Algebra/GroupTheory/OreSet/Variantd36d7f42c6f0a78ee80a68c5bccab7742d98ea8715d739bc2124f483d212ac8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f4035e185fb0d8b91880542b3e51f70557613ef18c6bede942705865e7a39a0",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/OreSet/Variantd36d7f42c6f0a78ee80a68c5bccab7742d98ea8715d739bc2124f483d212ac8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b44b8470-adf9-8694-25bc-0016bee813c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ore_right_cancel (r₁ r₂ : R) (s : S) (h : r₁ * s = r₂ * s) : ∃ s' : S, s' * r₁ = s' * r₂ :=
  OreSet.ore_right_cancel r₁ r₂ s h

/-- The Ore numerator of a fraction. -/
@[to_additive AddOreLocalization.oreMin /-- The Ore minuend of a difference. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/OreSet/Variantd36d7f42c6f0a78ee80a68c5bccab7742d98ea8715d739bc2124f483d212ac8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/OreSet/Variantd36d7f42c6f0a78ee80a68c5bccab7742d98ea8715d739bc2124f483d212ac8f.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e11df203543567be6144419be45c780087ea5ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
