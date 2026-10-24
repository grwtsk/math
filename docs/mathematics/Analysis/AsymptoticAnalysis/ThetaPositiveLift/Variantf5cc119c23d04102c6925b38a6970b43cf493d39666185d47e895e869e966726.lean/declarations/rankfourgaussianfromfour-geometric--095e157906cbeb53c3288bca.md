# rankFourGaussianFromFour_geometric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ed29d78-f557-4c85-4880-0f8252d47e77",
  "kind": "theorem",
  "lexical_name": "rankFourGaussianFromFour_geometric",
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
  "slug": "rankfourgaussianfromfour-geometric--095e157906cbeb53c3288bca",
  "source": {
    "blob": "53f7e80df93e1e728d9a6fcf39b42acfafbc9445",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 227,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantf5cc119c23d04102c6925b38a6970b43cf493d39666185d47e895e869e966726.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:095e157906cbeb53c3288bcafe4c6d0e763d85969c971d19f6e5a779490f110b",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantf5cc119c23d04102c6925b38a6970b43cf493d39666185d47e895e869e966726.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ed29d78-f557-4c85-4880-0f8252d47e77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem rankFourGaussianFromFour_geometric
    {A : ℝ} (hA : 3 ≤ A)
    (p : ℕ) (hp : p ≤ 16) (m : ℕ) :
    rankFourGaussianFromFour A p m ≤
      rankFourGaussianFromFour A p 0 *
        (1 / 2 : ℝ) ^ m := by
  induction m with
  | zero => simp
  | succ m ih =>
      calc
        _ ≤ (1 / 2) *
            rankFourGaussianFromFour A p m :=
          rankFourGaussianFromFour_succ_le
            hA p hp m
        _ ≤ (1 / 2) *
            (rankFourGaussianFromFour A p 0 *
              (1 / 2 : ℝ) ^ m) :=
          mul_le_mul_of_nonneg_left
            ih (by norm_num)
        _ = _ := by
          rw [pow_succ]
          ring

/-- Every shifted n >= 4 Gaussian moment through degree sixteen converges. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantf5cc119c23d04102c6925b38a6970b43cf493d39666185d47e895e869e966726.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantf5cc119c23d04102c6925b38a6970b43cf493d39666185d47e895e869e966726.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53f7e80df93e1e728d9a6fcf39b42acfafbc9445` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
