# isIso_of_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1fd3d3aeaa1a1ab4ad723a28aca67767f4cd13d1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/86246918bb0c278ec9fbc2a7308bae9c952aed5640a39815a1312695891faef6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8a1b9f27-7398-3603-3be3-97bde40c7756",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2251ce2b-ed5c-ec0b-8bad-cb1c0bf49e5c",
  "kind": "theorem",
  "lexical_name": "isIso_of_bijective",
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
  "slug": "isiso-of-bijective--b11af3b908ce041b6091cbb9",
  "source": {
    "blob": "1fd3d3aeaa1a1ab4ad723a28aca67767f4cd13d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 118,
    "path": "GRWTSK/Topology/Basic/Variant86246918bb0c278ec9fbc2a7308bae9c952aed5640a39815a1312695891faef6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b11af3b908ce041b6091cbb964d322dfec5f2c17379cf8a35e6af9d832950c21",
  "verification": {
    "reference": "docs/verification/Topology/Basic/Variant86246918bb0c278ec9fbc2a7308bae9c952aed5640a39815a1312695891faef6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2251ce2b-ed5c-ec0b-8bad-cb1c0bf49e5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIso_of_bijective {X Y : CompHaus.{u}} (f : X ⟶ Y) (bij : Function.Bijective f) :
    IsIso f := by
  let E := Equiv.ofBijective _ bij
  have hE : Continuous E.symm := by
    rw [continuous_iff_isClosed]
    intro S hS
    rw [← E.image_eq_preimage]
    exact isClosedMap f S hS
  refine' ⟨⟨⟨E.symm, hE⟩, _, _⟩⟩
  · ext x
    apply E.symm_apply_apply
  · ext x
    apply E.apply_symm_apply
set_option linter.uppercaseLean3 false in
#align CompHaus.is_iso_of_bijective CompHaus.isIso_of_bijective

/-- Any continuous bijection of compact Hausdorff spaces induces an isomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Basic/Variant86246918bb0c278ec9fbc2a7308bae9c952aed5640a39815a1312695891faef6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Basic/Variant86246918bb0c278ec9fbc2a7308bae9c952aed5640a39815a1312695891faef6.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fd3d3aeaa1a1ab4ad723a28aca67767f4cd13d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
