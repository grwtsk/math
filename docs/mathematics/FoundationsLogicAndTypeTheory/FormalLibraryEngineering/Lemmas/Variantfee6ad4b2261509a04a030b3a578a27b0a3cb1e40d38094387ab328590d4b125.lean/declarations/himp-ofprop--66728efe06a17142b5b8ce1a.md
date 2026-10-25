# himp_ofProp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56d7ca6a-fd2e-f8cc-5965-7ef61fd44e41",
  "kind": "theorem",
  "lexical_name": "himp_ofProp",
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
  "slug": "himp-ofprop--66728efe06a17142b5b8ce1a",
  "source": {
    "blob": "9ea8743e623ef560a3032eb51b53fa5a87ba6795",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 276,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantfee6ad4b2261509a04a030b3a578a27b0a3cb1e40d38094387ab328590d4b125.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66728efe06a17142b5b8ce1aaee55397f9720edd29b5fc060b9863ebfa32ac0d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantfee6ad4b2261509a04a030b3a578a27b0a3cb1e40d38094387ab328590d4b125.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56d7ca6a-fd2e-f8cc-5965-7ef61fd44e41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem himp_ofProp {φ₁ φ₂ : Prop} : ((⌜φ₁⌝ : l) ⇨ ⌜φ₂⌝) = ⌜φ₁ → φ₂⌝ := by
  apply rel_antisymm
  · by_cases h₁ : φ₁
    · -- φ₁ true: weaken the LHS to `(⌜φ₁⌝ ⇨ ⌜φ₂⌝) ⊓ ⌜φ₁⌝` and apply `himp_meet_le`.
      have h₁' : (⊤ : l) ⊑ ⌜φ₁⌝ := by
        have : (⌜φ₁⌝ : l) = ⊤ := ofProp_eq_top h₁
        exact this ▸ rel_refl
      exact rel_trans
        (le_meet _ _ _ rel_refl (rel_trans (le_top _) h₁'))
        (rel_trans himp_meet_le (ofProp_mono (fun h _ => h)))
    · -- φ₁ false: `⌜φ₁ → φ₂⌝ = ⊤`
      have : (⌜φ₁ → φ₂⌝ : l) = ⊤ := ofProp_eq_top (fun hp => absurd hp h₁)
      exact this ▸ le_top _
  · exact himp_ofProp_le

end Frame

/-! # Miscellaneous -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantfee6ad4b2261509a04a030b3a578a27b0a3cb1e40d38094387ab328590d4b125.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantfee6ad4b2261509a04a030b3a578a27b0a3cb1e40d38094387ab328590d4b125.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ea8743e623ef560a3032eb51b53fa5a87ba6795` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
