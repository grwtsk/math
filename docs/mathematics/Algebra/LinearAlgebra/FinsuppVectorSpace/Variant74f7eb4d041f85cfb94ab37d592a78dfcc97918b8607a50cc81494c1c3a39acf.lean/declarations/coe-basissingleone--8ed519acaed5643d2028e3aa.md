# coe_basisSingleOne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f859c85d1235de6f8a303bf5adbe385fa78aa184",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/74f7eb4d041f85cfb94ab37d592a78dfcc97918b8607a50cc81494c1c3a39acf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0c93d95e-f127-0f49-2909-ba4c5e4e8505",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b1b0ef47-943c-89cf-6a62-4ec4de0a56ac",
  "kind": "theorem",
  "lexical_name": "coe_basisSingleOne",
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
  "slug": "coe-basissingleone--8ed519acaed5643d2028e3aa",
  "source": {
    "blob": "f859c85d1235de6f8a303bf5adbe385fa78aa184",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 131,
    "path": "GRWTSK/Algebra/LinearAlgebra/FinsuppVectorSpace/Variant74f7eb4d041f85cfb94ab37d592a78dfcc97918b8607a50cc81494c1c3a39acf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ed519acaed5643d2028e3aa1aebd89737d85d02c05e1fd80b7e5b366dedf573",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FinsuppVectorSpace/Variant74f7eb4d041f85cfb94ab37d592a78dfcc97918b8607a50cc81494c1c3a39acf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1b0ef47-943c-89cf-6a62-4ec4de0a56ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_basisSingleOne : (Finsupp.basisSingleOne : ι → ι →₀ R) = fun i => Finsupp.single i 1 :=
  funext fun _ => Basis.apply_eq_iff.mpr rfl
#align finsupp.coe_basis_single_one Finsupp.coe_basisSingleOne

end Semiring

end Finsupp

/-! TODO: move this section to an earlier file. -/


namespace Basis

variable {R M n : Type*}

variable [DecidableEq n] [Fintype n]

variable [Semiring R] [AddCommMonoid M] [Module R M]

-- Porting note: looks like a diamond with Subtype.fintype
attribute [-instance] fintypePure fintypeSingleton
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FinsuppVectorSpace/Variant74f7eb4d041f85cfb94ab37d592a78dfcc97918b8607a50cc81494c1c3a39acf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FinsuppVectorSpace/Variant74f7eb4d041f85cfb94ab37d592a78dfcc97918b8607a50cc81494c1c3a39acf.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f859c85d1235de6f8a303bf5adbe385fa78aa184` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
