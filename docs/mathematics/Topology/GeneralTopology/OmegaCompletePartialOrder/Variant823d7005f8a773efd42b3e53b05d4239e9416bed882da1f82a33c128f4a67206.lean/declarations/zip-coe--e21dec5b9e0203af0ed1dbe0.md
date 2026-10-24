# zip_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:761db5d1-c3e6-1abd-45e9-27595890f8ca",
  "kind": "theorem",
  "lexical_name": "zip_coe",
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
  "slug": "zip-coe--e21dec5b9e0203af0ed1dbe0",
  "source": {
    "blob": "a61cda59f861e627e095c95b94074e82194c9ad4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 170,
    "path": "GRWTSK/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant823d7005f8a773efd42b3e53b05d4239e9416bed882da1f82a33c128f4a67206.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e21dec5b9e0203af0ed1dbe0b86a2eb361ccf2ae79949636f183cd70df1f7ce0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant823d7005f8a773efd42b3e53b05d4239e9416bed882da1f82a33c128f4a67206.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:761db5d1-c3e6-1abd-45e9-27595890f8ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem zip_coe (c₀ : Chain α) (c₁ : Chain β) (n : ℕ) : c₀.zip c₁ n = (c₀ n, c₁ n) := rfl
#align omega_complete_partial_order.chain.zip_coe OmegaCompletePartialOrder.Chain.zip_coe

end Chain

end OmegaCompletePartialOrder

open OmegaCompletePartialOrder

-- porting note: removed "set_option extends_priority 50"

/-- An omega-complete partial order is a partial order with a supremum
operation on increasing sequences indexed by natural numbers (which we
call `ωSup`). In this sense, it is strictly weaker than join complete
semi-lattices as only ω-sized totally ordered sets have a supremum.

See the definition on page 114 of [gunter1992]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant823d7005f8a773efd42b3e53b05d4239e9416bed882da1f82a33c128f4a67206.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant823d7005f8a773efd42b3e53b05d4239e9416bed882da1f82a33c128f4a67206.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a61cda59f861e627e095c95b94074e82194c9ad4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
