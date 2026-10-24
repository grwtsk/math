# Odd.add_dvd_pow_add_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c5a0a4f8fb2111f39679d67265985cd7df8f7ef3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 212,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fd294278-6635-f105-94ea-da804cdbb2df",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b6e2f6b7-1f23-ecbe-8a47-5a17070ce893",
  "kind": "theorem",
  "lexical_name": "Odd.add_dvd_pow_add_pow",
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
  "slug": "odd-add-dvd-pow-add-pow--552cd11c6ad66b66a1492f5a",
  "source": {
    "blob": "c5a0a4f8fb2111f39679d67265985cd7df8f7ef3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 212,
    "path": "GRWTSK/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:552cd11c6ad66b66a1492f5a8e15944906f9dea02859d7577610dea2ba4800c1",
  "verification": {
    "reference": "docs/verification/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6e2f6b7-1f23-ecbe-8a47-5a17070ce893`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Odd.add_dvd_pow_add_pow [CommRing R] (x y : R) {n : ℕ} (h : Odd n) :
    x + y ∣ x ^ n + y ^ n := by
  have h₁ := geom_sum₂_mul x (-y) n
  rw [Odd.neg_pow h y, sub_neg_eq_add, sub_neg_eq_add] at h₁
  exact Dvd.intro_left _ h₁

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5a0a4f8fb2111f39679d67265985cd7df8f7ef3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
