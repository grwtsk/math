# Finite.exists_maximalFor'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2d75439-cb08-0572-795f-159e700ee225",
  "kind": "lemma",
  "lexical_name": "Finite.exists_maximalFor'",
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
  "slug": "finite-exists-maximalfor--c4685014497110314f200062",
  "source": {
    "blob": "d0be03c1931c763811b4793cad6bebee01f9964f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 79,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant20664bb708ae570bb898ad98b420c6e5a5114187584aacb6075e26ff8a42b98c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4685014497110314f2000626606049ad95b2f09d18b5210c3c0673da4369519",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finite/Variant20664bb708ae570bb898ad98b420c6e5a5114187584aacb6075e26ff8a42b98c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2d75439-cb08-0572-795f-159e700ee225`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Finite.exists_maximalFor' (f : ι → α) (s : Set ι) (h : (f '' s).Finite) (hs : s.Nonempty) :
    ∃ i, MaximalFor (· ∈ s) f i := by
  obtain ⟨_, ⟨a, ha, rfl⟩, hmax⟩ := Finite.exists_maximalFor id (f '' s) h (hs.image f)
  exact ⟨a, ha, fun a' ha' hf ↦ hmax (mem_image_of_mem f ha') hf⟩

/-- A version of `Finite.exists_minimalFor` with the (weaker) hypothesis that the image of `s`
is finite rather than `s` itself. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finite/Variant20664bb708ae570bb898ad98b420c6e5a5114187584aacb6075e26ff8a42b98c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant20664bb708ae570bb898ad98b420c6e5a5114187584aacb6075e26ff8a42b98c.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0be03c1931c763811b4793cad6bebee01f9964f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
