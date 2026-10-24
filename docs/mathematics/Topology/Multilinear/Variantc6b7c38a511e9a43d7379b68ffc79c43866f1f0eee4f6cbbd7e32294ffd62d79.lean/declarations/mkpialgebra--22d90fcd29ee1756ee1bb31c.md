# mkPiAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0caded5402991ac1a1cbaad125c4f0239b649cd7872493cff67048b71609e55b",
  "kind": "def",
  "lexical_name": "mkPiAlgebra",
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
  "slug": "mkpialgebra--22d90fcd29ee1756ee1bb31c",
  "source": {
    "blob": "35baa053296e6cf3aea9a582d8852fcb1cd52995",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 578,
    "line": 573,
    "path": "GRWTSK/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:22d90fcd29ee1756ee1bb31cc92f004b1690bcf34308fde8d2aa91d9a16f4427",
  "verification": {
    "reference": "docs/verification/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0caded5402991ac1a1cbaad125c4f0239b649cd7872493cff67048b71609e55b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 573–578.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def mkPiAlgebra : ContinuousMultilinearMap R (fun _ : ι => A) A where
  cont := continuous_finset_prod _ fun _ _ => continuous_apply _
  toMultilinearMap := MultilinearMap.mkPiAlgebra R ι A
#align continuous_multilinear_map.mk_pi_algebra ContinuousMultilinearMap.mkPiAlgebra

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean#L573).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35baa053296e6cf3aea9a582d8852fcb1cd52995` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
