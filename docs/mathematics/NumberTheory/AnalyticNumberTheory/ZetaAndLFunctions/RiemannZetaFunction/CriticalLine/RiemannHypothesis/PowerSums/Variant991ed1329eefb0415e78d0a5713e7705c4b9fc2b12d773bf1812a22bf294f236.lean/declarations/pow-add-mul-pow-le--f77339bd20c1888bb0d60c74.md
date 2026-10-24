# pow_add_mul_pow_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fdcb2a79-1dc9-97d0-6314-20be9e42a462",
  "kind": "lemma",
  "lexical_name": "pow_add_mul_pow_le",
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
  "slug": "pow-add-mul-pow-le--f77339bd20c1888bb0d60c74",
  "source": {
    "blob": "56b2ec289c14eb974349c5fde527a64e55247a00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 87,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant991ed1329eefb0415e78d0a5713e7705c4b9fc2b12d773bf1812a22bf294f236.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f77339bd20c1888bb0d60c745f7e0160388829a65403b18ce6e8dbf1a7e08d36",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant991ed1329eefb0415e78d0a5713e7705c4b9fc2b12d773bf1812a22bf294f236.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fdcb2a79-1dc9-97d0-6314-20be9e42a462`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pow_add_mul_pow_le {a b : ℝ} (ha : 0 ≤ a) (hb : 0 ≤ b) :
    ∀ m : ℕ, a ^ (m + 1) + (m + 1) * a ^ m * b ≤ (a + b) ^ (m + 1)
  | 0 => by simp
  | m + 1 => by
      have ih := pow_add_mul_pow_le ha hb m
      have hab : 0 ≤ a + b := add_nonneg ha hb
      have ham : 0 ≤ a ^ m := pow_nonneg ha m
      have key : a ^ (m + 1) ≤ (a + b) ^ (m + 1) := pow_le_pow_left₀ ha (by linarith) _
      calc a ^ (m + 1 + 1) + (↑(m + 1) + 1) * a ^ (m + 1) * b
          = a * (a ^ (m + 1) + (m + 1) * a ^ m * b) + a ^ (m + 1) * b := by push_cast; ring
        _ ≤ a * (a + b) ^ (m + 1) + (a + b) ^ (m + 1) * b :=
            add_le_add (mul_le_mul_of_nonneg_left ih ha) (mul_le_mul_of_nonneg_right key hb)
        _ = (a + b) ^ (m + 1 + 1) := by ring

/-- **Chebyshev–Mertens bound for the Dirichlet powers:**  Σ_{N ≤ e^u} Λ^{∗m}(N)/N ≤ (u + mK)^m/m!. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant991ed1329eefb0415e78d0a5713e7705c4b9fc2b12d773bf1812a22bf294f236.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant991ed1329eefb0415e78d0a5713e7705c4b9fc2b12d773bf1812a22bf294f236.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56b2ec289c14eb974349c5fde527a64e55247a00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
