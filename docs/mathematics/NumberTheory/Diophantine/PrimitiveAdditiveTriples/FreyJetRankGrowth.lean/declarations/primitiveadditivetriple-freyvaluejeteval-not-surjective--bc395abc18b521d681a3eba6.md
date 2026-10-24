# PrimitiveAdditiveTriple.freyValueJetEval_not_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d13e4352-2377-7102-b0ee-f0410ab373fb",
  "kind": "theorem",
  "lexical_name": "PrimitiveAdditiveTriple.freyValueJetEval_not_surjective",
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
  "slug": "primitiveadditivetriple-freyvaluejeteval-not-surjective--bc395abc18b521d681a3eba6",
  "source": {
    "blob": "8dde77d1422cd126b6e8e1d695ebd7abfa7d7b7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 180,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRankGrowth.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc395abc18b521d681a3eba68755747d9a742d073e6a004f299c57af0c98af2f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRankGrowth.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d13e4352-2377-7102-b0ee-f0410ab373fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PrimitiveAdditiveTriple.freyValueJetEval_not_surjective
    (t : PrimitiveAdditiveTriple) :
    ¬ Function.Surjective (freyValueJetEval (t.a : ℤ) (t.b : ℤ)) := by
  intro hs
  obtain ⟨v, hv⟩ := hs ![0, 1, 0, 0]
  have h0 := congrFun hv (0 : Fin 4)
  have h1 := congrFun hv (1 : Fin 4)
  have h2 := congrFun hv (2 : Fin 4)
  change v 0 = 0 at h0
  change v 0 + (t.a : ℤ) * v 1 = 1 at h1
  change v 0 - (t.b : ℤ) * v 1 = 0 at h2
  have hb : (t.b : ℤ) = 0 := by
    linear_combination -(t.b : ℤ) * h1 - (t.a : ℤ) * h2 +
      ((t.a : ℤ) + (t.b : ℤ)) * h0
  have hbne : (t.b : ℤ) ≠ 0 := by exact_mod_cast Nat.ne_of_gt t.b_pos
  exact hbne hb

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRankGrowth.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRankGrowth.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dde77d1422cd126b6e8e1d695ebd7abfa7d7b7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
