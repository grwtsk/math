# extAtBody_family

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9511bbf8-fe09-6a35-64c4-5ca83b70f128",
  "kind": "theorem",
  "lexical_name": "extAtBody_family",
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
  "slug": "extatbody-family--62869d4d5b9a076ca389343a",
  "source": {
    "blob": "fb5308e58a192243c9ef3819c0de9f0fe25857f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1475,
    "line": 1458,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relational/Variant8edb56fe6c7be28541fccc7bc1ea48886164f4e6c1203f2828d1a97c54ad8c17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62869d4d5b9a076ca389343abb6fc2bc83052cbc3375f8c52610214f067a2934",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relational/Variant8edb56fe6c7be28541fccc7bc1ea48886164f4e6c1203f2828d1a97c54ad8c17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9511bbf8-fe09-6a35-64c4-5ca83b70f128`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1458–1475.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extAtBody_family {i x : Expr S}
    (hi : HasType P Γ i (R.channel.predicateType R.probe.carrier)) (mi : WellModed γ i .data)
    (hx : HasType P Γ x (R.channel.logicalType R.probe.carrier)) (mx : WellModed γ x .data) :
    L.Family (R.channel.logicalType R.probe.carrier) (R.extAtBody L.code KY.code KP.code i x) := by
  intro Δ δ e y hy my
  rw [extAtBody_rename,extAtBody_instantiate]
  have hi' : HasType P Δ (i.rename e.names) ((R.rename e.names).channel.predicateType
    (R.rename e.names).probe.carrier) := by
    simpa only [p_type_rename] using e.typing hi
  have hx' : HasType P Δ (x.rename e.names) ((R.rename e.names).channel.logicalType (R.rename
    e.names).probe.carrier) := by
    simpa only [x_type_rename] using e.typing hx
  have hy' : HasType P Δ y ((R.rename e.names).channel.logicalType (R.rename
    e.names).probe.carrier) := by
    simpa only [x_type_rename] using hy
  exact (H.rename e).extStep_formula (KY.rename e) (KP.rename e) hi' (e.moded mi) hx' (e.moded
    mx) hy' my

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relational/Variant8edb56fe6c7be28541fccc7bc1ea48886164f4e6c1203f2828d1a97c54ad8c17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relational/Variant8edb56fe6c7be28541fccc7bc1ea48886164f4e6c1203f2828d1a97c54ad8c17.lean#L1458).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb5308e58a192243c9ef3819c0de9f0fe25857f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
