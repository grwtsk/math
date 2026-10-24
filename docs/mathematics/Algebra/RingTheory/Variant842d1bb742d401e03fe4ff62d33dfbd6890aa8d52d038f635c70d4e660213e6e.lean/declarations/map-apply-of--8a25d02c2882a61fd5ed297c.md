# map_apply_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f332a8d9-d643-391b-43df-b466865050d4",
  "kind": "lemma",
  "lexical_name": "map_apply_of",
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
  "slug": "map-apply-of--8a25d02c2882a61fd5ed297c",
  "source": {
    "blob": "7e424a312a23a58cdeef65a4769b37c1e8290274",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 234,
    "path": "GRWTSK/Algebra/Ring/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a25d02c2882a61fd5ed297c9ffab8c1d95df7c46206a1758f144f106b93b0c8",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f332a8d9-d643-391b-43df-b466865050d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma map_apply_of (g : (i : ι) → G i →+* G' i)
    (hg : ∀ i j h, (g j).comp (f i j h) = (f' i j h).comp (g i))
    {i : ι} (x : G i) :
    map g hg (of G _ _ x) = of G' (fun _ _ h ↦ f' _ _ h) i (g i x) :=
  lift_of _ _ _ _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e424a312a23a58cdeef65a4769b37c1e8290274` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
