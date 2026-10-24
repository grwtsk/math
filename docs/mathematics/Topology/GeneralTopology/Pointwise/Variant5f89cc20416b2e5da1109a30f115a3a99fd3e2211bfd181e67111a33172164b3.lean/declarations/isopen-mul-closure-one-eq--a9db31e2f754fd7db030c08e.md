# IsOpen.mul_closure_one_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27d19e66-d1b1-b183-36a5-0f91d470a701",
  "kind": "lemma",
  "lexical_name": "IsOpen.mul_closure_one_eq",
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
  "slug": "isopen-mul-closure-one-eq--a9db31e2f754fd7db030c08e",
  "source": {
    "blob": "fd7aee4857bb6a7f355bc453c29b821bc884b7f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 261,
    "path": "GRWTSK/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9db31e2f754fd7db030c08ee2aaa52f3b22fc1cbc8be22a0782f69710ca24d2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27d19e66-d1b1-b183-36a5-0f91d470a701`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsOpen.mul_closure_one_eq {U : Set G} (hU : IsOpen U) :
    U * (closure {1} : Set G) = U :=
  compl_mul_closure_one_eq_iff.1 (hU.isClosed_compl.mul_closure_one_eq)

end IsTopologicalGroup

section FilterMul

section

variable (G) [TopologicalSpace G] [Group G] [IsTopologicalGroup G]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd7aee4857bb6a7f355bc453c29b821bc884b7f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
