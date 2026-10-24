# monotone_mapFinIdxM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa0c368e-80b9-1c04-ec69-331e2b39768b",
  "kind": "theorem",
  "lexical_name": "monotone_mapFinIdxM",
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
  "slug": "monotone-mapfinidxm--87c99f30e8de93f86ff6baae",
  "source": {
    "blob": "0cc52e9d7905801b59dcddc26fc3ac65b89950c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 499,
    "line": 482,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant676fa7e467028680b42a717ae988244e5d9bc933cdae9c60d9b3068c3d2ddc8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87c99f30e8de93f86ff6baae9db36fb78b23e5afce34a5446a3ac910dd724f38",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant676fa7e467028680b42a717ae988244e5d9bc933cdae9c60d9b3068c3d2ddc8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa0c368e-80b9-1c04-ec69-331e2b39768b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 482–499.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem monotone_mapFinIdxM (xs : Array α) (f : γ → (i : Nat) → α → i < xs.size → m β)
    (hmono : monotone f) : monotone (fun x => xs.mapFinIdxM (f x)) := by
  suffices ∀ i j (h : i + j = xs.size) r, monotone (fun x => Array.mapFinIdxM.map xs (f x) i j h r) by apply this
  intro i j h r
  induction i, j, h, r using Array.mapFinIdxM.map.induct xs
  case case1 =>
    apply monotone_const
  case case2 ih =>
    apply monotone_bind
    · apply monotone_apply
      apply monotone_apply
      apply monotone_apply
      apply hmono
    · intro y
      apply monotone_of_monotone_apply
      apply ih

@[partial_fixpoint_monotone]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant676fa7e467028680b42a717ae988244e5d9bc933cdae9c60d9b3068c3d2ddc8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant676fa7e467028680b42a717ae988244e5d9bc933cdae9c60d9b3068c3d2ddc8d.lean#L482).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cc52e9d7905801b59dcddc26fc3ac65b89950c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
