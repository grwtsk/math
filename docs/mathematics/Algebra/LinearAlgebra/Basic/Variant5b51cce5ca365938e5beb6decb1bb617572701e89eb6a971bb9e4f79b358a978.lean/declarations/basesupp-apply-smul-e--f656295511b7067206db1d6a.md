# baseSupp_apply_smul_e

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d79f36ef-53af-5830-88de-2d493efe5012",
  "kind": "lemma",
  "lexical_name": "baseSupp_apply_smul_e",
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
  "slug": "basesupp-apply-smul-e--f656295511b7067206db1d6a",
  "source": {
    "blob": "db4c889b1149f5b2b4a567d0913aa896612df039",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 303,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f656295511b7067206db1d6aeaad7c41c74d063881c0465281129005f93b1259",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d79f36ef-53af-5830-88de-2d493efe5012`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma baseSupp_apply_smul_e (i : ι) (x : H) :
    b.baseSupp i x • b.e i = ⁅x, b.e i⁆ := by
  obtain ⟨x, hx⟩ := x
  simp only [coe_bracket_of_module]
  have hx' : x ∈ Submodule.span R (range b.h) := by
    rwa [← LieSubalgebra.mem_toSubmodule, b.coe_cartan_eq_span] at hx
  induction hx' using Submodule.span_induction with
  | mem u hu =>
    obtain ⟨j, rfl⟩ := hu
    change b.baseSupp i (b.h' j) • _ = _
    simp [b.lie_h_e, Int.cast_smul_eq_zsmul]
  | zero => change b.baseSupp i 0 • _ = _; simp
  | add u v hu hv hu' hv' =>
    rw [← coe_cartan_eq_span, LieSubalgebra.mem_toSubmodule] at hu hv
    rw [← AddMemClass.mk_add_mk _ u v hu hv]
    simp only [map_add, add_smul, add_lie] at hu' hv' ⊢
    rw [hu', hv']
  | smul t u hu hv' =>
    rw [← coe_cartan_eq_span, LieSubalgebra.mem_toSubmodule] at hu
    rw [← SetLike.mk_smul_mk _ t u hu, map_smul, smul_assoc, hv', smul_lie]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db4c889b1149f5b2b4a567d0913aa896612df039` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
