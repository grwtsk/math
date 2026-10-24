# thetaTailSignRegular_two_of_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dace7e19-fc4e-3429-e658-1bb26e94bbf7",
  "kind": "theorem",
  "lexical_name": "thetaTailSignRegular_two_of_succ",
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
  "slug": "thetatailsignregular-two-of-succ--7a67988658185f383292e5ef",
  "source": {
    "blob": "d5a07773f14a50274546f52bde78b755d3ec982c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 56,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Ac008ffe3ec785aa43fdda874f5d15c73170fe65f10d1976cf72a07fdb4d25fdProductsConditio/Variant70f4ad3329bbdc8235d66c359f06302b1e5735b0a137b248648b98f473aaade6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a67988658185f383292e5efcee82575e79f99b1c1f4e1f18f4c0e848d8e290d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Ac008ffe3ec785aa43fdda874f5d15c73170fe65f10d1976cf72a07fdb4d25fdProductsConditio/Variant70f4ad3329bbdc8235d66c359f06302b1e5735b0a137b248648b98f473aaade6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dace7e19-fc4e-3429-e658-1bb26e94bbf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaTailSignRegular_two_of_succ
    (q : Fin 2 ↪o ℕ) (t : Fin 2 ↪o ℝ) (ht : ∀ i, 0 ≤ t i) :
    0 ≤ (-1 : ℝ) ^ (2 * (2 - 1) / 2) *
      Matrix.det (fun i j => thetaTail (2 * q i) (t j)) := by
  apply (thetaTailSignRegular_two_iff_ratio q t ht).mpr
  have hq : 2 * q 0 ≤ 2 * q 1 :=
    Nat.mul_le_mul_left 2 (q.monotone (by decide : (0 : Fin 2) ≤ 1))
  exact thetaTail_div_antitone_of_succ hsucc hq (ht 0) (ht 1)
    (t.monotone (by decide : (0 : Fin 2) ≤ 1))

end ConditionalAssembly
end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift

open FormalResearch.RiemannHypothesis.ThetaPositiveLift
#check thetaTail_ratio_eq_product
#check thetaTail_ratio_product_antitone_of_succ
#check thetaTail_div_antitone_of_succ
#check thetaTailSignRegular_two_of_succ
#print axioms thetaTail_ratio_eq_product
#print axioms thetaTail_ratio_product_antitone_of_succ
#print axioms thetaTail_div_antitone_of_succ
#print axioms thetaTailSignRegular_two_of_succ
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Ac008ffe3ec785aa43fdda874f5d15c73170fe65f10d1976cf72a07fdb4d25fdProductsConditio/Variant70f4ad3329bbdc8235d66c359f06302b1e5735b0a137b248648b98f473aaade6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Ac008ffe3ec785aa43fdda874f5d15c73170fe65f10d1976cf72a07fdb4d25fdProductsConditio/Variant70f4ad3329bbdc8235d66c359f06302b1e5735b0a137b248648b98f473aaade6.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5a07773f14a50274546f52bde78b755d3ec982c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
