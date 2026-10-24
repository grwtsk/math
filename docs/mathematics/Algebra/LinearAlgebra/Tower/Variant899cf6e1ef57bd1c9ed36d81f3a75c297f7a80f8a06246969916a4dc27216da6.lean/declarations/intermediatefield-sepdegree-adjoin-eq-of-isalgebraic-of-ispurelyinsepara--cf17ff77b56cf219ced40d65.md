# IntermediateField.sepDegree_adjoin_eq_of_isAlgebraic_of_isPurelyInseparable'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1339509ed50fd4e87fb3a975580e15238b694756",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 250,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/899cf6e1ef57bd1c9ed36d81f3a75c297f7a80f8a06246969916a4dc27216da6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4efcfb0f-ad1c-f38b-1e6f-e0c4437e5661",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:134d486c-605a-a7e4-fe98-56ae1c4c7b63",
  "kind": "theorem",
  "lexical_name": "IntermediateField.sepDegree_adjoin_eq_of_isAlgebraic_of_isPurelyInseparable'",
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
  "slug": "intermediatefield-sepdegree-adjoin-eq-of-isalgebraic-of-ispurelyinsepara--cf17ff77b56cf219ced40d65",
  "source": {
    "blob": "1339509ed50fd4e87fb3a975580e15238b694756",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 250,
    "path": "GRWTSK/Algebra/LinearAlgebra/Tower/Variant899cf6e1ef57bd1c9ed36d81f3a75c297f7a80f8a06246969916a4dc27216da6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf17ff77b56cf219ced40d650df1473daf55967608bc5b9862a464c2bea6ec70",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Tower/Variant899cf6e1ef57bd1c9ed36d81f3a75c297f7a80f8a06246969916a4dc27216da6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:134d486c-605a-a7e4-fe98-56ae1c4c7b63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IntermediateField.sepDegree_adjoin_eq_of_isAlgebraic_of_isPurelyInseparable'
    (S : IntermediateField F K) [Algebra.IsAlgebraic F S] [IsPurelyInseparable F E] :
    sepDegree E (adjoin E (S : Set K)) = sepDegree F S := by
  have : Algebra.IsAlgebraic F (adjoin F (S : Set K)) := by rwa [adjoin_self]
  have := sepDegree_adjoin_eq_of_isAlgebraic_of_isPurelyInseparable (F := F) E (S : Set K)
  rwa [adjoin_self] at this

variable {F K} in
/-- If `K / E / F` is a field extension tower, such that `E / F` is purely inseparable, then
for any element `x` of `K` separable over `F`, it has the same minimal polynomials over `F` and
over `E`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Tower/Variant899cf6e1ef57bd1c9ed36d81f3a75c297f7a80f8a06246969916a4dc27216da6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Tower/Variant899cf6e1ef57bd1c9ed36d81f3a75c297f7a80f8a06246969916a4dc27216da6.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1339509ed50fd4e87fb3a975580e15238b694756` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
