# rank_rePart_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:029993e6-04f5-ea72-ca50-7089cc82240a",
  "kind": "lemma",
  "lexical_name": "rank_rePart_le",
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
  "slug": "rank-repart-le--be3e37a96c8c0c33571a4307",
  "source": {
    "blob": "8003f91d09d94a4485213d0a819e7dd2ac406321",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 420,
    "path": "GRWTSK/Topology/GeneralTopology/ZeroSide/Variant239d6e0d6b187f0713ca8ef0955964876f99e7f28f29504f7149f555799a898a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be3e37a96c8c0c33571a430702ede69f1024f764ef9becccdd6c54c6361539d1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ZeroSide/Variant239d6e0d6b187f0713ca8ef0955964876f99e7f28f29504f7149f555799a898a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:029993e6-04f5-ea72-ca50-7089cc82240a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 420–426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rank_rePart_le : (D.rePart P).rank ≤ P.p := by
  unfold rePart PairReps.p
  refine (rank_sum_le _ _ (fun _ => 1) fun z _ => rank_smul_vecMulVec_le _ _ _).trans ?_
  simp

omit [DecidableEq ι] in
/-- "A is a sum of #𝒵(I') matrices of rank one" ⟹ rank A ≤ #𝒵(I') [prop:block (i)]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ZeroSide/Variant239d6e0d6b187f0713ca8ef0955964876f99e7f28f29504f7149f555799a898a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ZeroSide/Variant239d6e0d6b187f0713ca8ef0955964876f99e7f28f29504f7149f555799a898a.lean#L420).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8003f91d09d94a4485213d0a819e7dd2ac406321` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
