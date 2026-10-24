# symmetric_log_alt_form

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dbb8c95ef280735297ffb052a2684ad47c8c958e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 162,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cd70699b-1d11-0d83-ab6f-5c7a5479ccbc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:974028f9-03ac-b89c-45b8-8ab624179522",
  "kind": "theorem",
  "lexical_name": "symmetric_log_alt_form",
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
  "slug": "symmetric-log-alt-form--38c7dac864e05d9e271ab8cc",
  "source": {
    "blob": "dbb8c95ef280735297ffb052a2684ad47c8c958e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 162,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/TaoLi2/Variant8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38c7dac864e05d9e271ab8cc62f2775c360131819770974e0cd2436cd70f979e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/TaoLi2/Variant8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:974028f9-03ac-b89c-45b8-8ab624179522`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem symmetric_log_alt_form (t : ℝ) (ht_pos : 0 < t) (ht_lt : t < 1) :
    1/Real.log (1 + t) + 1/Real.log (1 - t) =
    Real.log (1 - t^2) / (Real.log (1 + t) * Real.log (1 - t)) :=
  LeanCert.Engine.TaylorModel.symmetricLogCombination_alt t ht_pos ht_lt

/-! ## Part D: The li(2) computation path

To compute li(2):
1. Split: li(2) = ∫₀^{1-ε} dt/log(t) + ∫_{1-ε}^{1+ε} dt/log(t) + ∫_{1+ε}^2 dt/log(t)
2. The middle integral is the principal value part
3. Use cancellation: ∫_{1-ε}^{1+ε} dt/log(t) = ∫₀^ε (1/log(1+u) + 1/log(1-u)) du
4. This is absolutely convergent because cancellation makes integrand O(1)

The numerical value: li(2) = Ei(log(2)) = 1.0451637801...

To verify in LeanCert:
- Verify bounds on the integrand
- Use interval integration to bound ∫₀^{0.9} du × (bounded integrand)
- This gives li(2) ∈ [1.04, 1.05] etc.
-/

-- The integrand bound we CAN verify:
-- For t ∈ [0.1, 0.9], |1/log(1+t) + 1/log(1-t)| ≤ some constant

-- Let's try a simpler approach: verify li(2) via direct integration bounds
-- ∫_2^3 dt/log(t) should be computable since no singularity

-- Log bounds on the interval [2, 3]: log(2) ≈ 0.693, log(3) ≈ 1.099
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/TaoLi2/Variant8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/TaoLi2/Variant8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbb8c95ef280735297ffb052a2684ad47c8c958e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
