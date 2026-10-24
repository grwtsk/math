# isUnit_iff_norm_isUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "98a4886617f85178009de177e63ea4abb663c888",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 292,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:22d0ac66-ce01-90cf-7b0c-40d3ab26085a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:95db21ec-e3eb-e213-651a-f6ae3dc98b9f",
  "kind": "theorem",
  "lexical_name": "isUnit_iff_norm_isUnit",
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
  "slug": "isunit-iff-norm-isunit--54d9ff34d7e5f927f0d62a09",
  "source": {
    "blob": "98a4886617f85178009de177e63ea4abb663c888",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 292,
    "path": "GRWTSK/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54d9ff34d7e5f927f0d62a097ccddb0d66d05fb654f3719dd1cf92e27a58a576",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95db21ec-e3eb-e213-651a-f6ae3dc98b9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnit_iff_norm_isUnit {x : QuadraticAlgebra R a b} :
    IsUnit x ↔ IsUnit (x.norm) := by
  constructor
  · exact IsUnit.map norm
  · simp only [isUnit_iff_exists]
    rintro ⟨r, hr, hr'⟩
    rw [← C_inj (R := R) (a := a) (b := b), C_mul, C_eq_algebraMap, algebraMap_norm_eq_mul_star,
      mul_assoc, map_one] at hr
    refine ⟨_, hr, ?_⟩
    rw [mul_comm, hr]

/-- An element of `QuadraticAlgebra R a b` has norm equal to `1`
if and only if it is contained in the submonoid of unitary elements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98a4886617f85178009de177e63ea4abb663c888` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
