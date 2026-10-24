# sup_toSubalgebra_of_isAlgebraic_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c0325a802b10a3c0cb34b9069af8356a6e8c77d1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 112,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4c3fbd1e0897b48aa533f951750bbb061cd9e7e7bea28f006e2bd44dd479475.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:18cbd8dc-7301-54ad-f357-6ef0b9965794",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c2b09c83-c6c8-6aaa-194e-bf32305385d3",
  "kind": "theorem",
  "lexical_name": "sup_toSubalgebra_of_isAlgebraic_right",
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
  "slug": "sup-tosubalgebra-of-isalgebraic-right--aa939ef616688995194b542d",
  "source": {
    "blob": "c0325a802b10a3c0cb34b9069af8356a6e8c77d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 112,
    "path": "GRWTSK/Algebra/Algebra/Variantd4c3fbd1e0897b48aa533f951750bbb061cd9e7e7bea28f006e2bd44dd479475.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa939ef616688995194b542d18c215135ac542ff7ff791918da8cff8dca67d21",
  "verification": {
    "reference": "docs/verification/Algebra/Algebra/Variantd4c3fbd1e0897b48aa533f951750bbb061cd9e7e7bea28f006e2bd44dd479475.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2b09c83-c6c8-6aaa-194e-bf32305385d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sup_toSubalgebra_of_isAlgebraic_right [Algebra.IsAlgebraic K E2] :
    (E1 ⊔ E2).toSubalgebra = E1.toSubalgebra ⊔ E2.toSubalgebra := by
  have : (adjoin E1 (E2 : Set L)).toSubalgebra = _ := adjoin_algebraic_toSubalgebra fun x h ↦
    IsAlgebraic.tower_top E1 (isAlgebraic_iff.1
      (Algebra.IsAlgebraic.isAlgebraic (⟨x, h⟩ : E2)))
  apply_fun Subalgebra.restrictScalars K at this
  rw [← restrictScalars_toSubalgebra, restrictScalars_adjoin] at this
  -- TODO: rather than using `← coe_type_toSubalgera` here, perhaps we should restate another
  -- version of `Algebra.restrictScalars_adjoin` for intermediate fields?
  simp only [← coe_type_toSubalgebra] at this
  rw [Algebra.restrictScalars_adjoin] at this
  exact this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Algebra/Variantd4c3fbd1e0897b48aa533f951750bbb061cd9e7e7bea28f006e2bd44dd479475.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Algebra/Variantd4c3fbd1e0897b48aa533f951750bbb061cd9e7e7bea28f006e2bd44dd479475.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0325a802b10a3c0cb34b9069af8356a6e8c77d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
