# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.ExtremalCombinatorics.LocalLubellYamamotoMeshalkinInequalityMul.Variant05c2766f95f98cace1ffc766537b7437d91e16f813bd924fe38ce43853c10318.IsAntichain.sperner

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb4617c0-1a00-3890-5c3d-f0ba24130d7d",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.ExtremalCombinatorics.LocalLubellYamamotoMeshalkinInequalityMul.Variant05c2766f95f98cace1ffc766537b7437d91e16f813bd924fe38ce43853c10318.IsAntichain.sperner",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-extremalcombinatorics-lo--8c3aa31650984812bd85317d",
  "source": {
    "blob": "0d4bdaf3c71ff1099b428491e8a4953c340dedb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 239,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/LYM/Variant29fc9950af677855addab1ee80416be709975663d75ce7c8f94449441e210aed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c3aa31650984812bd85317d634133401e6bf7e5401bdd1c4460ab3f9d7cc173",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/LYM/Variant29fc9950af677855addab1ee80416be709975663d75ce7c8f94449441e210aed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb4617c0-1a00-3890-5c3d-f0ba24130d7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.ExtremalCombinatorics.LocalLubellYamamotoMeshalkinInequalityMul.Variant05c2766f95f98cace1ffc766537b7437d91e16f813bd924fe38ce43853c10318.IsAntichain.sperner (h𝒜 : IsAntichain (· ⊆ ·) 𝒜.toSet) :
    #𝒜 ≤ (Fintype.card α).choose (Fintype.card α / 2) := by
  have : 0 < ((Fintype.card α).choose (Fintype.card α / 2) : ℚ≥0) :=
    Nat.cast_pos.2 <| choose_pos (Nat.div_le_self _ _)
  have h := calc
    ∑ s ∈ 𝒜, ((Fintype.card α).choose (Fintype.card α / 2) : ℚ≥0)⁻¹
    _ ≤ ∑ s ∈ 𝒜, ((Fintype.card α).choose #s : ℚ≥0)⁻¹ := by
      gcongr with s hs
      · exact mod_cast choose_pos s.card_le_univ
      · exact choose_le_middle _ _
    _ ≤ 1 := lubell_yamamoto_meshalkin_inequality_sum_inv_choose h𝒜
  simpa [mul_inv_le_iff₀' this] using h

end LYM
end Finset
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/LYM/Variant29fc9950af677855addab1ee80416be709975663d75ce7c8f94449441e210aed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/LYM/Variant29fc9950af677855addab1ee80416be709975663d75ce7c8f94449441e210aed.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d4bdaf3c71ff1099b428491e8a4953c340dedb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
