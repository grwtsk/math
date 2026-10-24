# one_lt_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e77fc0c4-521c-c978-a55c-ee36de315c19",
  "kind": "lemma",
  "lexical_name": "one_lt_two",
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
  "slug": "one-lt-two--237b0986ff6fcec2e049f085",
  "source": {
    "blob": "92d76be6c3af18f83bd928b227ecc171704eca36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 101,
    "path": "GRWTSK/Algebra/UniversalAlgebra/NatCast/Variantf72c4d580d51d0d5f2c1f744533b66c8d5ee30793c4e182e7295f11a69b484b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:237b0986ff6fcec2e049f08583de32b61758182a7f436ad0585731c822cc8046",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/NatCast/Variantf72c4d580d51d0d5f2c1f744533b66c8d5ee30793c4e182e7295f11a69b484b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e77fc0c4-521c-c978-a55c-ee36de315c19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma one_lt_two [AddLeftStrictMono α] : (1 : α) < 2 := by
  rw [← one_add_one_eq_two]
  exact lt_add_one _

end

alias two_pos := zero_lt_two

alias three_pos := zero_lt_three

alias four_pos := zero_lt_four
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/NatCast/Variantf72c4d580d51d0d5f2c1f744533b66c8d5ee30793c4e182e7295f11a69b484b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/NatCast/Variantf72c4d580d51d0d5f2c1f744533b66c8d5ee30793c4e182e7295f11a69b484b0.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92d76be6c3af18f83bd928b227ecc171704eca36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
