# linearOrderedCancelCommMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a724bcaf15865200115567741fbc522e173173bedcb184821c5a1501e7d759aa",
  "kind": "instance",
  "lexical_name": "linearOrderedCancelCommMonoid",
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
  "slug": "linearorderedcancelcommmonoid--44fc237681bd20b9c9329a3c",
  "source": {
    "blob": "a9f802372208fb86bae82fa31f0bd5c0497c21da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 147,
    "path": "GRWTSK/Algebra/GroupTheory/Ring/Variant53799b76403f733c6b45012a09f5626f048655226683ffcb1117652c1cee1793.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:44fc237681bd20b9c9329a3ced286b731ecd82011782a1a91e838408e9286456",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Ring/Variant53799b76403f733c6b45012a09f5626f048655226683ffcb1117652c1cee1793.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a724bcaf15865200115567741fbc522e173173bedcb184821c5a1501e7d759aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance linearOrderedCancelCommMonoid [LinearOrderedCommSemiring R] :
    LinearOrderedCancelCommMonoid { x : R // 0 < x } :=
  { Subtype.linearOrder _, Positive.orderedCommMonoid with
    le_of_mul_le_mul_left := fun a _ _ h => Subtype.coe_le_coe.1 <| (mul_le_mul_left a.2).1 h }
#align positive.subtype.linear_ordered_cancel_comm_monoid Positive.linearOrderedCancelCommMonoid

end mul_comm

end Positive
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Ring/Variant53799b76403f733c6b45012a09f5626f048655226683ffcb1117652c1cee1793.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Ring/Variant53799b76403f733c6b45012a09f5626f048655226683ffcb1117652c1cee1793.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9f802372208fb86bae82fa31f0bd5c0497c21da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
