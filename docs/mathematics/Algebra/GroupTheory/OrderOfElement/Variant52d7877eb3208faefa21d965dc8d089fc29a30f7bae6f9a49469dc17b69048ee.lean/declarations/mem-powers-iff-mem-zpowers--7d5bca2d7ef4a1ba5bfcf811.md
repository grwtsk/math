# mem_powers_iff_mem_zpowers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ceed942-e20c-6a6b-010a-3c9b6d6d701f",
  "kind": "theorem",
  "lexical_name": "mem_powers_iff_mem_zpowers",
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
  "slug": "mem-powers-iff-mem-zpowers--7d5bca2d7ef4a1ba5bfcf811",
  "source": {
    "blob": "0d101091ab1504629c78ea2898c51d7a248b9357",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 829,
    "line": 819,
    "path": "GRWTSK/Algebra/GroupTheory/OrderOfElement/Variant52d7877eb3208faefa21d965dc8d089fc29a30f7bae6f9a49469dc17b69048ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d5bca2d7ef4a1ba5bfcf81187a5f24b0b6b93ac355524aec6b50e7bbb40d927",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/OrderOfElement/Variant52d7877eb3208faefa21d965dc8d089fc29a30f7bae6f9a49469dc17b69048ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ceed942-e20c-6a6b-010a-3c9b6d6d701f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 819–829.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_powers_iff_mem_zpowers [Finite G] : y ∈ Submonoid.powers x ↔ y ∈ zpowers x :=
  ⟨fun ⟨n, hn⟩ => ⟨n, by simp_all⟩, fun ⟨i, hi⟩ =>
    ⟨(i % orderOf x).natAbs, by
      dsimp only
      rwa [← zpow_ofNat,
        Int.natAbs_of_nonneg (Int.emod_nonneg _ (Int.coe_nat_ne_zero_iff_pos.2 (orderOf_pos x))), ←
        zpow_eq_mod_orderOf]⟩⟩
#align mem_powers_iff_mem_zpowers mem_powers_iff_mem_zpowers
#align mem_multiples_iff_mem_zmultiples mem_multiples_iff_mem_zmultiples

@[to_additive multiples_eq_zmultiples]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/OrderOfElement/Variant52d7877eb3208faefa21d965dc8d089fc29a30f7bae6f9a49469dc17b69048ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/OrderOfElement/Variant52d7877eb3208faefa21d965dc8d089fc29a30f7bae6f9a49469dc17b69048ee.lean#L819).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d101091ab1504629c78ea2898c51d7a248b9357` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
