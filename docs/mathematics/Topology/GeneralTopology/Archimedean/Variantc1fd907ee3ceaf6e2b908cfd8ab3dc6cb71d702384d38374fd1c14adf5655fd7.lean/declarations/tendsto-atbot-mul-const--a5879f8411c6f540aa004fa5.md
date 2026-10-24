# Tendsto.atBot_mul_const'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe600689-cc38-5557-9b52-37e4b9480ad6",
  "kind": "theorem",
  "lexical_name": "Tendsto.atBot_mul_const'",
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
  "slug": "tendsto-atbot-mul-const--a5879f8411c6f540aa004fa5",
  "source": {
    "blob": "a96bc3ccad91f8eec4add530818835d75c33933c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 232,
    "path": "GRWTSK/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5879f8411c6f540aa004fa5905dc28e21f457e8cb4f875154495f8c9fb980b4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe600689-cc38-5557-9b52-37e4b9480ad6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Tendsto.atBot_mul_const' (hr : 0 < r) (hf : Tendsto f l atBot) :
    Tendsto (fun x => f x * r) l atBot := by
  simp only [← tendsto_neg_atTop_iff, ← neg_mul] at hf ⊢
  exact hf.atTop_mul_const' hr

/-- See also `Filter.Tendsto.atBot_mul_const_of_neg` for a version of this lemma for
linearly ordered fields which does not require the `Archimedean` assumption. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a96bc3ccad91f8eec4add530818835d75c33933c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
