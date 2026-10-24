# affineSpan_pair_eq_of_left_mem_of_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a77c46d9fd3c0a1f786a861aa9687a5198caf1d9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1045,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db5899ae68516888a4a145c4db177581c763c35959f1928dee73631a0bc4b979.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:706fbc32-f1a1-1f35-40a9-37c3fc3cc6f3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1f3dd940-5fa6-301a-d2c7-b4349c62a775",
  "kind": "lemma",
  "lexical_name": "affineSpan_pair_eq_of_left_mem_of_ne",
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
  "slug": "affinespan-pair-eq-of-left-mem-of-ne--6114bdbb7fda604e1367f0f2",
  "source": {
    "blob": "a77c46d9fd3c0a1f786a861aa9687a5198caf1d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1050,
    "line": 1045,
    "path": "GRWTSK/Geometry/ConvexGeometry/Basic/Variantdb5899ae68516888a4a145c4db177581c763c35959f1928dee73631a0bc4b979.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6114bdbb7fda604e1367f0f23e39e19a83c19b5a333a4a2ff59b2e119ded1d1d",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Basic/Variantdb5899ae68516888a4a145c4db177581c763c35959f1928dee73631a0bc4b979.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f3dd940-5fa6-301a-d2c7-b4349c62a775`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1045–1050.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma affineSpan_pair_eq_of_left_mem_of_ne {p₁ p₂ p₃ : P} (h : p₁ ∈ line[k, p₂, p₃])
    (hne : p₁ ≠ p₃) : line[k, p₁, p₃] = line[k, p₂, p₃] :=
  affineSpan_pair_eq_of_mem_of_mem_of_ne h (right_mem_affineSpan_pair _ _ _) hne

/-- One line equals another differing in the second point if the second point of the first line is
contained in the second line and does not equal the first point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Basic/Variantdb5899ae68516888a4a145c4db177581c763c35959f1928dee73631a0bc4b979.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Basic/Variantdb5899ae68516888a4a145c4db177581c763c35959f1928dee73631a0bc4b979.lean#L1045).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a77c46d9fd3c0a1f786a861aa9687a5198caf1d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
