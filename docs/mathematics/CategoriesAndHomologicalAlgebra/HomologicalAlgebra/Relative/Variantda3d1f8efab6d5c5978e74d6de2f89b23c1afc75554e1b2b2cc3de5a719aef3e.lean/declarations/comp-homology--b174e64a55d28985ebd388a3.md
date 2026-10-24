# comp_homologyδ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "93c5c477d3afa4b973820a29ae5c54e7b15f44cb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 361,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/da3d1f8efab6d5c5978e74d6de2f89b23c1afc75554e1b2b2cc3de5a719aef3e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:029e296a-23cc-88e5-0861-b660b6ca75fd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8fddec82-04c3-2b14-2710-ffcd4c401f23",
  "kind": "lemma",
  "lexical_name": "comp_homologyδ",
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
  "slug": "comp-homology--b174e64a55d28985ebd388a3",
  "source": {
    "blob": "93c5c477d3afa4b973820a29ae5c54e7b15f44cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 361,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Relative/Variantda3d1f8efab6d5c5978e74d6de2f89b23c1afc75554e1b2b2cc3de5a719aef3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b174e64a55d28985ebd388a3a44687c3f7755baf99122205a62049b666170eac",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Relative/Variantda3d1f8efab6d5c5978e74d6de2f89b23c1afc75554e1b2b2cc3de5a719aef3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fddec82-04c3-2b14-2710-ffcd4c401f23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 361–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma comp_homologyδ (n m : ℕ) (h : m + 1 = n := by lia) :
    P.homologyπ R n ≫ P.homologyδ R n m h = 0 :=
  (P.shortExact_chainComplexShortComplex R).comp_δ n m (by simpa)

/-- Given `P : SSetPair` corresponding to a monomorphism `i : Y ⟶ X`,
the sequence `Hₘ₊₁(X;Y) ⟶ Hₘ(Y) ⟶ Hₘ(X)` is exact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Relative/Variantda3d1f8efab6d5c5978e74d6de2f89b23c1afc75554e1b2b2cc3de5a719aef3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Relative/Variantda3d1f8efab6d5c5978e74d6de2f89b23c1afc75554e1b2b2cc3de5a719aef3e.lean#L361).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93c5c477d3afa4b973820a29ae5c54e7b15f44cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
