# sum_apply_smul_single_eq_self_on_univ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a93224b6-4ad8-3f72-2c1e-ec6b5e68d27b",
  "kind": "lemma",
  "lexical_name": "sum_apply_smul_single_eq_self_on_univ",
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
  "slug": "sum-apply-smul-single-eq-self-on-univ--ab08fb1641038911756b441a",
  "source": {
    "blob": "80084dd2ce2e6875491a2bd80de9e453c951612b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 711,
    "line": 699,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyFinsupp/Variante6d7fabcfcd66e1313ca8258208e2a5e916b0c2ee69bdcca8aca08e17f0312b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab08fb1641038911756b441a8b70efe976807076848910d77b51a9429769736b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyFinsupp/Variante6d7fabcfcd66e1313ca8258208e2a5e916b0c2ee69bdcca8aca08e17f0312b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a93224b6-4ad8-3f72-2c1e-ec6b5e68d27b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 699–711.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma sum_apply_smul_single_eq_self_on_univ [DecidableEq X] {D : locallyFinsupp X ℤ}
    (h : D.support.Finite) :
    ∑ z ∈ h.toFinset, single z (D z) = D := by
  ext w
  simp only [coe_sum, Finset.sum_apply, single_apply, Finset.sum_ite_eq]
  set s := h.toFinset with hs
  by_cases hw : w ∈ s
  · simp [hw]
  · simp only [hw, ite_false]
    have : w ∉ support D := by simpa only [hs, Set.Finite.mem_toFinset] using hw
    exact (notMem_support.mp this).symm

/-- Restriction as a lattice morphism -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyFinsupp/Variante6d7fabcfcd66e1313ca8258208e2a5e916b0c2ee69bdcca8aca08e17f0312b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyFinsupp/Variante6d7fabcfcd66e1313ca8258208e2a5e916b0c2ee69bdcca8aca08e17f0312b2.lean#L699).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80084dd2ce2e6875491a2bd80de9e453c951612b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
