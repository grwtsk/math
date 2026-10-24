# one_sub_empiricalWeightFromCounts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ffa43818-2e62-421f-c504-5babb3c8e37e",
  "kind": "theorem",
  "lexical_name": "one_sub_empiricalWeightFromCounts",
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
  "slug": "one-sub-empiricalweightfromcounts--5b83386fe9261fc2eac26faa",
  "source": {
    "blob": "1c7ecfe1c265e96e1d7ed3bbe18bc9d4a5f58afc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 741,
    "line": 727,
    "path": "GRWTSK/Algebra/LinearAlgebra/CyclicPrimeWalk/Variant749e9e2a4f90bc6b4f2ef12d74d0229e6fd8ad938f084b2afdf0e3b4c304682c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b83386fe9261fc2eac26faae4722f3b4c709c1ba1941e819f01a52e302d9807",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CyclicPrimeWalk/Variant749e9e2a4f90bc6b4f2ef12d74d0229e6fd8ad938f084b2afdf0e3b4c304682c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffa43818-2e62-421f-c504-5babb3c8e37e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 727–741.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_sub_empiricalWeightFromCounts (oneCount fiveCount : ℕ)
    (h : 0 < oneCount + fiveCount) :
    1 - empiricalWeightFromCounts oneCount fiveCount =
      (fiveCount : ℝ) / ((oneCount + fiveCount : ℕ) : ℝ) := by
  have hneNat : oneCount + fiveCount ≠ 0 := Nat.ne_of_gt h
  have hne : (((oneCount + fiveCount : ℕ) : ℝ)) ≠ 0 := by
    exact_mod_cast hneNat
  unfold empiricalWeightFromCounts
  field_simp [hne]
  push_cast
  ring

/-- The exact signed count imbalance.  Natural subtraction is intentionally
avoided: the numerator lives in `ℝ` so a residue-five lead remains negative. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CyclicPrimeWalk/Variant749e9e2a4f90bc6b4f2ef12d74d0229e6fd8ad938f084b2afdf0e3b4c304682c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CyclicPrimeWalk/Variant749e9e2a4f90bc6b4f2ef12d74d0229e6fd8ad938f084b2afdf0e3b4c304682c.lean#L727).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c7ecfe1c265e96e1d7ed3bbe18bc9d4a5f58afc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
