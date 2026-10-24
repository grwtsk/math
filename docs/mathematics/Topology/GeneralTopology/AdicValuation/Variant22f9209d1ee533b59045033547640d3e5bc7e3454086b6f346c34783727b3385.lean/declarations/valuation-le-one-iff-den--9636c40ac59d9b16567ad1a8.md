# valuation_le_one_iff_den

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1583ff39-c36f-df84-f241-affaeb7d4d7c",
  "kind": "theorem",
  "lexical_name": "valuation_le_one_iff_den",
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
  "slug": "valuation-le-one-iff-den--9636c40ac59d9b16567ad1a8",
  "source": {
    "blob": "fc35879c144dcdc3a6ac3ea530c5869201a11449",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1128,
    "line": 1121,
    "path": "GRWTSK/Topology/GeneralTopology/AdicValuation/Variant22f9209d1ee533b59045033547640d3e5bc7e3454086b6f346c34783727b3385.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9636c40ac59d9b16567ad1a88e73f478271313da73a5780f593d54f2a29b1315",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AdicValuation/Variant22f9209d1ee533b59045033547640d3e5bc7e3454086b6f346c34783727b3385.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1583ff39-c36f-df84-f241-affaeb7d4d7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1121–1128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem valuation_le_one_iff_den {𝔭 : HeightOneSpectrum R} {x : ℚ} :
    𝔭.valuation ℚ x ≤ 1 ↔ ↑x.den ∉ 𝔭.asIdeal := by
  have : CharZero R := ⟨.of_comp (f := algebraMap R ℚ) (by simpa using Nat.cast_injective)⟩
  have : (x.den : R) ≠ 0 := by simp
  simp [x.num_div_den, ← 𝔭.valuation_div_le_one_iff ℚ x.num this
    (Ideal.IsPrime.notMem_of_isCoprime_of_mem (mod_cast x.isCoprime_num_den.symm.intCast))]

end Rat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AdicValuation/Variant22f9209d1ee533b59045033547640d3e5bc7e3454086b6f346c34783727b3385.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AdicValuation/Variant22f9209d1ee533b59045033547640d3e5bc7e3454086b6f346c34783727b3385.lean#L1121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc35879c144dcdc3a6ac3ea530c5869201a11449` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
