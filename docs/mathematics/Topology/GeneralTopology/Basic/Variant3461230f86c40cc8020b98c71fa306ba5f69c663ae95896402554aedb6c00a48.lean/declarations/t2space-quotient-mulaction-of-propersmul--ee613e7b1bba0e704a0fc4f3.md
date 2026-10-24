# t2Space_quotient_mulAction_of_properSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24581c35-90f6-5b7a-6cab-addfc7990059",
  "kind": "theorem",
  "lexical_name": "t2Space_quotient_mulAction_of_properSMul",
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
  "slug": "t2space-quotient-mulaction-of-propersmul--ee613e7b1bba0e704a0fc4f3",
  "source": {
    "blob": "3baa7160a63eee1e3ca419dc365ebafa4869d048",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 117,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant3461230f86c40cc8020b98c71fa306ba5f69c663ae95896402554aedb6c00a48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee613e7b1bba0e704a0fc4f391b023d2ac6d372f5e2a3c66e903daf470f82b8f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant3461230f86c40cc8020b98c71fa306ba5f69c663ae95896402554aedb6c00a48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24581c35-90f6-5b7a-6cab-addfc7990059`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem t2Space_quotient_mulAction_of_properSMul [ProperSMul G X] :
    T2Space (Quotient (MulAction.orbitRel G X)) := by
  rw [t2_iff_isClosed_diagonal]
  set R := MulAction.orbitRel G X
  let π : X → Quotient R := Quotient.mk'
  have : IsOpenQuotientMap (Prod.map π π) :=
    MulAction.isOpenQuotientMap_quotientMk.prodMap MulAction.isOpenQuotientMap_quotientMk
  rw [← this.isQuotientMap.isClosed_preimage]
  convert ProperSMul.isProperMap_smul_pair.isClosedMap.isClosed_range
  · ext ⟨x₁, x₂⟩
    simp only [mem_preimage, map_apply, mem_diagonal_iff, mem_range, Prod.mk.injEq, Prod.exists,
      exists_eq_right]
    rw [Quotient.eq', MulAction.orbitRel_apply, MulAction.mem_orbit_iff]
  all_goals infer_instance

/-- If a T1 group acts properly on a topological space, then this topological space is T2. -/
@[to_additive "If a T1 group acts properly on a topological space,
then this topological space is T2."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant3461230f86c40cc8020b98c71fa306ba5f69c663ae95896402554aedb6c00a48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant3461230f86c40cc8020b98c71fa306ba5f69c663ae95896402554aedb6c00a48.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3baa7160a63eee1e3ca419dc365ebafa4869d048` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
