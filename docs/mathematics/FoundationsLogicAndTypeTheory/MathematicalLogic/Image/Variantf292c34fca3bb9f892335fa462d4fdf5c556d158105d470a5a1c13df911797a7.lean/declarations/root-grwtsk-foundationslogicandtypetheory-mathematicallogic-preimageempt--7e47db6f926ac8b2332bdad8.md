# _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PreimageEmpty.Variantc400536ec548f823a7b981531afb4c693b94a4f74b49584eb9aa3a9fc737329f.Disjoint.of_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7f49d8f-0d29-ea34-91f1-5cc17b15537a",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PreimageEmpty.Variantc400536ec548f823a7b981531afb4c693b94a4f74b49584eb9aa3a9fc737329f.Disjoint.of_image",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-mathematicallogic-preimageempt--7e47db6f926ac8b2332bdad8",
  "source": {
    "blob": "a055e8fb749e19d52975af484fcb5a4dfb24fd4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1354,
    "line": 1350,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Image/Variantf292c34fca3bb9f892335fa462d4fdf5c556d158105d470a5a1c13df911797a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e47db6f926ac8b2332bdad8e66d23d0f9eafc24e6e0383ae5214eb68e7fda6a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Image/Variantf292c34fca3bb9f892335fa462d4fdf5c556d158105d470a5a1c13df911797a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7f49d8f-0d29-ea34-91f1-5cc17b15537a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1350–1354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PreimageEmpty.Variantc400536ec548f823a7b981531afb4c693b94a4f74b49584eb9aa3a9fc737329f.Disjoint.of_image (h : Disjoint (f '' s) (f '' t)) : Disjoint s t :=
  disjoint_iff_inf_le.mpr fun _ hx =>
    disjoint_left.1 h (mem_image_of_mem _ hx.1) (mem_image_of_mem _ hx.2)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Image/Variantf292c34fca3bb9f892335fa462d4fdf5c556d158105d470a5a1c13df911797a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Image/Variantf292c34fca3bb9f892335fa462d4fdf5c556d158105d470a5a1c13df911797a7.lean#L1350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a055e8fb749e19d52975af484fcb5a4dfb24fd4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
