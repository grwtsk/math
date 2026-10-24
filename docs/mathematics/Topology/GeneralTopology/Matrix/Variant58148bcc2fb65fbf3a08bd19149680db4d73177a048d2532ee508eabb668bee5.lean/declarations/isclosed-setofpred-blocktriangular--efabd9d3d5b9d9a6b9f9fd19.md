# isClosed_setOfPred_blockTriangular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44e5d19a-242b-2a32-e9d7-8452e933c665",
  "kind": "theorem",
  "lexical_name": "isClosed_setOfPred_blockTriangular",
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
  "slug": "isclosed-setofpred-blocktriangular--efabd9d3d5b9d9a6b9f9fd19",
  "source": {
    "blob": "bb744a67d546bf7c4909e3e7b826783467bff082",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 319,
    "path": "GRWTSK/Topology/GeneralTopology/Matrix/Variant58148bcc2fb65fbf3a08bd19149680db4d73177a048d2532ee508eabb668bee5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efabd9d3d5b9d9a6b9f9fd19d18821066836fd62ec0e70ddb3b461c330e8b77f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Matrix/Variant58148bcc2fb65fbf3a08bd19149680db4d73177a048d2532ee508eabb668bee5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44e5d19a-242b-2a32-e9d7-8452e933c665`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isClosed_setOfPred_blockTriangular {α : Type*} {b : m → α} [LinearOrder α] [Zero R]
    [T2Space R] : IsClosed {M : Matrix m m R | M.BlockTriangular b} := by
  simp only [BlockTriangular, Set.ofPred_forall]
  refine isClosed_iInter fun i => isClosed_iInter fun j => isClosed_iInter fun _ => ?_
  exact isClosed_eq (continuous_id.matrix_elem i j) continuous_const

@[deprecated (since := "2026-07-09")]
alias isClosed_setOf_blockTriangular := isClosed_setOfPred_blockTriangular

end BlockMatrices

end Continuity

/-! ### Lemmas about infinite sums -/


section tsum

variable [AddCommMonoid R] [TopologicalSpace R] {L : SummationFilter X}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Matrix/Variant58148bcc2fb65fbf3a08bd19149680db4d73177a048d2532ee508eabb668bee5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Matrix/Variant58148bcc2fb65fbf3a08bd19149680db4d73177a048d2532ee508eabb668bee5.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb744a67d546bf7c4909e3e7b826783467bff082` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
