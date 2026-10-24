# cliqueFree_of_chromaticNumber_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d17d2d9-505d-19aa-d0bd-045e28cb330c",
  "kind": "theorem",
  "lexical_name": "cliqueFree_of_chromaticNumber_lt",
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
  "slug": "cliquefree-of-chromaticnumber-lt--6c1c5e7cf103b51f29b4e16d",
  "source": {
    "blob": "77a20cb0a52701394bfedd64c13e07fc353f89fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 468,
    "line": 455,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/Variantbdcca1b3ee0441176c6cff12c1d013544ec0b30db2c70df462afc045baf60908.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c1c5e7cf103b51f29b4e16d557a5593ed300a53ce5b5dd5e905e946697c083d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/Variantbdcca1b3ee0441176c6cff12c1d013544ec0b30db2c70df462afc045baf60908.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d17d2d9-505d-19aa-d0bd-045e28cb330c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 455–468.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cliqueFree_of_chromaticNumber_lt {n : ℕ} (hc : G.chromaticNumber < n) :
    G.CliqueFree n := by
  have hne : G.chromaticNumber ≠ ⊤ := hc.ne_top
  obtain ⟨m, hc'⟩ := chromaticNumber_ne_top_iff_exists.mp hne
  have := colorable_chromaticNumber hc'
  refine this.cliqueFree ?_
  rw [← ENat.coe_toNat_eq_self] at hne
  rw [← hne] at hc
  simpa using hc

/--
Given a colouring `α` of `G`, and a clique of size at least the number of colours, the clique
contains a vertex of each colour.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/Variantbdcca1b3ee0441176c6cff12c1d013544ec0b30db2c70df462afc045baf60908.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/Variantbdcca1b3ee0441176c6cff12c1d013544ec0b30db2c70df462afc045baf60908.lean#L455).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77a20cb0a52701394bfedd64c13e07fc353f89fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
