# IsAddTorsionFree.to_noZeroSMulDivisors_int

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b8d96855888b4e726e04f4a4b974a5bbc7d27a75995296472b258255948fa411",
  "kind": "instance",
  "lexical_name": "IsAddTorsionFree.to_noZeroSMulDivisors_int",
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
  "slug": "isaddtorsionfree-to-nozerosmuldivisors-int--d3c38c37460f80c2bd048eca",
  "source": {
    "blob": "d624874a3dd03e8265feabde66137472f38b3fe3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 82,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant25b866e8e99202df4f7f38ef199e7f96c17ce841760143700a7a42c1ea93bdc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d3c38c37460f80c2bd048ecaa5e7be6314f23629d45f439b33bb4c73a37ab962",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant25b866e8e99202df4f7f38ef199e7f96c17ce841760143700a7a42c1ea93bdc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b8d96855888b4e726e04f4a4b974a5bbc7d27a75995296472b258255948fa411`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance IsAddTorsionFree.to_noZeroSMulDivisors_int [AddGroup G] [IsAddTorsionFree G] :
    NoZeroSMulDivisors ℤ G where
  eq_zero_or_eq_zero_of_smul_eq_zero {n x} hx := by
    contrapose! hx; simpa using (zsmul_right_injective hx.1).ne hx.2

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant25b866e8e99202df4f7f38ef199e7f96c17ce841760143700a7a42c1ea93bdc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant25b866e8e99202df4f7f38ef199e7f96c17ce841760143700a7a42c1ea93bdc2.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d624874a3dd03e8265feabde66137472f38b3fe3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
