# lfpApprox_mem_fixedPoints_of_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5d1840e-ce52-ea4b-0084-0865ecff456c",
  "kind": "lemma",
  "lexical_name": "lfpApprox_mem_fixedPoints_of_eq",
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
  "slug": "lfpapprox-mem-fixedpoints-of-eq--abb2859171f1b101ac51fa9a",
  "source": {
    "blob": "e55448352e84647d33d972e5de14c74794f8e3a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 190,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant01e170a01b1d4e200668aa5fe87f959f13d6024c0d3fd219a745958098f16e8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abb2859171f1b101ac51fa9ac2f55df6e6b0f7c1bd19111e9cefb48608668fa0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant01e170a01b1d4e200668aa5fe87f959f13d6024c0d3fd219a745958098f16e8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5d1840e-ce52-ea4b-0084-0865ecff456c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lfpApprox_mem_fixedPoints_of_eq {a b c : Ordinal}
    (h_init : x ≤ f x) (h_ab : a < b) (h_ac : a ≤ c) (h_fab : lfpApprox f x a = lfpApprox f x b) :
    lfpApprox f x c ∈ fixedPoints f := by
  have lfpApprox_mem_fixedPoint :
      lfpApprox f x a ∈ fixedPoints f := by
    rw [mem_fixedPoints_iff, ← lfpApprox_add_one f x h_init]
    exact Monotone.eq_of_le_of_le (lfpApprox_monotone f x)
      h_fab (SuccOrder.le_succ a) (SuccOrder.succ_le_of_lt h_ab)
  rw [lfpApprox_eq_of_mem_fixedPoints f x h_init]
  · exact lfpApprox_mem_fixedPoint
  · exact h_ac
  · exact lfpApprox_mem_fixedPoint

/-- The approximation at the index of the successor of the domain's cardinality is a fixed point -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant01e170a01b1d4e200668aa5fe87f959f13d6024c0d3fd219a745958098f16e8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant01e170a01b1d4e200668aa5fe87f959f13d6024c0d3fd219a745958098f16e8f.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e55448352e84647d33d972e5de14c74794f8e3a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
