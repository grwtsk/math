# isSelfAdjoint_smul_of_mem_skewAdjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03758f85-dbf8-3e10-5b94-471593960804",
  "kind": "theorem",
  "lexical_name": "isSelfAdjoint_smul_of_mem_skewAdjoint",
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
  "slug": "isselfadjoint-smul-of-mem-skewadjoint--ef885ce7ef3167950c6135c6",
  "source": {
    "blob": "681178294ab94e9129d60c581826e3ccb993ff46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 570,
    "line": 566,
    "path": "GRWTSK/Algebra/GroupTheory/SelfAdjoint/Variant1a44c99573be8938b83cb38ddf75a072ff7f860694e176073a4d136a925b5c37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef885ce7ef3167950c6135c69a8547ece7a8383e0c2d2c2e927fce4f42229732",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/SelfAdjoint/Variant1a44c99573be8938b83cb38ddf75a072ff7f860694e176073a4d136a925b5c37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03758f85-dbf8-3e10-5b94-471593960804`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 566–570.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSelfAdjoint_smul_of_mem_skewAdjoint [Ring R] [AddCommGroup A] [Module R A]
    [StarAddMonoid R] [StarAddMonoid A] [StarModule R A] {r : R} (hr : r ∈ skewAdjoint R) {a : A}
    (ha : a ∈ skewAdjoint A) : IsSelfAdjoint (r • a) :=
  (star_smul _ _).trans <| (congr_arg₂ _ hr ha).trans <| neg_smul_neg _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/SelfAdjoint/Variant1a44c99573be8938b83cb38ddf75a072ff7f860694e176073a4d136a925b5c37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/SelfAdjoint/Variant1a44c99573be8938b83cb38ddf75a072ff7f860694e176073a4d136a925b5c37.lean#L566).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `681178294ab94e9129d60c581826e3ccb993ff46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
