# spectrum_lowerBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "95daedb125007aa1501e7818f4eede8e5b4ba761",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 26,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e622aa2c583c66f40846aa22c9a290b3ad73ea62a060cf3c7c74c70ef3386f9e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:07f84b89-f34d-c878-16a5-301f1d8ebb41",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1abfeb2a-6187-eb2f-6658-8c21818a51be",
  "kind": "lemma",
  "lexical_name": "spectrum_lowerBound",
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
  "slug": "spectrum-lowerbound--88f2da87039ba90ad043f965",
  "source": {
    "blob": "95daedb125007aa1501e7818f4eede8e5b4ba761",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 26,
    "path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variante622aa2c583c66f40846aa22c9a290b3ad73ea62a060cf3c7c74c70ef3386f9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88f2da87039ba90ad043f965f6d6884c7d9104d5d57fa0eb8c08bdeb63522948",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Spectrum/Variante622aa2c583c66f40846aa22c9a290b3ad73ea62a060cf3c7c74c70ef3386f9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1abfeb2a-6187-eb2f-6658-8c21818a51be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma spectrum_lowerBound :
    ∃ C : ℝ, spectrum ℝ L ⊆ Set.Ici C := by
  rcases Schrodinger.L_boundedBelow P with ⟨C, h⟩
  -- `spectrum_subset_of_lowerBound` is in `Mathlib.Analysis.Spectrum`.
  exact ⟨C, spectrum_subset_of_lowerBound L h⟩

/-- Because `L` is self-adjoint (over `ℝ` → extends to `ℂ`), its complex
    spectrum is real. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Spectrum/Variante622aa2c583c66f40846aa22c9a290b3ad73ea62a060cf3c7c74c70ef3386f9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Spectrum/Variante622aa2c583c66f40846aa22c9a290b3ad73ea62a060cf3c7c74c70ef3386f9e.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95daedb125007aa1501e7818f4eede8e5b4ba761` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
