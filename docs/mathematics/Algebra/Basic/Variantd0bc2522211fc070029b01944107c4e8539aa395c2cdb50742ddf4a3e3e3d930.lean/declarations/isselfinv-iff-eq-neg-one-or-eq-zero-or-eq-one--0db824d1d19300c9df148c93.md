# isSelfInv_iff_eq_neg_one_or_eq_zero_or_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8bbdcd156ad997001ba42e2c17c88758308b3382",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:71c6a8cd-84f1-4b0e-eb31-7c634ddc6778",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f89af98e-7421-4ff8-3197-679c90e166e7",
  "kind": "theorem",
  "lexical_name": "isSelfInv_iff_eq_neg_one_or_eq_zero_or_eq_one",
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
  "slug": "isselfinv-iff-eq-neg-one-or-eq-zero-or-eq-one--0db824d1d19300c9df148c93",
  "source": {
    "blob": "8bbdcd156ad997001ba42e2c17c88758308b3382",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 131,
    "path": "GRWTSK/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0db824d1d19300c9df148c9355a3d9b237f39acdf2335eedd0b4fc9902c59d86",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f89af98e-7421-4ff8-3197-679c90e166e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSelfInv_iff_eq_neg_one_or_eq_zero_or_eq_one {a : K} :
    IsSelfInv a ↔ a = -1 ∨ a = 0 ∨ a = 1 := inv_eq_self₀

-- see Note [lower instance priority]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bbdcd156ad997001ba42e2c17c88758308b3382` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
