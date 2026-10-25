# if_simp_congr_prop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "be070965eb3e04ecdffb915b2ac4a05be89a0199",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 397,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/be59a3a0047f0b5ea0b01bd0afa5f14f535a774c8e462c1bf045202443fcc608.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3bcfa323-f24a-e0d1-d76f-0574fda6f75f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:50dd20fb-d01c-8d17-fdd6-882263125431",
  "kind": "theorem",
  "lexical_name": "if_simp_congr_prop",
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
  "slug": "if-simp-congr-prop--7d02424569847affc8eb1584",
  "source": {
    "blob": "be070965eb3e04ecdffb915b2ac4a05be89a0199",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 404,
    "line": 397,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Logic/Variantbe59a3a0047f0b5ea0b01bd0afa5f14f535a774c8e462c1bf045202443fcc608.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d02424569847affc8eb1584989db72e3681d59d31309109f9d9d9679ab03d99",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Logic/Variantbe59a3a0047f0b5ea0b01bd0afa5f14f535a774c8e462c1bf045202443fcc608.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50dd20fb-d01c-8d17-fdd6-882263125431`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 397–404.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem if_simp_congr_prop {b c x y u v : Prop} [Decidable b] (h_c : b ↔ c) (h_t : x ↔ u)
    -- FIXME: after https://github.com/leanprover/lean4/issues/1867 is fixed,
    -- this should be changed back to:
    -- (h_e : y ↔ v) : ite b x y ↔ (ite c (h := decidable_of_decidable_of_iff h_c) u v) :=
    (h_e : y ↔ v) : ite b x y ↔ (@ite _ c (decidable_of_decidable_of_iff h_c) u v) :=
  if_ctx_simp_congr_prop h_c (λ _ => h_t) (λ _ => h_e)

-- @[congr]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Logic/Variantbe59a3a0047f0b5ea0b01bd0afa5f14f535a774c8e462c1bf045202443fcc608.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Logic/Variantbe59a3a0047f0b5ea0b01bd0afa5f14f535a774c8e462c1bf045202443fcc608.lean#L397).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be070965eb3e04ecdffb915b2ac4a05be89a0199` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
