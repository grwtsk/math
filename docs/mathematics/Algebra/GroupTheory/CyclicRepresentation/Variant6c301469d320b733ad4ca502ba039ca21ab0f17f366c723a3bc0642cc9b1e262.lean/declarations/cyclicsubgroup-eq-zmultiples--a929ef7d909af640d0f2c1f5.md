# cyclicSubgroup_eq_zmultiples

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e823fa1a-a913-f330-dd7c-2440fe2bed92",
  "kind": "theorem",
  "lexical_name": "cyclicSubgroup_eq_zmultiples",
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
  "slug": "cyclicsubgroup-eq-zmultiples--a929ef7d909af640d0f2c1f5",
  "source": {
    "blob": "287f8bc0df446c46dd459d6c0412390bcc4ef4e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 46,
    "path": "GRWTSK/Algebra/GroupTheory/CyclicRepresentation/Variant6c301469d320b733ad4ca502ba039ca21ab0f17f366c723a3bc0642cc9b1e262.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a929ef7d909af640d0f2c1f5a988ad7de8f8a5d30e93ac221796277471898f52",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CyclicRepresentation/Variant6c301469d320b733ad4ca502ba039ca21ab0f17f366c723a3bc0642cc9b1e262.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e823fa1a-a913-f330-dd7c-2440fe2bed92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclicSubgroup_eq_zmultiples (d : Divisor M) :
    cyclicSubgroup d = AddSubgroup.zmultiples ((M / (d : ℕ) : ℕ) : ZMod M) := by
  classical
  have hle : AddSubgroup.zmultiples ((M / (d : ℕ) : ℕ) : ZMod M) ≤ cyclicSubgroup d := by
    apply AddSubgroup.zmultiples_le_of_mem
    rw [mem_cyclicSubgroup, generator_order]
  have hcard : Nat.card (cyclicSubgroup d) ≤ (d : ℕ) := by
    change Nat.card {x : ZMod M // (d : ℕ) • x = 0} ≤ (d : ℕ)
    rw [Nat.card_eq_fintype_card, Fintype.card_subtype]
    exact IsAddCyclic.card_nsmul_eq_zero_le d.pos
  apply (AddSubgroup.eq_of_le_of_card_ge hle ?_).symm
  simpa only [Nat.card_zmultiples, generator_order] using hcard

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CyclicRepresentation/Variant6c301469d320b733ad4ca502ba039ca21ab0f17f366c723a3bc0642cc9b1e262.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CyclicRepresentation/Variant6c301469d320b733ad4ca502ba039ca21ab0f17f366c723a3bc0642cc9b1e262.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `287f8bc0df446c46dd459d6c0412390bcc4ef4e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
