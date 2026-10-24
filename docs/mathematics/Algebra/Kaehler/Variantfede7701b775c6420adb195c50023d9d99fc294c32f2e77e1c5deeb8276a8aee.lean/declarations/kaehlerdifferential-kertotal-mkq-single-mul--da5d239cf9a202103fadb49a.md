# KaehlerDifferential.kerTotal_mkQ_single_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3a05652a6c7cd213e3bea2b18708536e3d79a385",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 467,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fede7701b775c6420adb195c50023d9d99fc294c32f2e77e1c5deeb8276a8aee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:68f07293-7236-eb9d-8824-b9f5be4f71fa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:868aabf6-6995-b34d-1299-1c87a6d380b0",
  "kind": "theorem",
  "lexical_name": "KaehlerDifferential.kerTotal_mkQ_single_mul",
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
  "slug": "kaehlerdifferential-kertotal-mkq-single-mul--da5d239cf9a202103fadb49a",
  "source": {
    "blob": "3a05652a6c7cd213e3bea2b18708536e3d79a385",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 475,
    "line": 467,
    "path": "GRWTSK/Algebra/Kaehler/Variantfede7701b775c6420adb195c50023d9d99fc294c32f2e77e1c5deeb8276a8aee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da5d239cf9a202103fadb49a8cd62cc4a672d68ac0b81f01b494d001796d8668",
  "verification": {
    "reference": "docs/verification/Algebra/Kaehler/Variantfede7701b775c6420adb195c50023d9d99fc294c32f2e77e1c5deeb8276a8aee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:868aabf6-6995-b34d-1299-1c87a6d380b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 467–475.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem KaehlerDifferential.kerTotal_mkQ_single_mul (x y z) :
    (z𝖣x * y) = ((z * x)𝖣y) + (z * y)𝖣x := by
  rw [← map_add, eq_comm, ← sub_eq_zero, ← map_sub (Submodule.mkQ (kerTotal R S)),
    Submodule.mkQ_apply, Submodule.Quotient.mk_eq_zero]
  simp_rw [← Finsupp.smul_single_one _ z, ← @smul_eq_mul _ _ z, ← Finsupp.smul_single, ← smul_add,
    ← smul_sub]
  exact Submodule.smul_mem _ _ (Submodule.subset_span (Or.inl <| Or.inr <| ⟨⟨_, _⟩, rfl⟩))
#align kaehler_differential.ker_total_mkq_single_mul KaehlerDifferential.kerTotal_mkQ_single_mul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Kaehler/Variantfede7701b775c6420adb195c50023d9d99fc294c32f2e77e1c5deeb8276a8aee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Kaehler/Variantfede7701b775c6420adb195c50023d9d99fc294c32f2e77e1c5deeb8276a8aee.lean#L467).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a05652a6c7cd213e3bea2b18708536e3d79a385` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
