# measurable_of_isClosed'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96c5f9e5-44d8-f817-46af-f5a17cfe0989",
  "kind": "theorem",
  "lexical_name": "measurable_of_isClosed'",
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
  "slug": "measurable-of-isclosed--87a5ea5fe4abdcb6ecc09118",
  "source": {
    "blob": "2e84b41471f757f1a130e0cb9887c77901ab936c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 322,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Varianta37773fcbbda181eb77fc05ec2182cd594bad3ac9adff522f2fe0c5862412eed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87a5ea5fe4abdcb6ecc09118bfddd871796c84301b76908bce206bae3c4e729a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Varianta37773fcbbda181eb77fc05ec2182cd594bad3ac9adff522f2fe0c5862412eed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96c5f9e5-44d8-f817-46af-f5a17cfe0989`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurable_of_isClosed' {f : δ → γ}
    (hf : ∀ s, IsClosed s → s.Nonempty → s ≠ univ → MeasurableSet (f ⁻¹' s)) : Measurable f := by
  apply measurable_of_isClosed; intro s hs
  rcases eq_empty_or_nonempty s with h1 | h1
  · simp [h1]
  by_cases h2 : s = univ
  · simp [h2]
  exact hf s hs h1 h2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Varianta37773fcbbda181eb77fc05ec2182cd594bad3ac9adff522f2fe0c5862412eed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Varianta37773fcbbda181eb77fc05ec2182cd594bad3ac9adff522f2fe0c5862412eed.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e84b41471f757f1a130e0cb9887c77901ab936c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
