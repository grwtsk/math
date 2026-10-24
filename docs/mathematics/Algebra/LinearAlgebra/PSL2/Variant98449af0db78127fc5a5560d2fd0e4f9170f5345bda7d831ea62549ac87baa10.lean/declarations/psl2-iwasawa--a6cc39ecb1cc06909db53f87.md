# PSL2.Iwasawa

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca00b9e4c21a2b5c6cb0f365329f6c11cd2b9bab2196b684e8e5867cb00a6a7c",
  "kind": "abbrev",
  "lexical_name": "PSL2.Iwasawa",
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
  "slug": "psl2-iwasawa--a6cc39ecb1cc06909db53f87",
  "source": {
    "blob": "5a0f719983184f576a1d62d5904b1a823ae9c092",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 81,
    "path": "GRWTSK/Algebra/LinearAlgebra/PSL2/Variant98449af0db78127fc5a5560d2fd0e4f9170f5345bda7d831ea62549ac87baa10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a6cc39ecb1cc06909db53f8795031fe9650b8f9d502f2fd780e22e27fb8449ea",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PSL2/Variant98449af0db78127fc5a5560d2fd0e4f9170f5345bda7d831ea62549ac87baa10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca00b9e4c21a2b5c6cb0f365329f6c11cd2b9bab2196b684e8e5867cb00a6a7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev PSL2.Iwasawa : IwasawaStructure PSL(2, F) (ℙ F (Fin 2 → F)) where
  T := PSL.iwasawaT
  is_comm p := by
    have hSL : IsMulCommutative (lineStab (F := F) (ι := Fin 2) p.submodule) := by
      rw [← Projectivization.mk_rep p, Projectivization.submodule_mk]
      exact lineStab_isMulCommutative_of_span p.rep p.rep_nonzero
    exact Subgroup.map_isMulCommutative _ _
  is_conj g p := by
    obtain ⟨g_SL, rfl⟩ := QuotientGroup.mk_surjective g
    rw [Matrix.ProjectiveSpecialLinearGroup.smul_proj_mk]
    change Subgroup.map _ _ = _
    rw [PSL.smul_submodule, Matrix.SpecialLinearGroup.lineStab_smul,
      PSL.iwasawaT_map_conj]
  is_generator := PSL.iSup_iwasawaT_eq_top

namespace SL2Simple

open Matrix.SpecialLinearGroup

/-- `commutator (PSL ι F) = ⊤`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PSL2/Variant98449af0db78127fc5a5560d2fd0e4f9170f5345bda7d831ea62549ac87baa10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PSL2/Variant98449af0db78127fc5a5560d2fd0e4f9170f5345bda7d831ea62549ac87baa10.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a0f719983184f576a1d62d5904b1a823ae9c092` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
