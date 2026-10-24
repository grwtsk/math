# mlieBracketWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6d93ba19c42975d924832d69e8e973152e2efcad25a894ea65929b6fd4f98c4e",
  "kind": "def",
  "lexical_name": "mlieBracketWithin",
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
  "slug": "mliebracketwithin--8bec91387204ce1a7822cad0",
  "source": {
    "blob": "d1be8b63db73d21e9a34ba421d3fea814566239d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 62,
    "path": "GRWTSK/Topology/GeneralTopology/LieBracket/Variantd9a1e89c07eebd23e3376119baa38ae820b1ce873aeae6bd39a538ca6dd3c3ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8bec91387204ce1a7822cad07c1f7a5035c5df7fd68dcddeeb4dcca1ce785fd6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LieBracket/Variantd9a1e89c07eebd23e3376119baa38ae820b1ce873aeae6bd39a538ca6dd3c3ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6d93ba19c42975d924832d69e8e973152e2efcad25a894ea65929b6fd4f98c4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mlieBracketWithin (V W : Π (x : M), TangentSpace I x) (s : Set M) (x₀ : M) :
    TangentSpace I x₀ :=
  mpullback I 𝓘(𝕜, E) (extChartAt I x₀)
    (lieBracketWithin 𝕜
      (mpullbackWithin 𝓘(𝕜, E) I (extChartAt I x₀).symm V (range I))
      (mpullbackWithin 𝓘(𝕜, E) I (extChartAt I x₀).symm W (range I))
      ((extChartAt I x₀).symm ⁻¹' s ∩ range I)) x₀

variable (I I') in
/-- The Lie bracket of two vector fields in a manifold. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LieBracket/Variantd9a1e89c07eebd23e3376119baa38ae820b1ce873aeae6bd39a538ca6dd3c3ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LieBracket/Variantd9a1e89c07eebd23e3376119baa38ae820b1ce873aeae6bd39a538ca6dd3c3ee.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1be8b63db73d21e9a34ba421d3fea814566239d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
