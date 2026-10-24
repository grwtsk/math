# involute_eq_of_mem_odd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0e8a658-35cd-d4c4-74d3-6a0f11935475",
  "kind": "theorem",
  "lexical_name": "involute_eq_of_mem_odd",
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
  "slug": "involute-eq-of-mem-odd--38cf7f8e913e250830c400a0",
  "source": {
    "blob": "872d937b6fe376959368ff992f2a47595ed43ce5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 316,
    "path": "GRWTSK/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38cf7f8e913e250830c400a0b3084e9384fccb5c43ea2f8d29b6ad67b10f7b9e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0e8a658-35cd-d4c4-74d3-6a0f11935475`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem involute_eq_of_mem_odd {x : CliffordAlgebra Q} (h : x ∈ evenOdd Q 1) : involute x = -x := by
  induction x, h using odd_induction with
  | ι m => exact involute_ι _
  | add x y _hx _hy ihx ihy =>
    rw [map_add, ihx, ihy, neg_add]
  | ι_mul_ι_mul m₁ m₂ x _hx ihx =>
    rw [map_mul, map_mul, involute_ι, involute_ι, ihx, neg_mul_neg, mul_neg]

end CliffordAlgebra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `872d937b6fe376959368ff992f2a47595ed43ce5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
