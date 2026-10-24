# F_nat_le_half_split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:edb9d003-0311-053c-3855-ec3b9233bd47",
  "kind": "theorem",
  "lexical_name": "F_nat_le_half_split",
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
  "slug": "f-nat-le-half-split--f3602b208d3fbd736d5969c9",
  "source": {
    "blob": "638e99b8eec7abd7ff95b51125676c4b465db5de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 97,
    "path": "GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3602b208d3fbd736d5969c9b66f2204c936e9081e16e5a0275eb22b812e7ae1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:edb9d003-0311-053c-3855-ec3b9233bd47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem F_nat_le_half_split (k : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    HurwitzKernelBounds.F_nat k 1 (Real.exp (4 * t)) ≤
      Real.exp (-(Real.pi / 2) * Real.exp (4 * t)) *
        HurwitzKernelBounds.F_nat k 1 (1 / 2) := by
  unfold HurwitzKernelBounds.F_nat
  have hsum :=
    (HurwitzKernelBounds.summable_f_nat k 1 (Real.exp_pos (4 * t))).tsum_le_tsum
      (fun m => f_nat_le_half_split k m ht)
      ((HurwitzKernelBounds.summable_f_nat k 1
        (by norm_num : (0 : ℝ) < 1 / 2)).mul_left
          (Real.exp (-(Real.pi / 2) * Real.exp (4 * t))))
  apply hsum.trans_eq
  rw [tsum_mul_left]

/-- `A` is exactly the degree-zero weighted Gaussian sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `638e99b8eec7abd7ff95b51125676c4b465db5de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
