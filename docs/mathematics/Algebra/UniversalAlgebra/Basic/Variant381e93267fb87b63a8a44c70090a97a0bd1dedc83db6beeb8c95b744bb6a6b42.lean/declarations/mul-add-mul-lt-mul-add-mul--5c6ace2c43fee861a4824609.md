# mul_add_mul_lt_mul_add_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9fcd936-fd34-d5a0-c426-ede980a9a7d0",
  "kind": "lemma",
  "lexical_name": "mul_add_mul_lt_mul_add_mul",
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
  "slug": "mul-add-mul-lt-mul-add-mul--5c6ace2c43fee861a4824609",
  "source": {
    "blob": "f764f46f1acc1e89ba8525f168bf2645de3b57c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 406,
    "line": 398,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant381e93267fb87b63a8a44c70090a97a0bd1dedc83db6beeb8c95b744bb6a6b42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c6ace2c43fee861a482460910bf7083b5c032afa0ee72022dd5ad9322578d47",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant381e93267fb87b63a8a44c70090a97a0bd1dedc83db6beeb8c95b744bb6a6b42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9fcd936-fd34-d5a0-c426-ede980a9a7d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 398–406.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mul_add_mul_lt_mul_add_mul [ExistsAddOfLE R] [MulPosStrictMono R]
    [AddLeftStrictMono R]
    (hab : a < b) (hcd : c < d) : a * d + b * c < a * c + b * d := by
  obtain ⟨b, rfl⟩ := exists_add_of_le hab.le
  obtain ⟨d, hd, rfl⟩ := exists_pos_add_of_lt' hcd
  rw [mul_add, add_right_comm, mul_add, ← add_assoc]
  exact add_lt_add_left (mul_lt_mul_of_pos_right hab hd) _

/-- Binary **rearrangement inequality**. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant381e93267fb87b63a8a44c70090a97a0bd1dedc83db6beeb8c95b744bb6a6b42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant381e93267fb87b63a8a44c70090a97a0bd1dedc83db6beeb8c95b744bb6a6b42.lean#L398).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f764f46f1acc1e89ba8525f168bf2645de3b57c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
