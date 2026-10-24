# centeredRectangleAt_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6b2074f85a703b5b34b5cdc0f90767aad32e9fea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 372,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cb9b6b36e244e259a625cd9ca972aa9d18769a2d93d57e5f86da572ea22419bd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9bb0600f-d6cb-e9c3-c9f3-9c5d7db524ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:507a93f7-0689-740d-e626-7e661d4b4abc",
  "kind": "theorem",
  "lexical_name": "centeredRectangleAt_succ",
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
  "slug": "centeredrectangleat-succ--73d72d203fd2ce053caf550e",
  "source": {
    "blob": "6b2074f85a703b5b34b5cdc0f90767aad32e9fea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 372,
    "path": "GRWTSK/Topology/GeneralTopology/07SourceCutoffFlux/Variantcb9b6b36e244e259a625cd9ca972aa9d18769a2d93d57e5f86da572ea22419bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73d72d203fd2ce053caf550eafb1a1929ecae930738bab7262545bb9f8fdb5d4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/07SourceCutoffFlux/Variantcb9b6b36e244e259a625cd9ca972aa9d18769a2d93d57e5f86da572ea22419bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:507a93f7-0689-740d-e626-7e661d4b4abc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 372–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredRectangleAt_succ (A : ℝ) (U N : ℕ) (hUN : U < N) :
    centeredRectangleAt A (U + 1) N - centeredRectangleAt A U N =
      (moebius (U + 1) : ℝ) *
        (rectangle (Finset.Ioc (U + 1) N) (sourceKernel A) (fun _ ↦ 1) /
            (U + 1 : ℕ) -
          rectangle (Finset.Ioc (U + 1) N) (sourceKernel A)
            (fun n ↦ if U + 1 ∣ n then 1 else 0)) -
      boundaryAt A U N (centeredBeta U) -
      sourceKernel A (U + 1) (U + 1) * centeredBeta U (U + 1) := by
  have ho := centeredOffAt_succ A U N hUN
  have hd := centeredDiagonalAt_succ A U N hUN
  unfold centeredOffAt plainOffAt multiplesOffAt offDiagonal at ho
  unfold centeredDiagonalAt at hd
  unfold centeredRectangleAt
  linear_combination ho + hd

/-- Row centering changes both deleted-axis boundaries by the exact same mean. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/07SourceCutoffFlux/Variantcb9b6b36e244e259a625cd9ca972aa9d18769a2d93d57e5f86da572ea22419bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/07SourceCutoffFlux/Variantcb9b6b36e244e259a625cd9ca972aa9d18769a2d93d57e5f86da572ea22419bd.lean#L372).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b2074f85a703b5b34b5cdc0f90767aad32e9fea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
