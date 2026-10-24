# emultiplicity_normalizedFactorsEquivSpanNormalizedFactors_symm_eq_emultiplicity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a79b324db55b900a4c86c965f46a6cfa7f456e81",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1427,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d8/d82c9d68f99afb4d3986965511707a94f7becd5af45aff413763e7684625b018.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:230f33b8-c1f9-56c3-fadd-f51f481fa6bf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a581052f-d543-4403-b096-ea719c0ddd37",
  "kind": "theorem",
  "lexical_name": "emultiplicity_normalizedFactorsEquivSpanNormalizedFactors_symm_eq_emultiplicity",
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
  "slug": "emultiplicity-normalizedfactorsequivspannormalizedfactors-symm-eq-emulti--5a053b94ef743a4b36193855",
  "source": {
    "blob": "a79b324db55b900a4c86c965f46a6cfa7f456e81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1441,
    "line": 1427,
    "path": "GRWTSK/Algebra/Ideal/Variantd82c9d68f99afb4d3986965511707a94f7becd5af45aff413763e7684625b018.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a053b94ef743a4b36193855d2d2060415f8d993d7485cd879d901d53119a6a5",
  "verification": {
    "reference": "docs/verification/Algebra/Ideal/Variantd82c9d68f99afb4d3986965511707a94f7becd5af45aff413763e7684625b018.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a581052f-d543-4403-b096-ea719c0ddd37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1427–1441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem emultiplicity_normalizedFactorsEquivSpanNormalizedFactors_symm_eq_emultiplicity {r : R}
    (hr : r ≠ 0) (I : { I : Ideal R | I ∈ normalizedFactors (Ideal.span ({r} : Set R)) }) :
    emultiplicity ((normalizedFactorsEquivSpanNormalizedFactors hr).symm I : R) r =
      emultiplicity (I : Ideal R) (Ideal.span {r}) := by
  obtain ⟨x, hx⟩ := (normalizedFactorsEquivSpanNormalizedFactors hr).surjective I
  obtain ⟨a, ha⟩ := x
  rw [hx.symm, Equiv.symm_apply_apply, Subtype.coe_mk,
    emultiplicity_normalizedFactorsEquivSpanNormalizedFactors_eq_emultiplicity hr ha]

variable [DecidableEq R] [DecidableEq (Ideal R)]

/-- The bijection between the set of prime factors of the ideal `⟨r⟩` and the set of prime factors
  of `r` preserves `count` of the corresponding multisets. See
  `multiplicity_normalizedFactorsEquivSpanNormalizedFactors_eq_multiplicity` for the version
  stated in terms of multiplicity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ideal/Variantd82c9d68f99afb4d3986965511707a94f7becd5af45aff413763e7684625b018.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ideal/Variantd82c9d68f99afb4d3986965511707a94f7becd5af45aff413763e7684625b018.lean#L1427).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a79b324db55b900a4c86c965f46a6cfa7f456e81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
