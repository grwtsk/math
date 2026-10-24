# coevaluation_apply_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f05adb4c899072609ed5f6e7130c3ce990e947d4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 48,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6c43db3cd946aa1c01a8325b00e9873e684fb78d20f4c932b01290293d6cb231.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9ca28109-e501-c869-0cb7-80152d6f0272",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b754bea-5cdf-479e-a241-5427d7ff84e8",
  "kind": "theorem",
  "lexical_name": "coevaluation_apply_one",
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
  "slug": "coevaluation-apply-one--78f28f5e88a190838bede881",
  "source": {
    "blob": "f05adb4c899072609ed5f6e7130c3ce990e947d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 48,
    "path": "GRWTSK/Algebra/LinearAlgebra/Coevaluation/Variant6c43db3cd946aa1c01a8325b00e9873e684fb78d20f4c932b01290293d6cb231.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78f28f5e88a190838bede881c025f0ef497bd3f2b4720a8ed14a2e46dc0758d3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Coevaluation/Variant6c43db3cd946aa1c01a8325b00e9873e684fb78d20f4c932b01290293d6cb231.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b754bea-5cdf-479e-a241-5427d7ff84e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coevaluation_apply_one :
    (coevaluation K V) (1 : K) =
      let bV := Basis.ofVectorSpace K V
      ∑ i : Basis.ofVectorSpaceIndex K V, bV i ⊗ₜ[K] bV.coord i := by
  simp only [coevaluation, id]
  rw [(Basis.singleton Unit K).constr_apply_fintype K]
  simp only [Fintype.univ_punit, Finset.sum_const, one_smul, Basis.singleton_repr,
    Basis.equivFun_apply, Basis.coe_ofVectorSpace, one_nsmul, Finset.card_singleton]
#align coevaluation_apply_one coevaluation_apply_one

open TensorProduct

/-- This lemma corresponds to one of the coherence laws for duals in rigid categories, see
  `CategoryTheory.Monoidal.Rigid`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Coevaluation/Variant6c43db3cd946aa1c01a8325b00e9873e684fb78d20f4c932b01290293d6cb231.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Coevaluation/Variant6c43db3cd946aa1c01a8325b00e9873e684fb78d20f4c932b01290293d6cb231.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f05adb4c899072609ed5f6e7130c3ce990e947d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
