# inverse_cost_at_polynomial_cutoff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c6dd71c-c861-963f-5069-e7d22651bf01",
  "kind": "theorem",
  "lexical_name": "inverse_cost_at_polynomial_cutoff",
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
  "slug": "inverse-cost-at-polynomial-cutoff--8e4680360705632e71091538",
  "source": {
    "blob": "fbd89ec425e1ffc22088cda066df48734957e973",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 120,
    "path": "GRWTSK/Analysis/PrimePhaseGeometry/Variant8613b7e557c6f49af50f32dc5bf4189fdeb685a16bbffa2ee19fc6811de3aaea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e4680360705632e710915385ef21a72211d5d908ba0562f90099de27a1c6ba6",
  "verification": {
    "reference": "docs/verification/Analysis/PrimePhaseGeometry/Variant8613b7e557c6f49af50f32dc5bf4189fdeb685a16bbffa2ee19fc6811de3aaea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c6dd71c-c861-963f-5069-e7d22651bf01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inverse_cost_at_polynomial_cutoff {c C a A H : ℝ} {k : ℕ}
    (hc : 0 < c) (hC : 0 ≤ C) (ha : 0 ≤ a) (hA : 1 ≤ A)
    (hHp : 0 ≤ H) (hH : H ≤ C * A ^ a) :
    c⁻¹ * (1 + H) ^ (k : ℝ) ≤
      c⁻¹ * (1 + C) ^ (k : ℝ) * A ^ (a * k) := by
  have hbase : 1 + H ≤ (1 + C) * A ^ a := by
    have hpow : 1 ≤ A ^ a := Real.one_le_rpow hA ha
    nlinarith
  have hpow := Real.rpow_le_rpow (by positivity : 0 ≤ 1 + H) hbase
    (Nat.cast_nonneg k)
  rw [Real.mul_rpow (by positivity : 0 ≤ 1 + C)
    (Real.rpow_nonneg (by linarith : 0 ≤ A) a), ← Real.rpow_mul (by linarith : 0 ≤ A)] at hpow
  simpa [mul_assoc] using mul_le_mul_of_nonneg_left hpow (inv_nonneg.2 hc.le)

end
end GRWTSK.RiemannHypothesis.Conversation.PrimePhaseGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/PrimePhaseGeometry/Variant8613b7e557c6f49af50f32dc5bf4189fdeb685a16bbffa2ee19fc6811de3aaea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/PrimePhaseGeometry/Variant8613b7e557c6f49af50f32dc5bf4189fdeb685a16bbffa2ee19fc6811de3aaea.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbd89ec425e1ffc22088cda066df48734957e973` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
