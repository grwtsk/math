# saturated_iff_zpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85a432f0-a1b1-f75f-fc02-ff4e635d39af",
  "kind": "theorem",
  "lexical_name": "saturated_iff_zpow",
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
  "slug": "saturated-iff-zpow--52aaf3ed3674fdc043488ac8",
  "source": {
    "blob": "8b8e0f8bb625d5f792c891f81637379b0d1522e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 44,
    "path": "GRWTSK/Algebra/GroupTheory/Saturated/Variant508a5c0dee194d826cedbc506a743e37ea69f8157e1403bb3d4b96637c012938.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52aaf3ed3674fdc043488ac8ac92b9fdca36f85685540df46d84a087fcf3ef31",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Saturated/Variant508a5c0dee194d826cedbc506a743e37ea69f8157e1403bb3d4b96637c012938.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85a432f0-a1b1-f75f-fc02-ff4e635d39af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem saturated_iff_zpow {H : Subgroup G} :
    Saturated H ↔ ∀ (n : ℤ) (g : G), g ^ n ∈ H → n = 0 ∨ g ∈ H := by
  constructor
  · intros hH n g hgn
    cases n with
    | ofNat n =>
      simp only [Int.natCast_eq_zero, Int.ofNat_eq_coe, zpow_natCast] at hgn ⊢
      exact hH hgn
    | negSucc n =>
      suffices g ^ (n + 1) ∈ H by
        refine (hH this).imp ?_ id
        simp only [IsEmpty.forall_iff, Nat.succ_ne_zero]
      simpa only [inv_mem_iff, zpow_negSucc] using hgn
  · intro h n g hgn
    specialize h n g
    simp only [Int.natCast_eq_zero, zpow_natCast] at h
    apply h hgn

end Subgroup

namespace AddSubgroup

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Saturated/Variant508a5c0dee194d826cedbc506a743e37ea69f8157e1403bb3d4b96637c012938.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Saturated/Variant508a5c0dee194d826cedbc506a743e37ea69f8157e1403bb3d4b96637c012938.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b8e0f8bb625d5f792c891f81637379b0d1522e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
