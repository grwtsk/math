# isThreeCycle_sq_of_three_mem_cycleType_five

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8b6fd44157ab58b460b68f932b360e762a10660d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 279,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/966cdfa322077493f52706544b38322e4c73297da2c426008181c615d98c3092.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cb5b3254-1772-6283-2ee8-80b1bf215adc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1bc586d8-e594-dfc9-fc16-9134bb3d4139",
  "kind": "theorem",
  "lexical_name": "isThreeCycle_sq_of_three_mem_cycleType_five",
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
  "slug": "isthreecycle-sq-of-three-mem-cycletype-five--6835ea1350afb6bd265d5305",
  "source": {
    "blob": "8b6fd44157ab58b460b68f932b360e762a10660d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 279,
    "path": "GRWTSK/Algebra/GroupTheory/Alternating/Variant966cdfa322077493f52706544b38322e4c73297da2c426008181c615d98c3092.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6835ea1350afb6bd265d530590d181ad8d310dc5c54791f21163a550c22bd6a0",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Alternating/Variant966cdfa322077493f52706544b38322e4c73297da2c426008181c615d98c3092.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bc586d8-e594-dfc9-fc16-9134bb3d4139`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isThreeCycle_sq_of_three_mem_cycleType_five {g : Perm (Fin 5)} (h : 3 ∈ cycleType g) :
    IsThreeCycle (g * g) := by
  obtain ⟨c, g', rfl, hd, _, h3⟩ := mem_cycleType_iff.1 h
  simp only [mul_assoc]
  rw [hd.commute.eq, ← mul_assoc g']
  suffices hg' : orderOf g' ∣ 2 by
    rw [← pow_two, orderOf_dvd_iff_pow_eq_one.1 hg', one_mul]
    exact (card_support_eq_three_iff.1 h3).isThreeCycle_sq
  rw [← lcm_cycleType, Multiset.lcm_dvd]
  intro n hn
  rw [le_antisymm (two_le_of_mem_cycleType hn) (le_trans (le_card_support_of_mem_cycleType hn) _)]
  apply le_of_add_le_add_left
  rw [← hd.card_support_mul, h3]
  exact (c * g').support.card_le_univ

end Equiv.Perm

namespace alternatingGroup

open Equiv.Perm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Alternating/Variant966cdfa322077493f52706544b38322e4c73297da2c426008181c615d98c3092.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Alternating/Variant966cdfa322077493f52706544b38322e4c73297da2c426008181c615d98c3092.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b6fd44157ab58b460b68f932b360e762a10660d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
