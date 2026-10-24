# FinitaryExtensive.isPullback_initial_to_sigma_ι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8146e07d-c0ce-e53f-656f-c1fd6df5fb1d",
  "kind": "lemma",
  "lexical_name": "FinitaryExtensive.isPullback_initial_to_sigma_ι",
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
  "slug": "finitaryextensive-ispullback-initial-to-sigma--dcaf6e03dca6c55a16003289",
  "source": {
    "blob": "82075dc0010e2f9a041207b308dcbf88f5650573",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 532,
    "line": 527,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant0d3e1ba7cb07f66b628891b1c0d9cacb4c613d73be71fcf10a4502bb5c7115c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcaf6e03dca6c55a160032896e2490b53d925b400b63d10a394a0aa1aa68398a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant0d3e1ba7cb07f66b628891b1c0d9cacb4c613d73be71fcf10a4502bb5c7115c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8146e07d-c0ce-e53f-656f-c1fd6df5fb1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 527–532.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma FinitaryExtensive.isPullback_initial_to_sigma_ι [FinitaryExtensive C] {ι : Type*} [Finite ι]
    (X : ι → C) (i j : ι) (e : i ≠ j) :
    IsPullback (initial.to _) (initial.to _) (Sigma.ι X i) (Sigma.ι X j) :=
  FinitaryExtensive.isPullback_initial_to (coproductIsCoproduct _) ⟨i⟩ ⟨j⟩
    (ne_of_apply_ne Discrete.as e)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant0d3e1ba7cb07f66b628891b1c0d9cacb4c613d73be71fcf10a4502bb5c7115c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant0d3e1ba7cb07f66b628891b1c0d9cacb4c613d73be71fcf10a4502bb5c7115c3.lean#L527).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82075dc0010e2f9a041207b308dcbf88f5650573` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
