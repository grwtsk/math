# exists_degree_le_of_mem_span_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63a43bc1-e55e-cc11-103d-4d13939c1cb5",
  "kind": "theorem",
  "lexical_name": "exists_degree_le_of_mem_span_of_finite",
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
  "slug": "exists-degree-le-of-mem-span-of-finite--45627dc81db3a44df2234dfd",
  "source": {
    "blob": "f4e78e4f0790433c5783700db0206dfab2212462",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 195,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantc3b3af2cd45158245b901152c946031d60f2515e8d20b6c2c9a3fc3fe289d66e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45627dc81db3a44df2234dfd7601e88db1d0d56cc10d089dc79f225e9d1d6e3c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variantc3b3af2cd45158245b901152c946031d60f2515e8d20b6c2c9a3fc3fe289d66e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63a43bc1-e55e-cc11-103d-4d13939c1cb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_degree_le_of_mem_span_of_finite {s : Set R[X]} (s_fin : s.Finite) (hs : s.Nonempty) :
    ∃ p' ∈ s, ∀ (p : R[X]), p ∈ Submodule.span R s → degree p ≤ degree p' := by
  obtain ⟨a, has, hmax⟩ := s_fin.exists_maximalFor degree s hs
  refine ⟨a, has, fun p hp => ?_⟩
  obtain ⟨p', hp', hpp'⟩ := exists_degree_le_of_mem_span hs hp
  exact hpp'.trans <| not_lt.1 <| not_lt_iff_le_imp_ge.2 <| hmax hp'

/-- The span of every finite set of polynomials is contained in a `degreeLE n` for some `n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variantc3b3af2cd45158245b901152c946031d60f2515e8d20b6c2c9a3fc3fe289d66e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantc3b3af2cd45158245b901152c946031d60f2515e8d20b6c2c9a3fc3fe289d66e.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4e78e4f0790433c5783700db0206dfab2212462` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
