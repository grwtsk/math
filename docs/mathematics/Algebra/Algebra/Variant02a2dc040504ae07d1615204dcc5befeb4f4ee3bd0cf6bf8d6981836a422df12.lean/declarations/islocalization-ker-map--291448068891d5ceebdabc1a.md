# IsLocalization.ker_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "853c513c8a1ab02c663b51609adc3fb39e5f8af0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/02a2dc040504ae07d1615204dcc5befeb4f4ee3bd0cf6bf8d6981836a422df12.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ded58ef-491e-b610-9757-c2342b01b307",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1af278d7-05cd-2ca7-8b9d-e1a7e5dad7c9",
  "kind": "lemma",
  "lexical_name": "IsLocalization.ker_map",
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
  "slug": "islocalization-ker-map--291448068891d5ceebdabc1a",
  "source": {
    "blob": "853c513c8a1ab02c663b51609adc3fb39e5f8af0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 50,
    "path": "GRWTSK/Algebra/Algebra/Variant02a2dc040504ae07d1615204dcc5befeb4f4ee3bd0cf6bf8d6981836a422df12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:291448068891d5ceebdabc1af9b53772804b9f0d8a6e48cb143a5a391fd5c40a",
  "verification": {
    "reference": "docs/verification/Algebra/Algebra/Variant02a2dc040504ae07d1615204dcc5befeb4f4ee3bd0cf6bf8d6981836a422df12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1af278d7-05cd-2ca7-8b9d-e1a7e5dad7c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsLocalization.ker_map (hT : Submonoid.map g M = T) :
    RingHom.ker (IsLocalization.map Q g (hT.symm ▸ M.le_comap_map) : S →+* Q) =
      (RingHom.ker g).map (algebraMap R S) := by
  ext x
  obtain ⟨x, s, rfl⟩ := IsLocalization.mk'_surjective M x
  simp [RingHom.mem_ker, IsLocalization.map_mk', IsLocalization.mk'_eq_zero_iff,
    IsLocalization.mk'_mem_map_algebraMap_iff, ← hT]

variable (S) in
/-- The canonical linear map from the kernel of `g` to the kernel of its localization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Algebra/Variant02a2dc040504ae07d1615204dcc5befeb4f4ee3bd0cf6bf8d6981836a422df12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Algebra/Variant02a2dc040504ae07d1615204dcc5befeb4f4ee3bd0cf6bf8d6981836a422df12.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `853c513c8a1ab02c663b51609adc3fb39e5f8af0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
