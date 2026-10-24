# forall_exists_prime_gt_and_eq_mod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07130a1a-3bc7-2a10-f650-b4d0e2ac3dbd",
  "kind": "theorem",
  "lexical_name": "forall_exists_prime_gt_and_eq_mod",
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
  "slug": "forall-exists-prime-gt-and-eq-mod--531169b6a74b00414af29b1b",
  "source": {
    "blob": "832b79941825be780eb6d4ee618853a92dc9d96c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 457,
    "line": 450,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variantc43e3c64524b71d7ce9f514b4ee27e686b145e6a9b52d3a3d5c5f7c6be3165dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:531169b6a74b00414af29b1b58e1109f3af25bba1fe501653a175b9d43dbec3f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variantc43e3c64524b71d7ce9f514b4ee27e686b145e6a9b52d3a3d5c5f7c6be3165dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07130a1a-3bc7-2a10-f650-b4d0e2ac3dbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 450–457.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forall_exists_prime_gt_and_eq_mod (ha : IsUnit a) (n : ℕ) :
    ∃ p > n, p.Prime ∧ (p : ZMod q) = a := by
  obtain ⟨p, hp₁, hp₂⟩ := Set.infinite_iff_exists_gt.mp (infinite_setOfPred_prime_and_eq_mod ha) n
  exact ⟨p, hp₂.gt, Set.mem_ofPred.mp hp₁⟩

/-- **Dirichlet's Theorem** on primes in arithmetic progression: if `q` is a positive
integer and `a : ℤ` is coprime to `q`, then there are infinitely many prime numbers `p`
such that `p ≡ a mod q`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variantc43e3c64524b71d7ce9f514b4ee27e686b145e6a9b52d3a3d5c5f7c6be3165dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variantc43e3c64524b71d7ce9f514b4ee27e686b145e6a9b52d3a3d5c5f7c6be3165dd.lean#L450).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `832b79941825be780eb6d4ee618853a92dc9d96c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
