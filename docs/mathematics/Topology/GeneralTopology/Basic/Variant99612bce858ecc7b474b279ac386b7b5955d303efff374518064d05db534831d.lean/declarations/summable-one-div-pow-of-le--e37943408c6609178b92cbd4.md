# summable_one_div_pow_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c633976a412c7d498b55d6188e811d005fd73da4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 580,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/99612bce858ecc7b474b279ac386b7b5955d303efff374518064d05db534831d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7a5fe1b4-c36f-dc97-828c-2348038b8932",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e000e2d3-3aa6-220e-1ba7-581e3059e3a9",
  "kind": "theorem",
  "lexical_name": "summable_one_div_pow_of_le",
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
  "slug": "summable-one-div-pow-of-le--e37943408c6609178b92cbd4",
  "source": {
    "blob": "c633976a412c7d498b55d6188e811d005fd73da4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 592,
    "line": 580,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant99612bce858ecc7b474b279ac386b7b5955d303efff374518064d05db534831d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e37943408c6609178b92cbd43884216318cd287abd4ffa86baafa61e92f8aa94",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant99612bce858ecc7b474b279ac386b7b5955d303efff374518064d05db534831d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e000e2d3-3aa6-220e-1ba7-581e3059e3a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 580–592.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summable_one_div_pow_of_le {m : ℝ} {f : ℕ → ℕ} (hm : 1 < m) (fi : ∀ i, i ≤ f i) :
    Summable fun i ↦ 1 / m ^ f i := by
  refine .of_nonneg_of_le (fun a ↦ by positivity) (fun a ↦ ?_)
      (summable_geometric_of_lt_one (one_div_nonneg.mpr (zero_le_one.trans hm.le))
        ((one_div_lt (zero_lt_one.trans hm) zero_lt_one).mpr (one_div_one.le.trans_lt hm)))
  rw [div_pow, one_pow]
  refine (one_div_le_one_div ?_ ?_).mpr (pow_right_mono₀ hm.le (fi a)) <;>
    exact pow_pos (zero_lt_one.trans hm) _

/-! ### Positive sequences with small sums on countable types -/


/-- For any positive `ε`, define on an encodable type a positive sequence with sum less than `ε` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant99612bce858ecc7b474b279ac386b7b5955d303efff374518064d05db534831d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant99612bce858ecc7b474b279ac386b7b5955d303efff374518064d05db534831d.lean#L580).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c633976a412c7d498b55d6188e811d005fd73da4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
