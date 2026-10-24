# haarScalarFactor_pos_of_isHaarMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2740728-ecb1-25da-5ee3-b76f1f5ead55",
  "kind": "lemma",
  "lexical_name": "haarScalarFactor_pos_of_isHaarMeasure",
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
  "slug": "haarscalarfactor-pos-of-ishaarmeasure--fde1576db1dff8a45074a85b",
  "source": {
    "blob": "39ab965024e0bac57bd24f01951a70af90276218",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 450,
    "line": 396,
    "path": "GRWTSK/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fde1576db1dff8a45074a85be71c41945728917cb925f357b0f5c4ade2f23ade",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2740728-ecb1-25da-5ee3-b76f1f5ead55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 396–450.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma haarScalarFactor_pos_of_isHaarMeasure (μ' μ : Measure G) [IsHaarMeasure μ]
    [IsHaarMeasure μ'] : 0 < haarScalarFactor μ' μ :=
  pos_iff_ne_zero.2 (fun H ↦ by simpa [H] using haarScalarFactor_eq_mul μ' μ μ')

/-!
### Uniqueness of measure of sets with compact closure

Two left invariant measures give the same measure to sets with compact closure, up to the
scalar `haarScalarFactor μ' μ`.

This is a tricky argument, typically not done in textbooks (the textbooks version all require one
version of regularity or another). Here is a sketch, based on
McQuillan's answer at https://mathoverflow.net/questions/456670/.

Assume for simplicity that all measures are normalized, so that the scalar factors are all `1`.
First, from the fact that `μ` and `μ'` integrate in the same way compactly supported functions,
they give the same measure to compact "zero sets", i.e., sets of the form `f⁻¹ {1}`
for `f` continuous and compactly supported.
See `measure_preimage_isMulLeftInvariant_eq_smul_of_hasCompactSupport`.

If `μ` is inner regular, a theorem of Halmos shows that any measurable set `s` of finite measure can
be approximated from inside by a compact zero set `k`. Then `μ s ≤ μ k + ε = μ' k + ε ≤ μ' s + ε`.
Letting `ε` tend to zero, one gets `μ s ≤ μ' s`.
See `smul_measure_isMulInvariant_le_of_isCompact_closure`.

Assume now that `s` is a measurable set of compact closure. It is contained in a compact
zero set `t`. The same argument applied to `t - s` gives `μ (t \ s) ≤ μ' (t \ s)`, i.e.,
`μ t - μ s ≤ μ' t - μ' s`. As `μ t = μ' t` (since these are zero sets), we get the inequality
`μ' s ≤ μ s`. Together with the previous one, this gives `μ' s = μ s`.
See `measure_isMulInvariant_eq_smul_of_isCompact_closure_of_innerRegularCompactLTTop`.

If neither `μ` nor `μ'` is inner regular, we can use the existence of another inner regular
left-invariant measure `ν`, so get `μ s = ν s = μ' s`, by applying twice the previous argument.
Here, the uniqueness argument uses the existence of a Haar measure with a nice behavior!
See `measure_isMulInvariant_eq_smul_of_isCompact_closure_of_measurableSet`.

Finally, if `s` has compact closure but is not measurable, its measure is the infimum of the
measures of its measurable supersets, and even of those contained in `closure s`. As `μ`
and `μ'` coincide on these supersets, this yields `μ s = μ' s`.
See `measure_isMulInvariant_eq_smul_of_isCompact_closure`.
-/

/-- Two left invariant measures give the same mass to level sets of continuous compactly supported
functions, up to the scalar `haarScalarFactor μ' μ`.

Auxiliary lemma in the proof of the more general
`measure_isMulInvariant_eq_smul_of_isCompact_closure`, which works for any set with
compact closure. -/
@[to_additive measure_preimage_isAddLeftInvariant_eq_smul_of_hasCompactSupport
"Two left invariant measures give the same mass to level sets of continuous compactly supported
functions, up to the scalar `addHaarScalarFactor μ' μ`.

Auxiliary lemma in the proof of the more general
`measure_isAddInvariant_eq_smul_of_isCompact_closure`, which works for any set with
compact closure."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean#L396).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39ab965024e0bac57bd24f01951a70af90276218` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
