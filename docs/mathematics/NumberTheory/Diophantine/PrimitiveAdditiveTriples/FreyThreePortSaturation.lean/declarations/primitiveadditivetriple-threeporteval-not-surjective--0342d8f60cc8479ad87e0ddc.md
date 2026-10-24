# PrimitiveAdditiveTriple.threePortEval_not_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3229f03d-ebfa-decb-e633-b5429041cf1f",
  "kind": "theorem",
  "lexical_name": "PrimitiveAdditiveTriple.threePortEval_not_surjective",
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
  "slug": "primitiveadditivetriple-threeporteval-not-surjective--0342d8f60cc8479ad87e0ddc",
  "source": {
    "blob": "d53ae46a7f0e4224eac7c639e98ef00e414295e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 232,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0342d8f60cc8479ad87e0ddcc5f3c171fe62285222ca09cf930e7c62ab872ce0",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3229f03d-ebfa-decb-e633-b5429041cf1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PrimitiveAdditiveTriple.threePortEval_not_surjective
    (t : PrimitiveAdditiveTriple) :
    ¬ Function.Surjective t.threePortEval := by
  intro hsurj
  let y : FreyThreePortValues := ![0, 1, 0]
  obtain ⟨v, hv⟩ := hsurj y
  have hCompatible :=
    freyThreePortEval_compatible (t.a : ℤ) (t.b : ℤ) v
  change freyThreePortEval (t.a : ℤ) (t.b : ℤ) v = y at hv
  rw [hv] at hCompatible
  have hbzero : (t.b : ℤ) = 0 := by
    simpa [FreyThreePortCompatible, y] using hCompatible
  have hbne : (t.b : ℤ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt t.b_pos)
  exact hbne hbzero

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d53ae46a7f0e4224eac7c639e98ef00e414295e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
