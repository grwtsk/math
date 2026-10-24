# saturation_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9458aaf-a464-83a7-f6ee-f538d1a866b8",
  "kind": "theorem",
  "lexical_name": "saturation_sound",
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
  "slug": "saturation-sound--0652ad1f79e13e1681f9bf0f",
  "source": {
    "blob": "a856e13ab46312dbcf20eb134fc54fb7da904842",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 107,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Atlas/Variant175256cab26c14cbbd56c09445e5dd0e74b190950b8fcfe55ae8a757ae5b61a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0652ad1f79e13e1681f9bf0f9fb935fb1947282216b828ca3c746f99b168c732",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Atlas/Variant175256cab26c14cbbd56c09445e5dd0e74b190950b8fcfe55ae8a757ae5b61a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9458aaf-a464-83a7-f6ee-f538d1a866b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem saturation_sound (rules : Finset (Rule α)) (seeds : Finset α)
    (meaning : α → Prop) (hseed : ∀ x ∈ seeds, meaning x)
    (hrules : ∀ rule ∈ rules,
      (∀ x ∈ rule.premises, meaning x) → meaning rule.conclusion) :
    ∀ x ∈ saturate rules seeds, meaning x := by
  classical
  have hsub : seeds ⊆ Finset.univ.filter meaning := by
    intro x hx
    exact Finset.mem_filter.mpr ⟨Finset.mem_univ x, hseed x hx⟩
  have hclosed : RuleClosed rules (Finset.univ.filter meaning) := by
    intro rule hrule hpremises
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_univ _, hrules rule hrule ?_⟩
    intro x hx
    exact (Finset.mem_filter.mp (hpremises hx)).2
  intro x hx
  exact (Finset.mem_filter.mp (saturation_least hsub hclosed hx)).2

end Saturation

section Attachment

variable (cl : ClosureOperator (Finset α))

/-- Attach an already admitted finite chart inventory using the fixed closure language. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Atlas/Variant175256cab26c14cbbd56c09445e5dd0e74b190950b8fcfe55ae8a757ae5b61a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Atlas/Variant175256cab26c14cbbd56c09445e5dd0e74b190950b8fcfe55ae8a757ae5b61a2.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a856e13ab46312dbcf20eb134fc54fb7da904842` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
