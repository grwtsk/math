# holder_top_left_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:222cfe34-dff2-f5d6-7b17-ad1e5e1a5f6d",
  "kind": "lemma",
  "lexical_name": "holder_top_left_bound",
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
  "slug": "holder-top-left-bound--29a094d52e7e2bd93d01cc39",
  "source": {
    "blob": "0abc04f3413df1771c66fd13001241ad6b9672b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 125,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/LpHolder/Variant1883b178d2f6b81800e73b5ad8033cc93f8b82bb1ef5152dccf08fedaa54141b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29a094d52e7e2bd93d01cc39bde63276226133efa73a256a7da487d2e4ada4ac",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/LpHolder/Variant1883b178d2f6b81800e73b5ad8033cc93f8b82bb1ef5152dccf08fedaa54141b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:222cfe34-dff2-f5d6-7b17-ad1e5e1a5f6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma holder_top_left_bound
    {e : (i : ι) → E i} {f : (i : ι) → F i} (B : (i : ι) → E i →L[𝕜] F i →L[𝕜] G i)
    {K C D : ℝ} (hBK : ∀ i, ‖B i‖ ≤ K) (hK : 0 ≤ K) (hC : 0 ≤ C)
    (hCe : ∀ i, ‖e i‖ ≤ C) (hDf : ∀ s, ∑ i ∈ s, ‖f i‖ ^ q.toReal ≤ D) (s : Finset ι) :
    ∑ i ∈ s, ‖B i (e i) (f i)‖ ^ q.toReal ≤ (K * C) ^ q.toReal * D := by
  grw [← hDf s, s.mul_sum]
  apply s.sum_le_sum fun i hi ↦ ?_
  rw [← Real.mul_rpow (by positivity) (by positivity)]
  gcongr
  exact (B i (e i)).le_of_opNorm_le ((B i).le_of_opNorm_le_of_le (hBK i) (hCe i)) _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/LpHolder/Variant1883b178d2f6b81800e73b5ad8033cc93f8b82bb1ef5152dccf08fedaa54141b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/LpHolder/Variant1883b178d2f6b81800e73b5ad8033cc93f8b82bb1ef5152dccf08fedaa54141b.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0abc04f3413df1771c66fd13001241ad6b9672b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
