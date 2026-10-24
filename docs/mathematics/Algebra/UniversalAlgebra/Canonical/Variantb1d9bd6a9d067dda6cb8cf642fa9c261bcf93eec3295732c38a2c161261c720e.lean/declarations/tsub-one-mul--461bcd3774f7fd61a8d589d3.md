# tsub_one_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ffb9e665-679e-50fd-ae58-819176c7c254",
  "kind": "lemma",
  "lexical_name": "tsub_one_mul",
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
  "slug": "tsub-one-mul--461bcd3774f7fd61a8d589d3",
  "source": {
    "blob": "dddd6c6f926f3fdc8c18fb623309e2ca1ffe23a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 150,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Canonical/Variantb1d9bd6a9d067dda6cb8cf642fa9c261bcf93eec3295732c38a2c161261c720e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:461bcd3774f7fd61a8d589d3cdc5da0131213928d2a9de2c2f95ca54f5d1eae2",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Canonical/Variantb1d9bd6a9d067dda6cb8cf642fa9c261bcf93eec3295732c38a2c161261c720e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffb9e665-679e-50fd-ae58-819176c7c254`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tsub_one_mul [MulRightMono R] [AddLeftReflectLE R] (a b : R) :
    (a - 1) * b = a * b - b := by rw [tsub_mul, one_mul]

end NonAssocSemiring

section CommSemiring

variable [CommSemiring R] [PartialOrder R] [CanonicallyOrderedAdd R]
  [Sub R] [OrderedSub R] [IsTotal R (· ≤ ·)] [AddLeftReflectLE R]

/-- The `tsub` version of `mul_self_sub_mul_self`. Notably, this holds for `Nat` and `NNReal`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Canonical/Variantb1d9bd6a9d067dda6cb8cf642fa9c261bcf93eec3295732c38a2c161261c720e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Canonical/Variantb1d9bd6a9d067dda6cb8cf642fa9c261bcf93eec3295732c38a2c161261c720e.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dddd6c6f926f3fdc8c18fb623309e2ca1ffe23a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
