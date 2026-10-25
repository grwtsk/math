# lift.principalSeg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cb671bdcf5ee9e6982b6bfeafeb6506ddd1be140d152241de70a1f809d57381c",
  "kind": "def",
  "lexical_name": "lift.principalSeg",
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
  "slug": "lift-principalseg--90e523b809a39f68d8132ef2",
  "source": {
    "blob": "adac847c6d27de399acd85f231e0beb94f8e1a1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1285,
    "line": 1254,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant4262ef41e783fc667d5d13d59bc2ec9176b08a46d49760d71349966f215208fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:90e523b809a39f68d8132ef24de2f4f9c73ebef53b3c3aa49fc6463aa79fe37d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant4262ef41e783fc667d5d13d59bc2ec9176b08a46d49760d71349966f215208fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cb671bdcf5ee9e6982b6bfeafeb6506ddd1be140d152241de70a1f809d57381c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1254–1285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def lift.principalSeg : @PrincipalSeg Ordinal.{u} Ordinal.{max (u + 1) v} (· < ·) (· < ·) :=
  ⟨↑lift.initialSeg.{u, max (u + 1) v}, univ.{u, v}, by
    refine' fun b => inductionOn b _; intro β s _
    rw [univ, ← lift_umax]; constructor <;> intro h
    · rw [← lift_id (type s)] at h ⊢
      cases' lift_type_lt.{_,_,v}.1 h with f
      cases' f with f a hf
      exists a
      revert hf
      -- Porting note: apply inductionOn does not work, refine does
      refine inductionOn a ?_
      intro α r _ hf
      refine'
        lift_type_eq.{u, max (u + 1) v, max (u + 1) v}.2
          ⟨(RelIso.ofSurjective (RelEmbedding.ofMonotone _ _) _).symm⟩
      · exact fun b => enum r (f b) ((hf _).2 ⟨_, rfl⟩)
      · refine' fun a b h => (typein_lt_typein r).1 _
        rw [typein_enum, typein_enum]
        exact f.map_rel_iff.2 h
      · intro a'
        cases' (hf _).1 (typein_lt_type _ a') with b e
        exists b
        simp
        simp [e]
    · cases' h with a e
      rw [← e]
      refine inductionOn a ?_
      intro α r _
      exact lift_type_lt.{u, u + 1, max (u + 1) v}.2 ⟨typein.principalSeg r⟩⟩
#align ordinal.lift.principal_seg Ordinal.lift.principalSeg

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant4262ef41e783fc667d5d13d59bc2ec9176b08a46d49760d71349966f215208fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant4262ef41e783fc667d5d13d59bc2ec9176b08a46d49760d71349966f215208fb.lean#L1254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adac847c6d27de399acd85f231e0beb94f8e1a1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
