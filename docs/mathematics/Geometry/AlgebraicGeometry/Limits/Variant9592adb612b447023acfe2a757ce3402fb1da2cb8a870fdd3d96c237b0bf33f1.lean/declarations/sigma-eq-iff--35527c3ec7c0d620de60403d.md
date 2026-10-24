# sigmaι_eq_iff

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
      "line": 275,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/9592adb612b447023acfe2a757ce3402fb1da2cb8a870fdd3d96c237b0bf33f1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4d3346e4-93f6-9674-2be0-2df2239c4a78",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6ac49fc7-ebf4-5de9-f0bf-90bc9018abe7",
  "kind": "lemma",
  "lexical_name": "sigmaι_eq_iff",
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
  "slug": "sigma-eq-iff--35527c3ec7c0d620de60403d",
  "source": {
    "blob": "c05276fe9974a070067bc296c36fa734e54d6fc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 275,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Limits/Variant9592adb612b447023acfe2a757ce3402fb1da2cb8a870fdd3d96c237b0bf33f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35527c3ec7c0d620de60403d04b95975cf6f756b21b13583f3d45b671da05798",
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

Occurrence: `result:6ac49fc7-ebf4-5de9-f0bf-90bc9018abe7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sigmaι_eq_iff (i j : ι) (x y) :
    (Sigma.ι f i).base x = (Sigma.ι f j).base y ↔
      (Sigma.mk i x : Σ i, f i) = Sigma.mk j y := by
  constructor
  · intro H
    rw [← ι_sigmaIsoGlued_inv, ← ι_sigmaIsoGlued_inv] at H
    erw [(TopCat.homeoOfIso
      (Scheme.forgetToTop.mapIso (sigmaIsoGlued f))).symm.injective.eq_iff] at H
    by_cases h : i = j
    · subst h
      simp only [Sigma.mk.inj_iff, heq_eq_eq, true_and]
      exact ((disjointGlueData f).ι i).isOpenEmbedding.injective H
    · obtain ⟨z, _⟩ := (Scheme.GlueData.ι_eq_iff _ _ _ _ _).mp H
      · simp only [disjointGlueData_J, disjointGlueData_V, h, ↓reduceIte] at z
        cases z
  · rintro ⟨rfl⟩
    rfl

/-- The images of each component in the coproduct is disjoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Limits/Variant9592adb612b447023acfe2a757ce3402fb1da2cb8a870fdd3d96c237b0bf33f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Limits/Variant9592adb612b447023acfe2a757ce3402fb1da2cb8a870fdd3d96c237b0bf33f1.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c05276fe9974a070067bc296c36fa734e54d6fc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
