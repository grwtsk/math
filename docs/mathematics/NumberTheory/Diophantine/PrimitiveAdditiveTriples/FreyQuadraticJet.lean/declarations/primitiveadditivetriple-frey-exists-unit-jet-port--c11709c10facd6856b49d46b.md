# PrimitiveAdditiveTriple.frey_exists_unit_jet_port

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:afa389c5-b19f-5900-a9ca-815f133df365",
  "kind": "theorem",
  "lexical_name": "PrimitiveAdditiveTriple.frey_exists_unit_jet_port",
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
  "slug": "primitiveadditivetriple-frey-exists-unit-jet-port--c11709c10facd6856b49d46b",
  "source": {
    "blob": "98bafa6013820f49daa306e1dda04dd52056bec8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 205,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c11709c10facd6856b49d46b6fa977c6e4710fd5120eea9e0f6407dbd2741291",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afa389c5-b19f-5900-a9ca-815f133df365`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PrimitiveAdditiveTriple.frey_exists_unit_jet_port
    (t : PrimitiveAdditiveTriple) (p : ℕ) [Fact p.Prime] :
    ∃ i : Fin 3, IsUnit (t.freyPortJacobian i : ZMod p) := by
  have hab := t.freyResidueParameters_nonzero p
  by_cases ha : (t.a : ZMod p) = 0
  · have hb : (t.b : ZMod p) ≠ 0 := hab.resolve_left (not_not.mpr ha)
    refine ⟨2, isUnit_iff_ne_zero.mpr ?_⟩
    simpa [PrimitiveAdditiveTriple.freyPortJacobian, ha] using mul_ne_zero hb hb
  · by_cases hb : (t.b : ZMod p) = 0
    · refine ⟨1, isUnit_iff_ne_zero.mpr ?_⟩
      simpa [PrimitiveAdditiveTriple.freyPortJacobian, hb] using mul_ne_zero ha ha
    · refine ⟨0, isUnit_iff_ne_zero.mpr ?_⟩
      simpa [PrimitiveAdditiveTriple.freyPortJacobian] using
        mul_ne_zero (neg_ne_zero.mpr ha) hb

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98bafa6013820f49daa306e1dda04dd52056bec8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
