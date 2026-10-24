# Shape.toHtmlData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5b2d9e5305442117f431027448820239a18ade09fc7adff72554c49f1163f6c3",
  "kind": "def",
  "lexical_name": "Shape.toHtmlData",
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
  "slug": "shape-tohtmldata--8e183529cc78063719cbd05e",
  "source": {
    "blob": "54e006b0086c7fa1c14923385abac98fbc8f746e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 97,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Svg/Variant8dba0dd73c83e082f23853718fd0b0aab3c7df743c62800fd755e670b8528aa0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8e183529cc78063719cbd05ea52c73c0eb63c6f90baa3eb8fdca94e42a5c3ef7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Svg/Variant8dba0dd73c83e082f23853718fd0b0aab3c7df743c62800fd755e670b8528aa0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5b2d9e5305442117f431027448820239a18ade09fc7adff72554c49f1163f6c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Shape.toHtmlData {f : Frame} : Shape f → String × Array (String × Json)
| .line src trg =>
  let (x1,y1) := src.toPixels
  let (x2,y2) := trg.toPixels
  ("line", #[("x1", x1), ("y1", y1), ("x2", x2), ("y2", y2)])
| .circle center radius =>
  let (cx,cy) := center.toPixels
  let r := radius.toPixels
  ("circle", #[("cx", cx), ("cy", cy), ("r", r)])
| .polyline points =>
  let pts := points
      |>.map (λ p => let (x,y) := p.toPixels; s!"{x},{y}")
      |>.foldl (init := "") (λ s p => s ++ " " ++ p)
  ("polyline", #[("points", pts)])
| .polygon points =>
  let pts := points
      |>.map (λ p => let (x,y) := p.toPixels; s!"{x},{y}")
      |>.foldl (init := "") (λ s p => s ++ " " ++ p)
  ("polygon", #[("fillRule", "nonzero"), ("points", pts)])


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Svg/Variant8dba0dd73c83e082f23853718fd0b0aab3c7df743c62800fd755e670b8528aa0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Svg/Variant8dba0dd73c83e082f23853718fd0b0aab3c7df743c62800fd755e670b8528aa0.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54e006b0086c7fa1c14923385abac98fbc8f746e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
