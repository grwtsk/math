# infinite_setOfPred_apply_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d17586c4-b28d-21b2-8af0-ed726431a839",
  "kind": "lemma",
  "lexical_name": "infinite_setOfPred_apply_eq_one",
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
  "slug": "infinite-setofpred-apply-eq-one--c343d8911af08745e055de0f",
  "source": {
    "blob": "dcfc388977fe3f58d9fe5ac7e12e762cd7650e1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 402,
    "line": 394,
    "path": "GRWTSK/Topology/GeneralTopology/Imo2024Q3/Variantfa8689cd277ceee6fd5ed9e09b262e8facbca3af2af22396187211e6dd90bfb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c343d8911af08745e055de0fde22a38d2c2ea6b365ce3f0d5355ca285279de4e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Imo2024Q3/Variantfa8689cd277ceee6fd5ed9e09b262e8facbca3af2af22396187211e6dd90bfb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d17586c4-b28d-21b2-8af0-ed726431a839`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 394–402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma infinite_setOfPred_apply_eq_one : {i | a i = 1}.Infinite :=
  (hc.infinite_setOfPred_apply_eq_iff_small (by decide)).mpr hc.small_one

@[deprecated (since := "2026-07-09")]
alias infinite_setOf_apply_eq_one := infinite_setOfPred_apply_eq_one

variable (a)

/-- The largest number to appear more than `k` times. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Imo2024Q3/Variantfa8689cd277ceee6fd5ed9e09b262e8facbca3af2af22396187211e6dd90bfb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Imo2024Q3/Variantfa8689cd277ceee6fd5ed9e09b262e8facbca3af2af22396187211e6dd90bfb3.lean#L394).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcfc388977fe3f58d9fe5ac7e12e762cd7650e1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
