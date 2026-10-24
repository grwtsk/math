# iUnion_Ico_add_zsmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32193b01-90fc-f64a-ae0e-a1908a497800",
  "kind": "theorem",
  "lexical_name": "iUnion_Ico_add_zsmul",
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
  "slug": "iunion-ico-add-zsmul--cc1ef3efe6ee3ae12a2c69c9",
  "source": {
    "blob": "96c6bd96073bd2c13fa717ab32a9f9383640d5aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1425,
    "line": 1419,
    "path": "GRWTSK/Algebra/UniversalAlgebra/ToIntervalMod/Varianta5d5c8cd0d8ee106e7e9796a6a349d07008b2932a78ee4f99b26f047164f57b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc1ef3efe6ee3ae12a2c69c90e6e2531fae345fece698cc1dc779a309b94abad",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/ToIntervalMod/Varianta5d5c8cd0d8ee106e7e9796a6a349d07008b2932a78ee4f99b26f047164f57b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32193b01-90fc-f64a-ae0e-a1908a497800`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1419–1425.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iUnion_Ico_add_zsmul : ⋃ n : ℤ, Ico (a + n • p) (a + (n + 1) • p) = univ := by
  refine eq_univ_iff_forall.mpr fun b => mem_iUnion.mpr ?_
  rcases sub_toIcoDiv_zsmul_mem_Ico hp a b with ⟨hl, hr⟩
  refine ⟨toIcoDiv hp a b, ⟨le_sub_iff_add_le.mp hl, ?_⟩⟩
  rw [add_smul, one_smul, ← add_assoc]
  convert! sub_lt_iff_lt_add.mp hr using 1; abel

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/ToIntervalMod/Varianta5d5c8cd0d8ee106e7e9796a6a349d07008b2932a78ee4f99b26f047164f57b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/ToIntervalMod/Varianta5d5c8cd0d8ee106e7e9796a6a349d07008b2932a78ee4f99b26f047164f57b2.lean#L1419).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96c6bd96073bd2c13fa717ab32a9f9383640d5aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
