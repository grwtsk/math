# psi_le_mul_real_of_checkPsiLeMulWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d95bc5988826c1d4a98059a095c5e2aa03954cdd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1e06a10e95fd48cca0a48abad6311232464db05274465d73b4e53b712af392b6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7ab5194e-eada-4698-dbc2-304683df4552",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:61eb18a2-b40c-d6ec-5c19-99a5f70f0959",
  "kind": "theorem",
  "lexical_name": "psi_le_mul_real_of_checkPsiLeMulWith",
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
  "slug": "psi-le-mul-real-of-checkpsilemulwith--ecee99940c38460521c86709",
  "source": {
    "blob": "d95bc5988826c1d4a98059a095c5e2aa03954cdd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 100,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Psi/Variant1e06a10e95fd48cca0a48abad6311232464db05274465d73b4e53b712af392b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecee99940c38460521c86709f53c8c35b8dc686266a9df98ac98b0549c26d9ee",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Psi/Variant1e06a10e95fd48cca0a48abad6311232464db05274465d73b4e53b712af392b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61eb18a2-b40c-d6ec-5c19-99a5f70f0959`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem psi_le_mul_real_of_checkPsiLeMulWith
    (x : Real) (slope : Rat) (depth : Nat)
    (hslope : 0 <= slope) (hx : 0 < x)
    (h : checkPsiLeMulWith (Nat.floor x) slope depth = true) :
    psi x <= (slope : Real) * x := by
  have hnn : (0 : Real) <= x := le_of_lt hx
  have hNat := psi_le_of_checkPsiLeMulWith (Nat.floor x) depth slope h
  have hfloor : (Nat.floor x : Real) <= x := Nat.floor_le hnn
  have hslopeReal : (0 : Real) <= (slope : Real) := by exact_mod_cast hslope
  rw [Chebyshev.psi_eq_psi_coe_floor x]
  calc
    psi (Nat.floor x : Real) <= (slope : Real) * Nat.floor x := hNat
    _ <= (slope : Real) * x := mul_le_mul_of_nonneg_left hfloor hslopeReal

/-! ### Backwards-compatible wrappers for slope = 111/100 -/

/-- Legacy check used by downstream code: `psiUB(N) <= 1.11 * N`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Psi/Variant1e06a10e95fd48cca0a48abad6311232464db05274465d73b4e53b712af392b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Psi/Variant1e06a10e95fd48cca0a48abad6311232464db05274465d73b4e53b712af392b6.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d95bc5988826c1d4a98059a095c5e2aa03954cdd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
