# equivHom_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "87eeff7d91f11590ff463174dbf57336f58d0b60",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 217,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b3b48f9b4052f88f74246f9dc45b21f434a6307228bdfabf0dcf7236267c2531.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bf4552f8-a6ec-798e-42ca-7670d2f69f61",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6dfa5655-2deb-6780-1924-3f31cb6487a9",
  "kind": "lemma",
  "lexical_name": "equivHom_surjective",
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
  "slug": "equivhom-surjective--ab44443d4bd327778cd54b44",
  "source": {
    "blob": "87eeff7d91f11590ff463174dbf57336f58d0b60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 217,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variantb3b48f9b4052f88f74246f9dc45b21f434a6307228bdfabf0dcf7236267c2531.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab44443d4bd327778cd54b4412c7b695fe44eb8f1eeb818f6693fb4d4069993a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variantb3b48f9b4052f88f74246f9dc45b21f434a6307228bdfabf0dcf7236267c2531.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6dfa5655-2deb-6780-1924-3f31cb6487a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma equivHom_surjective [IsDomain k] : Function.Surjective (equivHom k G) := by
  intro η
  obtain ⟨s, h⟩ := toRightFDRepComp_in_rightRegular η
  exact ⟨s, toRightFDRepComp_injective (InducedCategory.hom_ext (hom_ext h.symm))⟩

variable (k G) in
/-- Tannaka duality for finite groups:

A finite group `G` is isomorphic to `Aut (forget k G)`, where `k` is any integral domain,
and `forget k G` is the monoidal forgetful functor `FDRep k G ⥤ FGModuleCat k G`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variantb3b48f9b4052f88f74246f9dc45b21f434a6307228bdfabf0dcf7236267c2531.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variantb3b48f9b4052f88f74246f9dc45b21f434a6307228bdfabf0dcf7236267c2531.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87eeff7d91f11590ff463174dbf57336f58d0b60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
