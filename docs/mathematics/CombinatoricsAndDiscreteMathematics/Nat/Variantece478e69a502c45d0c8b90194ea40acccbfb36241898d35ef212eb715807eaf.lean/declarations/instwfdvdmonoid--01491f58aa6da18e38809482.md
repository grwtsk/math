# instWfDvdMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0af8400e7eb268e7adb7c52e15594855b7550ad92f65d6e96036b078ef804b92",
  "kind": "instance",
  "lexical_name": "instWfDvdMonoid",
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
  "slug": "instwfdvdmonoid--01491f58aa6da18e38809482",
  "source": {
    "blob": "24621b3f8523b160509be9f2712932cca0154a85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 30,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Nat/Variantece478e69a502c45d0c8b90194ea40acccbfb36241898d35ef212eb715807eaf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:01491f58aa6da18e3880948293297c5e5e533a4f22f365cbe084d611db37b69d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Nat/Variantece478e69a502c45d0c8b90194ea40acccbfb36241898d35ef212eb715807eaf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0af8400e7eb268e7adb7c52e15594855b7550ad92f65d6e96036b078ef804b92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instWfDvdMonoid : WfDvdMonoid ℕ where
  wf := by
    refine RelHomClass.wellFounded
      (⟨fun x : ℕ => if x = 0 then (⊤ : ℕ∞) else x, ?_⟩ : DvdNotUnit →r (· < ·)) wellFounded_lt
    intro a b h
    rcases a with - | a
    · exfalso
      revert h
      simp [DvdNotUnit]
    cases b
    · simp
    obtain ⟨h1, h2⟩ := dvd_and_not_dvd_iff.2 h
    simp only [succ_ne_zero, cast_lt, if_false]
    refine lt_of_le_of_ne (Nat.le_of_dvd (Nat.succ_pos _) h1) fun con => h2 ?_
    rw [con]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Nat/Variantece478e69a502c45d0c8b90194ea40acccbfb36241898d35ef212eb715807eaf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Nat/Variantece478e69a502c45d0c8b90194ea40acccbfb36241898d35ef212eb715807eaf.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24621b3f8523b160509be9f2712932cca0154a85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
