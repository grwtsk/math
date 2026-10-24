# commGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:141ef8dd018098db30c495d9202dcdfe0e1f5df63705719a2e923b1c74a91417",
  "kind": "instance",
  "lexical_name": "commGroup",
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
  "slug": "commgroup--79a62b13f31ce7b1ef1712cc",
  "source": {
    "blob": "0141b414ec7e2ef9bbc9e13f417c26e4cb1f752f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 614,
    "line": 603,
    "path": "GRWTSK/Topology/GeneralTopology/HomotopyGroup/Variant6159edf9f8aecea37e381beb9b60215e25fcab82163398cf41ca841cd17290a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:79a62b13f31ce7b1ef1712ccebdae55de85e31396b64d8a9bb9486ff7ea6411c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/HomotopyGroup/Variant6159edf9f8aecea37e381beb9b60215e25fcab82163398cf41ca841cd17290a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:141ef8dd018098db30c495d9202dcdfe0e1f5df63705719a2e923b1c74a91417`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 603–614.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance commGroup [Nontrivial N] : CommGroup (HomotopyGroup N X x) :=
  let h := exists_ne (Classical.arbitrary N)
  fast_instance% @EckmannHilton.commGroup (HomotopyGroup N X x) _ 1
    (isUnital_auxGroup <| Classical.choose h) _
    (by
      rintro ⟨a⟩ ⟨b⟩ ⟨c⟩ ⟨d⟩
      apply congr_arg Quotient.mk'
      simp only [fromLoop_trans_toLoop, transAt_distrib <| Classical.choose_spec h, coe_toEquiv,
        loopHomeo_apply, coe_symm_toEquiv, loopHomeo_symm_apply])

/-- The homotopy group at `x` indexed by a singleton is isomorphic to the fundamental group,
  i.e. the loops based at `x` up to homotopy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/HomotopyGroup/Variant6159edf9f8aecea37e381beb9b60215e25fcab82163398cf41ca841cd17290a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/HomotopyGroup/Variant6159edf9f8aecea37e381beb9b60215e25fcab82163398cf41ca841cd17290a2.lean#L603).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0141b414ec7e2ef9bbc9e13f417c26e4cb1f752f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
