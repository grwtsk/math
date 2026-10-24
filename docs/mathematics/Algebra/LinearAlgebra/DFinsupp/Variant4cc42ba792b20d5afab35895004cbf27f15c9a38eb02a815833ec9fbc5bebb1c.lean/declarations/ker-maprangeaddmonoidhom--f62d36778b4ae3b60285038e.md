# ker_mapRangeAddMonoidHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8aafa0e9767e7b18c16d149500f8919627d64644",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 306,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4cc42ba792b20d5afab35895004cbf27f15c9a38eb02a815833ec9fbc5bebb1c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e9ef3d37-5b22-0a8a-004a-84ac6b27c4c1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cca3b052-af89-3dda-2141-50b4053b4a25",
  "kind": "lemma",
  "lexical_name": "ker_mapRangeAddMonoidHom",
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
  "slug": "ker-maprangeaddmonoidhom--f62d36778b4ae3b60285038e",
  "source": {
    "blob": "8aafa0e9767e7b18c16d149500f8919627d64644",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 306,
    "path": "GRWTSK/Algebra/LinearAlgebra/DFinsupp/Variant4cc42ba792b20d5afab35895004cbf27f15c9a38eb02a815833ec9fbc5bebb1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f62d36778b4ae3b60285038ea551808438de1e5b32c4880b7fc5a0c1d51f4986",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DFinsupp/Variant4cc42ba792b20d5afab35895004cbf27f15c9a38eb02a815833ec9fbc5bebb1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cca3b052-af89-3dda-2141-50b4053b4a25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ker_mapRangeAddMonoidHom
    [∀ i, AddCommGroup (β₁ i)] [∀ i, AddCommMonoid (β₂ i)] (f : ∀ i, β₁ i →+ β₂ i) :
    (mapRange.addMonoidHom f).ker =
      (AddSubgroup.pi Set.univ (f · |>.ker)).comap coeFnAddMonoidHom :=
  AddSubgroup.toAddSubmonoid_injective <| mker_mapRangeAddMonoidHom f

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DFinsupp/Variant4cc42ba792b20d5afab35895004cbf27f15c9a38eb02a815833ec9fbc5bebb1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DFinsupp/Variant4cc42ba792b20d5afab35895004cbf27f15c9a38eb02a815833ec9fbc5bebb1c.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8aafa0e9767e7b18c16d149500f8919627d64644` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
