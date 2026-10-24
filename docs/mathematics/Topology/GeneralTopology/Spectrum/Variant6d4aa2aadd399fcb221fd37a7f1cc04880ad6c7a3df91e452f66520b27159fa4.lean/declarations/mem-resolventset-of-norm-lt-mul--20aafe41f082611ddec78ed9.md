# mem_resolventSet_of_norm_lt_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89108884-53ed-9636-5fe4-b59a05ea1b0f",
  "kind": "theorem",
  "lexical_name": "mem_resolventSet_of_norm_lt_mul",
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
  "slug": "mem-resolventset-of-norm-lt-mul--20aafe41f082611ddec78ed9",
  "source": {
    "blob": "34a2695c0503dfea021f3abf7c0114c663196023",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 108,
    "path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20aafe41f082611ddec78ed92778dc3eb00a22d90c6929066797e4d8cdb23bec",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89108884-53ed-9636-5fe4-b59a05ea1b0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_resolventSet_of_norm_lt_mul {a : A} {k : 𝕜} (h : ‖a‖ * ‖(1 : A)‖ < ‖k‖) : k ∈ ρ a := by
  rw [resolventSet, Set.mem_setOf_eq, Algebra.algebraMap_eq_smul_one]
  nontriviality A
  have hk : k ≠ 0 :=
    ne_zero_of_norm_ne_zero ((mul_nonneg (norm_nonneg _) (norm_nonneg _)).trans_lt h).ne'
  letI ku := Units.map ↑ₐ.toMonoidHom (Units.mk0 k hk)
  rw [← inv_inv ‖(1 : A)‖,
    mul_inv_lt_iff (inv_pos.2 <| norm_pos_iff.2 (one_ne_zero : (1 : A) ≠ 0))] at h
  have hku : ‖-a‖ < ‖(↑ku⁻¹ : A)‖⁻¹ := by simpa [norm_algebraMap] using h
  simpa [sub_eq_add_neg, Algebra.algebraMap_eq_smul_one] using (ku.add (-a) hku).isUnit
#align spectrum.mem_resolvent_set_of_norm_lt_mul spectrum.mem_resolventSet_of_norm_lt_mul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34a2695c0503dfea021f3abf7c0114c663196023` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
