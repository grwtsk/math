# source_derivative_zero_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "481d78760420536b7748be1f141734ada93d4498",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 16,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5eec33c80003dc500746940117a7a4306cd1ca879726badb6d9712244f9a8185.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae5d4f46-7605-d056-dd4d-283bef5b6ded",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:45177989-ef45-ecb1-6244-c8cd3927e35c",
  "kind": "theorem",
  "lexical_name": "source_derivative_zero_right",
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
  "slug": "source-derivative-zero-right--faec4cd714c26eed4892f923",
  "source": {
    "blob": "481d78760420536b7748be1f141734ada93d4498",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 24,
    "line": 16,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSamplingDerivative/Variant5eec33c80003dc500746940117a7a4306cd1ca879726badb6d9712244f9a8185.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:faec4cd714c26eed4892f923c1e1da9d96ef0ab269afcfd5e14b3e7343baefc1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceSamplingDerivative/Variant5eec33c80003dc500746940117a7a4306cd1ca879726badb6d9712244f9a8185.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45177989-ef45-ecb1-6244-c8cd3927e35c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–24.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_derivative_zero_right (A t : ℝ) (hA : 1 ≤ A) (ht : 2 * A ≤ t) :
    deriv (sourceCorrelation explicitSecondDerivative A) t = 0 := by
  apply HasDerivWithinAt.deriv_eq_zero (s := Set.Ici t)
    ((hasDerivWithinAt_const t (Set.Ici t) (0 : ℝ)).congr_of_mem ?_ (le_refl t))
    (uniqueDiffWithinAt_Ici t)
  intro u hu
  exact sourceCorrelation_eq_zero_of_two_mul_le_abs A u (by linarith)
    ((ht.trans hu).trans (le_abs_self _))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceSamplingDerivative/Variant5eec33c80003dc500746940117a7a4306cd1ca879726badb6d9712244f9a8185.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSamplingDerivative/Variant5eec33c80003dc500746940117a7a4306cd1ca879726badb6d9712244f9a8185.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `481d78760420536b7748be1f141734ada93d4498` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
