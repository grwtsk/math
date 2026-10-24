# IsSelfAdjoint.val_re_map_spectrum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "13e4b7d477e552f6af68f86e672a5b1eefa5b29d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc4f759b9920c7891c9e22660fe4acf0b1875649dcb538866fa76935fedbdc05.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:22069c67-42c1-505e-5a1c-416aba5413ee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:188f5390-8a79-f32f-3a4b-efde19010b52",
  "kind": "theorem",
  "lexical_name": "IsSelfAdjoint.val_re_map_spectrum",
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
  "slug": "isselfadjoint-val-re-map-spectrum--692dcad432fc3a8035970c72",
  "source": {
    "blob": "13e4b7d477e552f6af68f86e672a5b1eefa5b29d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 110,
    "path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variantfc4f759b9920c7891c9e22660fe4acf0b1875649dcb538866fa76935fedbdc05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:692dcad432fc3a8035970c72d57753679b118bfde207052dc00ddc8b90396728",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Spectrum/Variantfc4f759b9920c7891c9e22660fe4acf0b1875649dcb538866fa76935fedbdc05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:188f5390-8a79-f32f-3a4b-efde19010b52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSelfAdjoint.val_re_map_spectrum [StarModule ℂ A] {a : A} (ha : IsSelfAdjoint a) :
    spectrum ℂ a = ((↑) ∘ re '' spectrum ℂ a : Set ℂ) :=
  le_antisymm (fun z hz => ⟨z, hz, (ha.mem_spectrum_eq_re hz).symm⟩) fun z => by
    rintro ⟨z, hz, rfl⟩
    simpa only [(ha.mem_spectrum_eq_re hz).symm, Function.comp_apply] using hz
#align is_self_adjoint.coe_re_map_spectrum IsSelfAdjoint.val_re_map_spectrum

/-- The spectrum of a selfadjoint is real -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Spectrum/Variantfc4f759b9920c7891c9e22660fe4acf0b1875649dcb538866fa76935fedbdc05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Spectrum/Variantfc4f759b9920c7891c9e22660fe4acf0b1875649dcb538866fa76935fedbdc05.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13e4b7d477e552f6af68f86e672a5b1eefa5b29d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
