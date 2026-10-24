# isStrictlyPositive_conjSqrt_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f23d76f2-16dc-44e4-0656-701140c3aef7",
  "kind": "lemma",
  "lexical_name": "isStrictlyPositive_conjSqrt_iff",
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
  "slug": "isstrictlypositive-conjsqrt-iff--c11eb7087a4c9d7dfbeef985",
  "source": {
    "blob": "1f03800b154fae4fc4d3e6712d3c206bde076c2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 66,
    "path": "GRWTSK/Algebra/ConjSqrt/Variantb3617503ea5aca585b8ea8741adf14471c91bcaea2904d28c12607866d76c636.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c11eb7087a4c9d7dfbeef985c75fd756762b96a935ef2545f706379a641b6543",
  "verification": {
    "reference": "docs/verification/Algebra/ConjSqrt/Variantb3617503ea5aca585b8ea8741adf14471c91bcaea2904d28c12607866d76c636.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f23d76f2-16dc-44e4-0656-701140c3aef7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isStrictlyPositive_conjSqrt_iff (c a : A) (hc : IsStrictlyPositive c := by cfc_tac) :
    IsStrictlyPositive (conjSqrt c a) ↔ IsStrictlyPositive a := by
  have hc' : IsSelfAdjoint (sqrt c) := by cfc_tac
  rw [conjSqrt_apply]
  by_cases ha : IsSelfAdjoint a <;> grind

@[grind _=_]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ConjSqrt/Variantb3617503ea5aca585b8ea8741adf14471c91bcaea2904d28c12607866d76c636.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ConjSqrt/Variantb3617503ea5aca585b8ea8741adf14471c91bcaea2904d28c12607866d76c636.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f03800b154fae4fc4d3e6712d3c206bde076c2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
