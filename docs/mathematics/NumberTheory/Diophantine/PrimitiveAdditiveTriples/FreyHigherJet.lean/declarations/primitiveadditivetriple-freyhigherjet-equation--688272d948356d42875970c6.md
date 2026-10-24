# PrimitiveAdditiveTriple.freyHigherJet_equation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a807244-f86d-aa5c-0cfa-24ee07a71a69",
  "kind": "theorem",
  "lexical_name": "PrimitiveAdditiveTriple.freyHigherJet_equation",
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
  "slug": "primitiveadditivetriple-freyhigherjet-equation--688272d948356d42875970c6",
  "source": {
    "blob": "90830ec01c368f6c6e99f945a5e4bf9be5ac4c18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 144,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyHigherJet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:688272d948356d42875970c6a2a4c9baec81be189c980e46748cf7c311a53f7b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyHigherJet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a807244-f86d-aa5c-0cfa-24ee07a71a69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PrimitiveAdditiveTriple.freyHigherJet_equation
    (t : PrimitiveAdditiveTriple) (i : Fin 3) (N : ℕ) :
    (t.freyCurve.map (algebraMap ℚ (FreyJetRing N))).toAffine.Equation
      (t.freyHigherX i N) (freyHigherParameter N) := by
  rw [WeierstrassCurve.Affine.equation_iff]
  have h := (t.freyHigherX_cubic i N).symm
  simp only [PrimitiveAdditiveTriple.freyCurve, freyWeierstrass,
    WeierstrassCurve.map, map_zero, map_sub, map_neg, map_mul, zero_mul, add_zero]
  calc
    freyHigherParameter N ^ 2 = _ := h
    _ = _ := by ring

/-- The finite levels agree under actual truncation. This is coefficient-level
coherence of one source, not merely agreement in degree or sampled values. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyHigherJet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyHigherJet.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90830ec01c368f6c6e99f945a5e4bf9be5ac4c18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
