# sourceKernel_analytic_of_denominators

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3a3710f13556daec3ffb67a27b3cf5e7c9880df9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 177,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:133d8598-08c2-22a1-1257-016dce9dd579",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:383b9f46-80c8-4598-9880-cf2cf98eead0",
  "kind": "theorem",
  "lexical_name": "sourceKernel_analytic_of_denominators",
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
  "slug": "sourcekernel-analytic-of-denominators--19a9f133553ffaa09b31dc37",
  "source": {
    "blob": "3a3710f13556daec3ffb67a27b3cf5e7c9880df9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 177,
    "path": "GRWTSK/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19a9f133553ffaa09b31dc3730828f76660ad93d26ccc0cb66ffaff50ece1fc3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:383b9f46-80c8-4598-9880-cf2cf98eead0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceKernel_analytic_of_denominators
    (z s : ℂ)
    (hs : s ≠ 0)
    (hminus : s - 2 * z ≠ 0)
    (hplus : s + 2 * z ≠ 0) :
    AnalyticAt ℂ (sourceKernel z) s := by
  have hleft :
      AnalyticAt ℂ
        (fun t ↦
          polynomialKernel (positivePolynomial z)
            (t - 2 * z)) s :=
    (polynomialKernel_analytic _ _ hminus).comp
      (f := fun t : ℂ ↦ t - 2 * z)
      (x := s)
      (analyticAt_id.sub analyticAt_const)
  have hright :
      AnalyticAt ℂ
        (fun t ↦
          polynomialKernel (positivePolynomial (-z))
            (t + 2 * z)) s :=
    (polynomialKernel_analytic _ _ hplus).comp
      (f := fun t : ℂ ↦ t + 2 * z)
      (x := s)
      (analyticAt_id.add analyticAt_const)
  exact analyticAt_const.mul
    ((hleft.add hright).sub
      (analyticAt_const.mul
        (polynomialKernel_analytic _ _ hs)))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a3710f13556daec3ffb67a27b3cf5e7c9880df9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
