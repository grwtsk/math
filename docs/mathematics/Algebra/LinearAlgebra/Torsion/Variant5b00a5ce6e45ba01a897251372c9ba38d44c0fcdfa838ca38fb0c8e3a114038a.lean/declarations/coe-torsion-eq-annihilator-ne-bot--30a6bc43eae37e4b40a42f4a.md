# coe_torsion_eq_annihilator_ne_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba303b7a-fb9a-0e2b-f844-d76d7a34500e",
  "kind": "theorem",
  "lexical_name": "coe_torsion_eq_annihilator_ne_bot",
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
  "slug": "coe-torsion-eq-annihilator-ne-bot--30a6bc43eae37e4b40a42f4a",
  "source": {
    "blob": "c6c2b3964fef8160f053423876017d6a04bff75f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 710,
    "line": 700,
    "path": "GRWTSK/Algebra/LinearAlgebra/Torsion/Variant5b00a5ce6e45ba01a897251372c9ba38d44c0fcdfa838ca38fb0c8e3a114038a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30a6bc43eae37e4b40a42f4a27cee52a95da904f8a21db0bd14705f7f71ea00b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Torsion/Variant5b00a5ce6e45ba01a897251372c9ba38d44c0fcdfa838ca38fb0c8e3a114038a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba303b7a-fb9a-0e2b-f844-d76d7a34500e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 700–710.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_torsion_eq_annihilator_ne_bot :
    (torsion R M : Set M) = { x : M | (R ∙ x).annihilator ≠ ⊥ } := by
  ext x; simp_rw [Submodule.ne_bot_iff, mem_annihilator, mem_span_singleton]
  exact
    ⟨fun ⟨a, hax⟩ =>
      ⟨a, fun _ ⟨b, hb⟩ => by rw [← hb, smul_comm, ← Submonoid.smul_def, hax, smul_zero],
        nonZeroDivisors.coe_ne_zero _⟩,
      fun ⟨a, hax, ha⟩ => ⟨⟨_, mem_nonZeroDivisors_of_ne_zero ha⟩, hax x ⟨1, one_smul _ _⟩⟩⟩
#align submodule.coe_torsion_eq_annihilator_ne_bot Submodule.coe_torsion_eq_annihilator_ne_bot

/-- A module over a domain has `NoZeroSMulDivisors` iff its torsion submodule is trivial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Torsion/Variant5b00a5ce6e45ba01a897251372c9ba38d44c0fcdfa838ca38fb0c8e3a114038a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Torsion/Variant5b00a5ce6e45ba01a897251372c9ba38d44c0fcdfa838ca38fb0c8e3a114038a.lean#L700).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6c2b3964fef8160f053423876017d6a04bff75f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
