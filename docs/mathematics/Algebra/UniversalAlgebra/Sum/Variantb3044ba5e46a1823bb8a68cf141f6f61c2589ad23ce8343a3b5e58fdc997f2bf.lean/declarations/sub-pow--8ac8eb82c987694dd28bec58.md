# sub_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "25faeedb640dd63834234744acaaca719e72eab2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b3044ba5e46a1823bb8a68cf141f6f61c2589ad23ce8343a3b5e58fdc997f2bf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c0d2c79d-1c04-750a-127b-3e4462b5efc8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eeea8b3d-70f3-c9a7-51b1-a1db0b190139",
  "kind": "theorem",
  "lexical_name": "sub_pow",
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
  "slug": "sub-pow--8ac8eb82c987694dd28bec58",
  "source": {
    "blob": "25faeedb640dd63834234744acaaca719e72eab2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 77,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Sum/Variantb3044ba5e46a1823bb8a68cf141f6f61c2589ad23ce8343a3b5e58fdc997f2bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ac8eb82c987694dd28bec580a24e17e1f250831037594e2d58047c73aae87b1",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Sum/Variantb3044ba5e46a1823bb8a68cf141f6f61c2589ad23ce8343a3b5e58fdc997f2bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eeea8b3d-70f3-c9a7-51b1-a1db0b190139`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sub_pow [CommRing R] (x y : R) (n : ℕ) :
    (x - y) ^ n = ∑ m ∈ range (n + 1), (-1) ^ (m + n) * x ^ m * y ^ (n - m) * n.choose m := by
  rw [sub_eq_add_neg, add_pow]
  congr! 1 with m hm
  have : (-1 : R) ^ (n - m) = (-1) ^ (n + m) := by
    rw [mem_range] at hm
    simp [show n + m = n - m + 2 * m by omega, pow_add]
  rw [neg_pow, this]
  ring

namespace Nat

/-- The sum of entries in a row of Pascal's triangle -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Sum/Variantb3044ba5e46a1823bb8a68cf141f6f61c2589ad23ce8343a3b5e58fdc997f2bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Sum/Variantb3044ba5e46a1823bb8a68cf141f6f61c2589ad23ce8343a3b5e58fdc997f2bf.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25faeedb640dd63834234744acaaca719e72eab2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
