# instSMulPosReflectLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ec3d94473977be4a373a36c3f8d9e2cb259f282f7d1881392ec0a2f06ddee1ec",
  "kind": "instance",
  "lexical_name": "instSMulPosReflectLE",
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
  "slug": "instsmulposreflectle--e2c0d13d14f12c30125dd592",
  "source": {
    "blob": "b03cf7f113b73ed238798c1a630f6b44cf1de1e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1199,
    "line": 1187,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant85ea8abdd4419c4aa31316091d186eecb8877fe1b2154ea1c2d579d50bf2a663.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e2c0d13d14f12c30125dd592af1f0048dcb74fa591c19adc040d67591264be87",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant85ea8abdd4419c4aa31316091d186eecb8877fe1b2154ea1c2d579d50bf2a663.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ec3d94473977be4a373a36c3f8d9e2cb259f282f7d1881392ec0a2f06ddee1ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1187–1199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instSMulPosReflectLE [SMulPosReflectLE α β] [SMulPosReflectLE α γ] :
    SMulPosReflectLE α (β × γ) where
  le_of_smul_le_smul_right _b hb _a₁ _a₂ h := by
    rcases lt_iff.mp hb with ⟨h₁, -⟩ | ⟨-, h₁⟩
    · exact le_of_smul_le_smul_right h.1 h₁
    · exact le_of_smul_le_smul_right h.2 h₁

end SMul

section SMulWithZero
variable [PartialOrder α] [PartialOrder β] [PartialOrder γ]
  [Zero β] [Zero γ] [SMulWithZero α β] [SMulWithZero α γ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant85ea8abdd4419c4aa31316091d186eecb8877fe1b2154ea1c2d579d50bf2a663.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant85ea8abdd4419c4aa31316091d186eecb8877fe1b2154ea1c2d579d50bf2a663.lean#L1187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b03cf7f113b73ed238798c1a630f6b44cf1de1e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
