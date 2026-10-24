# _root_.GRWTSK.Algebra.GroupTheory.IsPreprimitiveStabilizerOfSurjective.Variant40250e52c05f75339324720b21bbecba88690cd1b44f18363656e007eb229cf7.Subgroup.isPretransitive_of_stabilizer_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68aca6e7-887a-93bd-beeb-575816a7db6d",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.GroupTheory.IsPreprimitiveStabilizerOfSurjective.Variant40250e52c05f75339324720b21bbecba88690cd1b44f18363656e007eb229cf7.Subgroup.isPretransitive_of_stabilizer_lt",
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
  "slug": "root-grwtsk-algebra-grouptheory-ispreprimitivestabilizerofsurjective-var--fa8498b0e571fdb8d4aed8ab",
  "source": {
    "blob": "ece8975cbd5117fa90122dcc7a3d6c9f944d4354",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 209,
    "path": "GRWTSK/Algebra/GroupTheory/MaximalSubgroups/Variant29d3e62120f14ca87117c433164339da1bd30d1e92407b32dad6bbb3e1ef211b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa8498b0e571fdb8d4aed8ab0a29204de76ce43369bab984f6fa1f41310f9eaa",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MaximalSubgroups/Variant29d3e62120f14ca87117c433164339da1bd30d1e92407b32dad6bbb3e1ef211b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68aca6e7-887a-93bd-beeb-575816a7db6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Algebra.GroupTheory.IsPreprimitiveStabilizerOfSurjective.Variant40250e52c05f75339324720b21bbecba88690cd1b44f18363656e007eb229cf7.Subgroup.isPretransitive_of_stabilizer_lt
    {G : Subgroup M} (hG : stabilizer M s < G)
    (moves : ∀ {s : Set α}, ∀ a ∈ s, ∀ b ∈ s, ∃ g ∈ stabilizer M s, g • a = b) :
    IsPretransitive G α := by
  apply IsPretransitive.of_partition (s := s)
  · intro a ha b hb
    obtain ⟨g, hg, rfl⟩ := moves a ha b hb
    exact ⟨⟨g, hG.le hg⟩, rfl⟩
  · intro a ha b hb
    obtain ⟨g, hg, rfl⟩ := moves a ha b hb
    rw [stabilizer_compl] at hg
    exact ⟨⟨g, hG.le hg⟩, rfl⟩
  · contrapose hG
    apply not_lt_of_ge
    --  `G ≤ stabilizer (Equiv.Perm α) s`
    have : G = Subgroup.map G.subtype ⊤ := by
      rw [Subgroup.map_top, Subgroup.range_subtype]
    rw [this, Subgroup.map_le_iff_le_comap]
    rw [show Subgroup.comap G.subtype (stabilizer M s) = stabilizer G s from rfl, hG]

end Equiv.Perm

namespace MulAction.IsBlock

open Equiv Equiv.Perm MulAction SubMulAction

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MaximalSubgroups/Variant29d3e62120f14ca87117c433164339da1bd30d1e92407b32dad6bbb3e1ef211b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MaximalSubgroups/Variant29d3e62120f14ca87117c433164339da1bd30d1e92407b32dad6bbb3e1ef211b.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ece8975cbd5117fa90122dcc7a3d6c9f944d4354` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
