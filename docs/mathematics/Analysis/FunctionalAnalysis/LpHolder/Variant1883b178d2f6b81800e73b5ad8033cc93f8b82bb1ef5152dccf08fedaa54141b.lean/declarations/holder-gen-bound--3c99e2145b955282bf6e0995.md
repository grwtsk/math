# holder_gen_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e693760-f200-7e41-0814-fdab348a3e6f",
  "kind": "lemma",
  "lexical_name": "holder_gen_bound",
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
  "slug": "holder-gen-bound--3c99e2145b955282bf6e0995",
  "source": {
    "blob": "0abc04f3413df1771c66fd13001241ad6b9672b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 143,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/LpHolder/Variant1883b178d2f6b81800e73b5ad8033cc93f8b82bb1ef5152dccf08fedaa54141b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c99e2145b955282bf6e0995d12fc3e2c740af8762f0f4b25133b0aa59abae1d",
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

Occurrence: `result:8e693760-f200-7e41-0814-fdab348a3e6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma holder_gen_bound {e : (i : ι) → E i} {f : (i : ι) → F i}
    (hp : 0 < p.toReal) (hq : 0 < q.toReal)
    (B : (i : ι) → E i →L[𝕜] F i →L[𝕜] G i) {K C D : ℝ} (hBK : ∀ i, ‖B i‖ ≤ K)
    (hK : 0 ≤ K) (hC : 0 ≤ C) (hCe : ∀ s, ∑ i ∈ s, ‖e i‖ ^ p.toReal ≤ C)
    (hDf : ∀ s, ∑ i ∈ s, ‖f i‖ ^ q.toReal ≤ D) (s : Finset ι) :
    ∑ i ∈ s, ‖B i (e i) (f i)‖ ^ r.toReal ≤
      K ^ r.toReal * C ^ (r.toReal / p.toReal) * D ^ (r.toReal / q.toReal) := by
  have hpqr := hpqr.toReal r hp hq
  have hr := hpqr.pos'
  suffices ∑ i ∈ s, (‖e i‖ * ‖f i‖) ^ r.toReal ≤
      C ^ (r.toReal / p.toReal) * D ^ (r.toReal / q.toReal) from calc
    ∑ i ∈ s, ‖B i (e i) (f i)‖ ^ r.toReal
    _ ≤ K ^ r.toReal * ∑ i ∈ s, (‖e i‖ * ‖f i‖) ^ r.toReal := by
      rw [s.mul_sum]
      gcongr with i hi
      rw [← Real.mul_rpow (by positivity) (by positivity), ← mul_assoc]
      gcongr
      exact (B i (e i)).le_of_opNorm_le ((B i).le_of_opNorm_le (hBK i) _) _
    _ ≤ _ := by
      rw [mul_assoc]
      gcongr
  calc
    _ ≤ (∑ i ∈ s, ‖e i‖ ^ p.toReal) ^ (r.toReal / p.toReal) *
        (∑ i ∈ s, ‖f i‖ ^ q.toReal) ^ (r.toReal / q.toReal) := by
      apply Real.Lr_rpow_le_Lp_mul_Lq_of_nonneg s hpqr <;> (intros; positivity)
    _ ≤ _ := by
      gcongr
      · exact hCe s
      · exact hDf s

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/LpHolder/Variant1883b178d2f6b81800e73b5ad8033cc93f8b82bb1ef5152dccf08fedaa54141b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/LpHolder/Variant1883b178d2f6b81800e73b5ad8033cc93f8b82bb1ef5152dccf08fedaa54141b.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0abc04f3413df1771c66fd13001241ad6b9672b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
