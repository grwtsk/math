# localTrivAsPartialEquiv_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b21a4c1-b818-58a1-670e-e18188aa9ef3",
  "kind": "theorem",
  "lexical_name": "localTrivAsPartialEquiv_trans",
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
  "slug": "localtrivaspartialequiv-trans--a043d58d7086ebd95905ecc5",
  "source": {
    "blob": "b2f266a336842e14f979b0f4347fb22826c04ebe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 560,
    "line": 545,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantf2eebcac07a65b8867cdd6543ba3bd3bb72a9db1ac1c3e748643637e64ed8a3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a043d58d7086ebd95905ecc5e9a2524b488f8d876bd2e40bd63f25eb78b825d4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantf2eebcac07a65b8867cdd6543ba3bd3bb72a9db1ac1c3e748643637e64ed8a3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b21a4c1-b818-58a1-670e-e18188aa9ef3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 545–560.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem localTrivAsPartialEquiv_trans (i j : ι) :
    (Z.localTrivAsPartialEquiv i).symm.trans (Z.localTrivAsPartialEquiv j) ≈
      (Z.trivChange i j).toPartialEquiv := by
  constructor
  · ext x
    simp only [mem_localTrivAsPartialEquiv_target, mfld_simps]
    rfl
  · rintro ⟨x, v⟩ hx
    simp only [trivChange, localTrivAsPartialEquiv, PartialEquiv.symm,
      Prod.mk_inj, prodMk_mem_set_prod_eq, PartialEquiv.trans_source, mem_inter_iff,
      mem_preimage, proj, mem_univ, (· ∘ ·),
      PartialEquiv.coe_trans] at hx ⊢
    simp only [Z.coordChange_comp, hx, mem_inter_iff, and_self_iff, mem_baseSet_at]

/-- Topological structure on the total space of a fiber bundle created from core, designed so
that all the local trivialization are continuous. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantf2eebcac07a65b8867cdd6543ba3bd3bb72a9db1ac1c3e748643637e64ed8a3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantf2eebcac07a65b8867cdd6543ba3bd3bb72a9db1ac1c3e748643637e64ed8a3c.lean#L545).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2f266a336842e14f979b0f4347fb22826c04ebe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
