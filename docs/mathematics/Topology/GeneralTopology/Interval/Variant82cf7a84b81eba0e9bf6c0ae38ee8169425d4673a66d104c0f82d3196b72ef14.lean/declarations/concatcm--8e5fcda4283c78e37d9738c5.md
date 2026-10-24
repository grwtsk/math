# concatCM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cbc8e06d68c91dac0f486dc0b90f0e12fc635b630fa68ecce3243d59d9f18caa",
  "kind": "def",
  "lexical_name": "concatCM",
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
  "slug": "concatcm--8e5fcda4283c78e37d9738c5",
  "source": {
    "blob": "a09d1dd585ec5f0f6df3b3e72296507ac0a88bbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 121,
    "path": "GRWTSK/Topology/GeneralTopology/Interval/Variant82cf7a84b81eba0e9bf6c0ae38ee8169425d4673a66d104c0f82d3196b72ef14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8e5fcda4283c78e37d9738c58a36b014b0a58567d8dbdd0350d7c7d8bf59e0e9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Interval/Variant82cf7a84b81eba0e9bf6c0ae38ee8169425d4673a66d104c0f82d3196b72ef14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cbc8e06d68c91dac0f486dc0b90f0e12fc635b630fa68ecce3243d59d9f18caa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def concatCM :
    C({fg : C(Icc a b, E) × C(Icc b c, E) // fg.1 ⊤ = fg.2 ⊥}, C(Icc a c, E)) where
  toFun fg := concat fg.val.1 fg.val.2
  continuous_toFun := by
    let S : Set (C(Icc a b, E) × C(Icc b c, E)) := {fg | fg.1 ⊤ = fg.2 ⊥}
    change Continuous (S.restrict concat.uncurry)
    refine continuousOn_iff_continuous_restrict.mp (fun fg hfg => ?_)
    refine tendsto_concat ?_ hfg ?_ ?_
    · exact eventually_nhdsWithin_of_forall (fun _ => id)
    · exact tendsto_nhdsWithin_of_tendsto_nhds continuousAt_fst
    · exact tendsto_nhdsWithin_of_tendsto_nhds continuousAt_snd

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Interval/Variant82cf7a84b81eba0e9bf6c0ae38ee8169425d4673a66d104c0f82d3196b72ef14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Interval/Variant82cf7a84b81eba0e9bf6c0ae38ee8169425d4673a66d104c0f82d3196b72ef14.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a09d1dd585ec5f0f6df3b3e72296507ac0a88bbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
