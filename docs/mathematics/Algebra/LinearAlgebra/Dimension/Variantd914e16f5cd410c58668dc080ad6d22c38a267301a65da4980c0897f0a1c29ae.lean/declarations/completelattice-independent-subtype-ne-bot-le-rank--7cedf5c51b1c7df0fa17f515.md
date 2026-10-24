# CompleteLattice.Independent.subtype_ne_bot_le_rank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f6c8a624ef6dde9c17b9763988af3c37c25e6b1e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 453,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d914e16f5cd410c58668dc080ad6d22c38a267301a65da4980c0897f0a1c29ae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b37a8901-023e-3b5d-8367-db1b83efb77b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eb6cf827-4fe6-3485-ade8-67a600862aae",
  "kind": "theorem",
  "lexical_name": "CompleteLattice.Independent.subtype_ne_bot_le_rank",
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
  "slug": "completelattice-independent-subtype-ne-bot-le-rank--7cedf5c51b1c7df0fa17f515",
  "source": {
    "blob": "f6c8a624ef6dde9c17b9763988af3c37c25e6b1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 474,
    "line": 453,
    "path": "GRWTSK/Algebra/LinearAlgebra/Dimension/Variantd914e16f5cd410c58668dc080ad6d22c38a267301a65da4980c0897f0a1c29ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7cedf5c51b1c7df0fa17f515d07eef9d33b751d7d1629de65951f6c74ca730e7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Dimension/Variantd914e16f5cd410c58668dc080ad6d22c38a267301a65da4980c0897f0a1c29ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb6cf827-4fe6-3485-ade8-67a600862aae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 453–474.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CompleteLattice.Independent.subtype_ne_bot_le_rank [NoZeroSMulDivisors R M]
    {V : ι → Submodule R M} (hV : CompleteLattice.Independent V) :
    Cardinal.lift.{v} #{ i : ι // V i ≠ ⊥ } ≤ Cardinal.lift.{w} (Module.rank R M) := by
  set I := { i : ι // V i ≠ ⊥ }
  have hI : ∀ i : I, ∃ v ∈ V i, v ≠ (0 : M) := by
    intro i
    rw [← Submodule.ne_bot_iff]
    exact i.prop
  choose v hvV hv using hI
  have : LinearIndependent R v := (hV.comp Subtype.coe_injective).linearIndependent _ hvV hv
  exact cardinal_lift_le_rank_of_linearIndependent' this
#align complete_lattice.independent.subtype_ne_bot_le_rank CompleteLattice.Independent.subtype_ne_bot_le_rank

end

section RankZero

variable {R : Type u} {M : Type v}

variable [Ring R] [AddCommGroup M] [Module R M]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Dimension/Variantd914e16f5cd410c58668dc080ad6d22c38a267301a65da4980c0897f0a1c29ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Dimension/Variantd914e16f5cd410c58668dc080ad6d22c38a267301a65da4980c0897f0a1c29ae.lean#L453).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6c8a624ef6dde9c17b9763988af3c37c25e6b1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
