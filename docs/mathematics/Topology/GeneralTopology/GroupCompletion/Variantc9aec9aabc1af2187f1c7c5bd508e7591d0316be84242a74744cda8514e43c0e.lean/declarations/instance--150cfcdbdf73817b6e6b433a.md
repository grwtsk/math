# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f08a12aef1f9a52b3f964adb8f4a2e7f058fb9673576a2d815046122df80b33a",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--150cfcdbdf73817b6e6b433a",
  "source": {
    "blob": "f9be7a663fae22b2cb6c343183574513a6df8f09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 131,
    "path": "GRWTSK/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:150cfcdbdf73817b6e6b433a956ab2cb8565e8d0ebdf74bf817266473363fe07",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f08a12aef1f9a52b3f964adb8f4a2e7f058fb9673576a2d815046122df80b33a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : SubNegMonoid (Completion α) :=
  { (inferInstance : AddMonoid <| Completion α),
    (inferInstance : Neg <| Completion α),
    (inferInstance : Sub <| Completion α) with
    sub_eq_add_neg := fun a b ↦
      Completion.induction_on₂ a b
        (isClosed_eq (continuous_map₂ continuous_fst continuous_snd)
          (continuous_map₂ continuous_fst (Completion.continuous_map.comp continuous_snd)))
        fun a b ↦ mod_cast congr_arg ((↑) : α → Completion α) (sub_eq_add_neg a b)
    zsmul := (· • ·)
    zsmul_zero' := fun a ↦
      Completion.induction_on a (isClosed_eq continuous_map continuous_const) fun a ↦
        show (0 : ℤ) • (a : Completion α) = 0 by rw [← coe_smul, ← coe_zero, zero_smul]
    zsmul_succ' := fun n a ↦
      Completion.induction_on a
        (isClosed_eq continuous_map <| continuous_map₂ continuous_map continuous_id) fun a ↦
          show (n.succ : ℤ) • (a : Completion α) = _ by
            rw [← coe_smul, show (n.succ : ℤ) • a = (n : ℤ) • a + a from
              SubNegMonoid.zsmul_succ' n a, coe_add, coe_smul]
    zsmul_neg' := fun n a ↦
      Completion.induction_on a
        (isClosed_eq continuous_map <| Completion.continuous_map.comp continuous_map) fun a ↦
          show (Int.negSucc n) • (a : Completion α) = _ by
            rw [← coe_smul, show (Int.negSucc n) • a = -((n.succ : ℤ) • a) from
              SubNegMonoid.zsmul_neg' n a, coe_neg, coe_smul] }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9be7a663fae22b2cb6c343183574513a6df8f09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
