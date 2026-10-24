# preservesLoci_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dfe8e3ff32d5d7324d111fc819156795d4b240af3da28e3e60da3d4ca6a901a2",
  "kind": "def",
  "lexical_name": "preservesLoci_trans",
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
  "slug": "preservesloci-trans--5968e283f9e2ee16239db720",
  "source": {
    "blob": "39f5894521a90970e82f67c2843a3a2271a8b23d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 209,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loci/Variant9bf37eb026f2e8d26ac653eaa76cb77585be00ecdf47895a2fd957d780af4e87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5968e283f9e2ee16239db720593250bc446dde19cfe7002b29af2fda9e80301e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loci/Variant9bf37eb026f2e8d26ac653eaa76cb77585be00ecdf47895a2fd957d780af4e87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dfe8e3ff32d5d7324d111fc819156795d4b240af3da28e3e60da3d4ca6a901a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def preservesLoci_trans {α : Type}
    {left middle right : CompressedObject α}
    (hleft : PreservesLoci left middle)
    (hright : PreservesLoci middle right) :
    PreservesLoci left right :=
  { decoded_eq := Eq.trans hleft.decoded_eq hright.decoded_eq
    locus_forward := fun locus => hright.locus_forward (hleft.locus_forward locus)
    locus_backward := fun locus => hleft.locus_backward (hright.locus_backward locus)
    forward_backward := by
      intro locus
      rw [hright.forward_backward, hleft.forward_backward]
    backward_forward := by
      intro locus
      rw [hleft.backward_forward, hright.backward_forward] }

end Think.Compression
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loci/Variant9bf37eb026f2e8d26ac653eaa76cb77585be00ecdf47895a2fd957d780af4e87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loci/Variant9bf37eb026f2e8d26ac653eaa76cb77585be00ecdf47895a2fd957d780af4e87.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39f5894521a90970e82f67c2843a3a2271a8b23d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
