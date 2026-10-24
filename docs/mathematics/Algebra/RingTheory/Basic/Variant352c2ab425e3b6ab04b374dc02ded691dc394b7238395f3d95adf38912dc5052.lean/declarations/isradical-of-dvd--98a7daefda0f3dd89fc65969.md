# IsRadical.of_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0f8591c88e951a3f6c8bde4d2f1d39696ecf4292",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/352c2ab425e3b6ab04b374dc02ded691dc394b7238395f3d95adf38912dc5052.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9ac84478-64c2-66f5-3769-75abe0f4a990",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:111f31a0-7df2-8e2e-ee0b-87dc4073d804",
  "kind": "theorem",
  "lexical_name": "IsRadical.of_dvd",
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
  "slug": "isradical-of-dvd--98a7daefda0f3dd89fc65969",
  "source": {
    "blob": "0f8591c88e951a3f6c8bde4d2f1d39696ecf4292",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 131,
    "path": "GRWTSK/Algebra/RingTheory/Basic/Variant352c2ab425e3b6ab04b374dc02ded691dc394b7238395f3d95adf38912dc5052.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98a7daefda0f3dd89fc65969910dd5d1cd70aa5c5be176700a6f139f3a5aa86e",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Basic/Variant352c2ab425e3b6ab04b374dc02ded691dc394b7238395f3d95adf38912dc5052.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:111f31a0-7df2-8e2e-ee0b-87dc4073d804`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsRadical.of_dvd [CommMonoidWithZero R] [IsCancelMulZero R] {x y : R} (hy : IsRadical y)
    (h0 : y ≠ 0) (hxy : x ∣ y) : IsRadical x := (isRadical_iff_pow_one_lt 2 one_lt_two).2 <| by
  obtain ⟨z, rfl⟩ := hxy
  refine fun w dvd ↦ ((mul_dvd_mul_iff_right <| right_ne_zero_of_mul h0).mp <| hy 2 _ ?_)
  rw [mul_pow]
  gcongr
  exact dvd_pow_self _ two_ne_zero

namespace Commute

section Semiring

variable [Semiring R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Basic/Variant352c2ab425e3b6ab04b374dc02ded691dc394b7238395f3d95adf38912dc5052.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Basic/Variant352c2ab425e3b6ab04b374dc02ded691dc394b7238395f3d95adf38912dc5052.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f8591c88e951a3f6c8bde4d2f1d39696ecf4292` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
