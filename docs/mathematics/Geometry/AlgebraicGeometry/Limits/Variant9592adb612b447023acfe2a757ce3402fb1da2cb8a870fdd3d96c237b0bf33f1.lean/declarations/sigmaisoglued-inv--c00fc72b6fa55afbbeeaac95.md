# ι_sigmaIsoGlued_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c05276fe9974a070067bc296c36fa734e54d6fc4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 251,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/9592adb612b447023acfe2a757ce3402fb1da2cb8a870fdd3d96c237b0bf33f1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fb314d7e-f751-14c5-3880-a5467514de49",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:23131227-ec3f-7c97-3932-62663cc02add",
  "kind": "lemma",
  "lexical_name": "ι_sigmaIsoGlued_inv",
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
  "slug": "sigmaisoglued-inv--c00fc72b6fa55afbbeeaac95",
  "source": {
    "blob": "c05276fe9974a070067bc296c36fa734e54d6fc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 251,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Limits/Variant9592adb612b447023acfe2a757ce3402fb1da2cb8a870fdd3d96c237b0bf33f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c00fc72b6fa55afbbeeaac95271eba3bc8734633843355ec5af571fc98ec5a31",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Limits/Variant9592adb612b447023acfe2a757ce3402fb1da2cb8a870fdd3d96c237b0bf33f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23131227-ec3f-7c97-3932-62663cc02add`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ι_sigmaIsoGlued_inv (i) : (disjointGlueData f).ι i ≫ (sigmaIsoGlued f).inv = Sigma.ι f i := by
  apply Scheme.forgetToLocallyRingedSpace.map_injective
  dsimp [sigmaIsoGlued]
  simp only [Category.assoc]
  refine ((disjointGlueData f).ι_gluedIso_hom_assoc Scheme.forgetToLocallyRingedSpace i _).trans ?_
  refine (colimit.isoColimitCocone_ι_inv_assoc
    ⟨_, toLocallyRingedSpaceCoproductCofanIsColimit f⟩ ⟨i⟩ _).trans ?_
  exact ι_comp_sigmaComparison Scheme.forgetToLocallyRingedSpace _ _

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Limits/Variant9592adb612b447023acfe2a757ce3402fb1da2cb8a870fdd3d96c237b0bf33f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Limits/Variant9592adb612b447023acfe2a757ce3402fb1da2cb8a870fdd3d96c237b0bf33f1.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c05276fe9974a070067bc296c36fa734e54d6fc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
