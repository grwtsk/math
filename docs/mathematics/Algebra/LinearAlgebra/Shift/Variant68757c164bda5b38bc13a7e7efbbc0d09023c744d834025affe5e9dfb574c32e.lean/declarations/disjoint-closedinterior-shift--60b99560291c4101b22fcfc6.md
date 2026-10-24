# disjoint_closedInterior_shift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2149d93f-921c-29f1-982a-699d4719b77b",
  "kind": "theorem",
  "lexical_name": "disjoint_closedInterior_shift",
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
  "slug": "disjoint-closedinterior-shift--60b99560291c4101b22fcfc6",
  "source": {
    "blob": "631de5e102c49fb2f5e6a80323906c2318aab9c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 222,
    "path": "GRWTSK/Algebra/LinearAlgebra/Shift/Variant68757c164bda5b38bc13a7e7efbbc0d09023c744d834025affe5e9dfb574c32e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60b99560291c4101b22fcfc6e9b3a22a44c5d4b615d71a439b298e7c63118f8b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Shift/Variant68757c164bda5b38bc13a7e7efbbc0d09023c744d834025affe5e9dfb574c32e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2149d93f-921c-29f1-982a-699d4719b77b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem disjoint_closedInterior_shift {x : k} (hx : x < 0 ∨ 1 < x) :
    Disjoint s.closedInterior <| (affineSpan k (s.points '' {i}ᶜ)).shift (s.points i) x := by
  refine Set.disjoint_left.mpr fun p hleft hright ↦ ?_
  obtain ⟨w, hw, rfl⟩ := eq_affineCombination_of_mem_affineSpan_of_fintype <|
    s.closedInterior_subset_affineSpan hleft
  rw [SetLike.mem_coe, s.independent.affineCombination_mem_shift_iff i hw] at hright
  rw [affineCombination_mem_closedInterior_iff hw] at hleft
  grind

end Ring

section Field
variable [Field k] [LinearOrder k] [IsOrderedRing k] [AddCommGroup V] [Module k V] [AddTorsor V P]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Shift/Variant68757c164bda5b38bc13a7e7efbbc0d09023c744d834025affe5e9dfb574c32e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Shift/Variant68757c164bda5b38bc13a7e7efbbc0d09023c744d834025affe5e9dfb574c32e.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `631de5e102c49fb2f5e6a80323906c2318aab9c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
