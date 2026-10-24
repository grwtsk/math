# instIsNilpotentSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f9c28f1ec7e4a3f76fb2ea01c47e8ebfcc37ea680c060b954934e84e05c592ee",
  "kind": "instance",
  "lexical_name": "instIsNilpotentSup",
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
  "slug": "instisnilpotentsup--82c3abd403be9a0c866347da",
  "source": {
    "blob": "574d02dcb2ea1036822381562c39880b364d5649",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 307,
    "path": "GRWTSK/Algebra/Nilpotent/Variant9c0a33273922f9ea97c80771c66088fc8f8e8e89ba4505f4721c119fd118c3aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:82c3abd403be9a0c866347dac548a6e8b52c1c9383142fe5ab399f89ca977582",
  "verification": {
    "reference": "docs/verification/Algebra/Nilpotent/Variant9c0a33273922f9ea97c80771c66088fc8f8e8e89ba4505f4721c119fd118c3aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f9c28f1ec7e4a3f76fb2ea01c47e8ebfcc37ea680c060b954934e84e05c592ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 307–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instIsNilpotentSup (M₁ M₂ : LieSubmodule R L M) [IsNilpotent L M₁] [IsNilpotent L M₂] :
    IsNilpotent L (M₁ ⊔ M₂ : LieSubmodule R L M) := by
  obtain ⟨k, hk⟩ := IsNilpotent.nilpotent R L M₁
  obtain ⟨l, hl⟩ := IsNilpotent.nilpotent R L M₂
  let lcs_eq_bot {m n} (N : LieSubmodule R L M) (le : m ≤ n) (hn : lowerCentralSeries R L N m = ⊥) :
    lowerCentralSeries R L N n = ⊥ := by
    simpa [hn] using antitone_lowerCentralSeries R L N le
  have h₁ : lowerCentralSeries R L M₁ (k ⊔ l) = ⊥ := lcs_eq_bot M₁ (Nat.le_max_left k l) hk
  have h₂ : lowerCentralSeries R L M₂ (k ⊔ l) = ⊥ := lcs_eq_bot M₂ (Nat.le_max_right k l) hl
  refine (isNilpotent_iff R L (M₁ + M₂)).mpr ⟨k ⊔ l, ?_⟩
  simp [LieSubmodule.add_eq_sup, (M₁ ⊔ M₂).lowerCentralSeries_eq_lcs_comap, LieSubmodule.lcs_sup,
    (M₁.lowerCentralSeries_eq_bot_iff_lcs_eq_bot (k ⊔ l)).1 h₁,
    (M₂.lowerCentralSeries_eq_bot_iff_lcs_eq_bot (k ⊔ l)).1 h₂, LieSubmodule.comap_incl_eq_bot]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Nilpotent/Variant9c0a33273922f9ea97c80771c66088fc8f8e8e89ba4505f4721c119fd118c3aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Nilpotent/Variant9c0a33273922f9ea97c80771c66088fc8f8e8e89ba4505f4721c119fd118c3aa.lean#L307).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `574d02dcb2ea1036822381562c39880b364d5649` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
