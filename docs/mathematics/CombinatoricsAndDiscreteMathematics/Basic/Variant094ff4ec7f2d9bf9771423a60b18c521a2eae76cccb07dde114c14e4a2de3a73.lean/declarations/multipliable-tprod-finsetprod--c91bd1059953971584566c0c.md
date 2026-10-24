# Multipliable.tprod_finsetProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "05d24f2c6408866a80625bf444417750aa84d5cd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 730,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/09/094ff4ec7f2d9bf9771423a60b18c521a2eae76cccb07dde114c14e4a2de3a73.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:708a6df2-c466-0e4a-a9b2-aae71dd8d6ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d30a02f8-9960-44a3-68aa-81681af90dec",
  "kind": "theorem",
  "lexical_name": "Multipliable.tprod_finsetProd",
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
  "slug": "multipliable-tprod-finsetprod--c91bd1059953971584566c0c",
  "source": {
    "blob": "05d24f2c6408866a80625bf444417750aa84d5cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 737,
    "line": 730,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant094ff4ec7f2d9bf9771423a60b18c521a2eae76cccb07dde114c14e4a2de3a73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c91bd1059953971584566c0c4d3294604907515ea6ef96124b448ae6aedb70d9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant094ff4ec7f2d9bf9771423a60b18c521a2eae76cccb07dde114c14e4a2de3a73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d30a02f8-9960-44a3-68aa-81681af90dec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 730–737.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Multipliable.tprod_finsetProd [L.NeBot] {f : γ → β → α} {s : Finset γ}
    (hf : ∀ i ∈ s, Multipliable (f i) L) : ∏'[L] b, ∏ i ∈ s, f i b = ∏ i ∈ s, ∏'[L] b, f i b :=
  (hasProd_prod fun i hi ↦ (hf i hi).hasProd).tprod_eq

/-- Version of `tprod_eq_mul_tprod_ite` for `CommMonoid` rather than `CommGroup`.
Requires a different convergence assumption involving `Function.update`. -/
@[to_additive /-- Version of `tsum_eq_add_tsum_ite` for `AddCommMonoid` rather than `AddCommGroup`.
Requires a different convergence assumption involving `Function.update`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant094ff4ec7f2d9bf9771423a60b18c521a2eae76cccb07dde114c14e4a2de3a73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant094ff4ec7f2d9bf9771423a60b18c521a2eae76cccb07dde114c14e4a2de3a73.lean#L730).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05d24f2c6408866a80625bf444417750aa84d5cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
