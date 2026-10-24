# _root_.GRWTSK.Algebra.GroupTheory.FintypeOfKerLeRange.Varianted63a1fee406232edbf35bd25fed130f422228825a27c9b26e5b6b0905580a8c.Finite.of_finite_quot_finite_subgroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83b8c873-29d5-4737-4c6f-8b2f6bc416cc",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.GroupTheory.FintypeOfKerLeRange.Varianted63a1fee406232edbf35bd25fed130f422228825a27c9b26e5b6b0905580a8c.Finite.of_finite_quot_finite_subgroup",
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
  "slug": "root-grwtsk-algebra-grouptheory-fintypeofkerlerange-varianted63a1fee4062--b4faa36cf79f231db4431cf6",
  "source": {
    "blob": "6d76d86ecb0e0722c70df7224aac435bf93a74c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 62,
    "path": "GRWTSK/Algebra/GroupTheory/Finite/Variant6bdcadcd56a7bb8e99f8306d71336ca5632493cc95c618e9a3c1a930bd1cb58c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4faa36cf79f231db4431cf6e6d4eb440faf8272903ea2dca827e38566f09190",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Finite/Variant6bdcadcd56a7bb8e99f8306d71336ca5632493cc95c618e9a3c1a930bd1cb58c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83b8c873-29d5-4737-4c6f-8b2f6bc416cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Algebra.GroupTheory.FintypeOfKerLeRange.Varianted63a1fee406232edbf35bd25fed130f422228825a27c9b26e5b6b0905580a8c.Finite.of_finite_quot_finite_subgroup {H : Subgroup G} [Finite H] [Finite (G ⧸ H)] :
    Finite G :=
  Finite.of_equiv _ (groupEquivQuotientProdSubgroup (s := H)).symm

end Group
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Finite/Variant6bdcadcd56a7bb8e99f8306d71336ca5632493cc95c618e9a3c1a930bd1cb58c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Finite/Variant6bdcadcd56a7bb8e99f8306d71336ca5632493cc95c618e9a3c1a930bd1cb58c.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d76d86ecb0e0722c70df7224aac435bf93a74c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
