# map_equiv_natural

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9feb053-f0ff-33e0-d6e3-71cad3f82b9a",
  "kind": "theorem",
  "lexical_name": "map_equiv_natural",
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
  "slug": "map-equiv-natural--ce96e08527dc4084c3adc65a",
  "source": {
    "blob": "8ff2610092a1742f3d5e46683f77591d2a01592c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 143,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PositiveAtlas/Variant3c81fab67b018cc5e61477ef5d831da987c4b1b7bab5278af6bfae18385ba952.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce96e08527dc4084c3adc65a5f7e0d6cbc0a781087cd3807d718305e1457af24",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PositiveAtlas/Variant3c81fab67b018cc5e61477ef5d831da987c4b1b7bab5278af6bfae18385ba952.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9feb053-f0ff-33e0-d6e3-71cad3f82b9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_equiv_natural (R : CertificateRestriction F G)
    (p : SufficientRepresentation.{u, v₁, w₁, a} F)
    (p' : SufficientRepresentation.{u, v₁, w₁, a'} F)
    (q : SufficientRepresentation.{u, v₂, w₂, b} G)
    (q' : SufficientRepresentation.{u, v₂, w₂, b'} G)
    (hq : SufficientRepresentation.IsMinimal.{u, v₂, w₂, b, a} q)
    (hq' : SufficientRepresentation.IsMinimal.{u, v₂, w₂, b', a'} q')
    (sp : Function.Surjective p.compress)
    (ef : p.carrier ≃ p'.carrier) (ec : q.carrier ≃ q'.carrier)
    (hf : ∀ s, ef (p.compress s) = p'.compress s)
    (hc : ∀ s, ec (q.compress s) = q'.compress s) (x : p.carrier) :
    R.map p' q' hq' (ef x) = ec (R.map p q hq x) := by
  obtain ⟨s, rfl⟩ := sp x
  rw [hf, map_compress, map_compress, hc]

/-- Future-state compatibility requires actual lifts of the chosen evolution
on both certificate carriers. Snapshot sufficiency alone does not supply them. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PositiveAtlas/Variant3c81fab67b018cc5e61477ef5d831da987c4b1b7bab5278af6bfae18385ba952.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PositiveAtlas/Variant3c81fab67b018cc5e61477ef5d831da987c4b1b7bab5278af6bfae18385ba952.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ff2610092a1742f3d5e46683f77591d2a01592c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
