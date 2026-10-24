# instSMulPosStrictMono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:afba8a774a60ee6e91eae6becdc551a4883df85e945a43bf63f1daf761b4e2d8",
  "kind": "instance",
  "lexical_name": "instSMulPosStrictMono",
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
  "slug": "instsmulposstrictmono--ecdb12b343204978c3f24dca",
  "source": {
    "blob": "f62d4032d0ceb98b446d68433d03d93e5f26386d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1207,
    "line": 1200,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantbeec4e9d2d035afe7a3bf047041035c63cf2133f791c269c910158a36b49f41c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ecdb12b343204978c3f24dca5e3ee1e4c6d594a86c5bba5c9b775189b75de9f6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantbeec4e9d2d035afe7a3bf047041035c63cf2133f791c269c910158a36b49f41c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:afba8a774a60ee6e91eae6becdc551a4883df85e945a43bf63f1daf761b4e2d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1200–1207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instSMulPosStrictMono [SMulPosStrictMono α β] [SMulPosStrictMono α γ] :
    SMulPosStrictMono α (β × γ) where
  smul_lt_smul_of_pos_right := by
    simp_rw [lt_iff]
    rintro a (⟨h₁, h₂⟩ | ⟨h₁, h₂⟩) _b₁ _b₂ hb
    · exact .inl ⟨smul_lt_smul_of_pos_right hb h₁, smul_le_smul_of_nonneg_right hb.le h₂⟩
    · exact .inr ⟨smul_le_smul_of_nonneg_right hb.le h₁, smul_lt_smul_of_pos_right hb h₂⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantbeec4e9d2d035afe7a3bf047041035c63cf2133f791c269c910158a36b49f41c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantbeec4e9d2d035afe7a3bf047041035c63cf2133f791c269c910158a36b49f41c.lean#L1200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f62d4032d0ceb98b446d68433d03d93e5f26386d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
