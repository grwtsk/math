# iteratedDeriv_eq_zero_of_notMem_tsupport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0acd1b4c-6108-0c5d-a38e-e4c3e64269ba",
  "kind": "lemma",
  "lexical_name": "iteratedDeriv_eq_zero_of_notMem_tsupport",
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
  "slug": "iteratedderiv-eq-zero-of-notmem-tsupport--b4ab722807a0c539ca290080",
  "source": {
    "blob": "d3962dde4483a2918717b0ecc4424aa8dde52a03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 101,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4ab722807a0c539ca2900801d148c6dbad05e96a9dcaf3becc060561c23d436",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0acd1b4c-6108-0c5d-a38e-e4c3e64269ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma iteratedDeriv_eq_zero_of_notMem_tsupport
    {f : ℝ → ℂ} {x : ℝ} (hx : x ∉ tsupport f) (n : ℕ) :
    iteratedDeriv n f x = 0 := by
  have hzero : iteratedFDeriv ℝ n f x = 0 := by
    rw [← Function.notMem_support]
    intro hx'
    exact hx (support_iteratedFDeriv_subset n hx')
  rw [iteratedDeriv_eq_iteratedFDeriv, hzero]
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3962dde4483a2918717b0ecc4424aa8dde52a03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
