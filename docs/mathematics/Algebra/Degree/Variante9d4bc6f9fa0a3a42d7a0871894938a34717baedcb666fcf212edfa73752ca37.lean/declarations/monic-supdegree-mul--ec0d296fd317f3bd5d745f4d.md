# Monic.supDegree_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ffc26b012b53b5d59cd75356e7b3a00ff96455de",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 546,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e9/e9d4bc6f9fa0a3a42d7a0871894938a34717baedcb666fcf212edfa73752ca37.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:22745549-c5c0-fe82-07a0-44b277adcff4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:764523dd-3d27-814a-4ac4-ecea4c44b494",
  "kind": "lemma",
  "lexical_name": "Monic.supDegree_mul",
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
  "slug": "monic-supdegree-mul--ec0d296fd317f3bd5d745f4d",
  "source": {
    "blob": "ffc26b012b53b5d59cd75356e7b3a00ff96455de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 553,
    "line": 546,
    "path": "GRWTSK/Algebra/Degree/Variante9d4bc6f9fa0a3a42d7a0871894938a34717baedcb666fcf212edfa73752ca37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec0d296fd317f3bd5d745f4d2aac6e6524db800e8aa9a90a4a1bb29ea1c449ec",
  "verification": {
    "reference": "docs/verification/Algebra/Degree/Variante9d4bc6f9fa0a3a42d7a0871894938a34717baedcb666fcf212edfa73752ca37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:764523dd-3d27-814a-4ac4-ecea4c44b494`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 546–553.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Monic.supDegree_mul
    (hD : D.Injective) (hadd : ∀ a1 a2, D (a1 + a2) = D a1 + D a2)
    (hbot : (⊥ : B) + ⊥ = ⊥) (hp : p.Monic D) (hq : q.Monic D) :
    (p * q).supDegree D = p.supDegree D + q.supDegree D := by
  cases subsingleton_or_nontrivial R
  · simp_rw [Subsingleton.eq_zero p, Subsingleton.eq_zero q, mul_zero, supDegree_zero, hbot]
  exact hq.supDegree_mul_of_ne_zero_left hD hadd hp.ne_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Degree/Variante9d4bc6f9fa0a3a42d7a0871894938a34717baedcb666fcf212edfa73752ca37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Degree/Variante9d4bc6f9fa0a3a42d7a0871894938a34717baedcb666fcf212edfa73752ca37.lean#L546).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffc26b012b53b5d59cd75356e7b3a00ff96455de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
