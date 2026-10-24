# symm_apply_eq_mk_continuousLinearEquivAt_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d54e202-4f16-8586-bea3-1d7741e4fced",
  "kind": "theorem",
  "lexical_name": "symm_apply_eq_mk_continuousLinearEquivAt_symm",
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
  "slug": "symm-apply-eq-mk-continuouslinearequivat-symm--c1ba5254298e7017f6788218",
  "source": {
    "blob": "819ab22cae2ff5c95513c9145fe1c5778bf4a61b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 466,
    "line": 456,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant11df1c28f200a799fde80d32e1168ff8b1d94f4888318801459815a8c8d764b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1ba5254298e7017f6788218fcb43d1727dff8e9569d47ffbab800ca948ae5e7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant11df1c28f200a799fde80d32e1168ff8b1d94f4888318801459815a8c8d764b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d54e202-4f16-8586-bea3-1d7741e4fced`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 456–466.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem symm_apply_eq_mk_continuousLinearEquivAt_symm (e : Trivialization F (π F E)) [e.IsLinear R]
    (b : B) (hb : b ∈ e.baseSet) (z : F) :
    e.toPartialHomeomorph.symm ⟨b, z⟩ = ⟨b, (e.continuousLinearEquivAt R b hb).symm z⟩ := by
  have h : (b, z) ∈ e.target := by
    rw [e.target_eq]
    exact ⟨hb, mem_univ _⟩
  apply e.injOn (e.map_target h)
  · simpa only [e.source_eq, mem_preimage]
  · simp_rw [e.right_inv h, coe_coe, e.apply_eq_prod_continuousLinearEquivAt R b hb,
      ContinuousLinearEquiv.apply_symm_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant11df1c28f200a799fde80d32e1168ff8b1d94f4888318801459815a8c8d764b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant11df1c28f200a799fde80d32e1168ff8b1d94f4888318801459815a8c8d764b6.lean#L456).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `819ab22cae2ff5c95513c9145fe1c5778bf4a61b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
