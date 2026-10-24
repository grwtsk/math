# relative_of_snd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "815f038e77ebf30bfbbeb3af62cc1e015ab8d2d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 356,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/14c23e2eef82b3ea66dcda06647bfaf4482a86cb9b62c33816fe757c4caeeef3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e83ff576-0e45-e782-51f6-9bd88017cf3e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8f2dbf6b-46ad-f1a4-ffc0-8289e04992d3",
  "kind": "lemma",
  "lexical_name": "relative_of_snd",
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
  "slug": "relative-of-snd--549e580aeaff119e80f9c883",
  "source": {
    "blob": "815f038e77ebf30bfbbeb3af62cc1e015ab8d2d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 356,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Representable/Variant14c23e2eef82b3ea66dcda06647bfaf4482a86cb9b62c33816fe757c4caeeef3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:549e580aeaff119e80f9c883b781a14ab0a8dbaa4ad6ed7ed05b5d48c7e9053e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Representable/Variant14c23e2eef82b3ea66dcda06647bfaf4482a86cb9b62c33816fe757c4caeeef3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f2dbf6b-46ad-f1a4-ffc0-8289e04992d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma relative_of_snd [F.Faithful] [F.Full] [P.RespectsIso] {f : X ⟶ Y}
    (hf : F.relativelyRepresentable f) (h : ∀ ⦃a : C⦄ (g : F.obj a ⟶ Y), P (hf.snd g)) :
    P.relative F f :=
  relative.of_exists (fun _ g ↦ ⟨hf.pullback g, hf.fst g, hf.snd g, hf.isPullback g, h g⟩)

/-- If `P : MorphismProperty C` is stable under base change, `F` is fully faithful and preserves
pullbacks, and `C` has all pullbacks, then for any `f : a ⟶ b` in `C`, `F.map f` satisfies
`P.relative` if `f` satisfies `P`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Representable/Variant14c23e2eef82b3ea66dcda06647bfaf4482a86cb9b62c33816fe757c4caeeef3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Representable/Variant14c23e2eef82b3ea66dcda06647bfaf4482a86cb9b62c33816fe757c4caeeef3.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `815f038e77ebf30bfbbeb3af62cc1e015ab8d2d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
