# coe_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5b68557e5d7ca3d315137821baaf8ace708ad726",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 355,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a574660c-72e4-f48f-db0c-a7cc1661b02e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9a17df70-da8b-cd13-fd2d-69897d307420",
  "kind": "theorem",
  "lexical_name": "coe_surjective",
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
  "slug": "coe-surjective--2affeb62601eeafaeeb0343e",
  "source": {
    "blob": "5b68557e5d7ca3d315137821baaf8ace708ad726",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 355,
    "path": "GRWTSK/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2affeb62601eeafaeeb0343efcb7d0a83ccffaf780f94c66687346700cfca0e4",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a17df70-da8b-cd13-fd2d-69897d307420`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 355–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem coe_surjective : Surjective ((↑) : FreeRing α → FreeCommRing α) := fun x => by
  induction x with
  | neg_one => use -1; rfl
  | of b => exact ⟨FreeRing.of b, rfl⟩
  | add _ _ hx hy =>
    rcases hx with ⟨x, rfl⟩; rcases hy with ⟨y, rfl⟩
    exact ⟨x + y, (FreeRing.lift _).map_add _ _⟩
  | mul _ _ hx hy =>
    rcases hx with ⟨x, rfl⟩; rcases hy with ⟨y, rfl⟩
    exact ⟨x * y, (FreeRing.lift _).map_mul _ _⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean#L355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b68557e5d7ca3d315137821baaf8ace708ad726` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
