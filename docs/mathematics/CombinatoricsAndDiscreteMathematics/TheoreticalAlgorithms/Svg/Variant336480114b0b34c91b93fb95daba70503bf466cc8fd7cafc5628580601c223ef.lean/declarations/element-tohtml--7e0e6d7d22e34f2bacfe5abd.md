# Element.toHtml

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:488fe8f696910390fe352715da7d55caa1f452c2eafce51a9c35805e7bebedc8",
  "kind": "def",
  "lexical_name": "Element.toHtml",
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
  "slug": "element-tohtml--7e0e6d7d22e34f2bacfe5abd",
  "source": {
    "blob": "28fe8eb68751a2baa8f2cdb87a88a541f8bb8030",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 163,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Svg/Variant336480114b0b34c91b93fb95daba70503bf466cc8fd7cafc5628580601c223ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7e0e6d7d22e34f2bacfe5abde35bc06f4345eaab9d90d274e3642f3e121386ea",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Svg/Variant336480114b0b34c91b93fb95daba70503bf466cc8fd7cafc5628580601c223ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:488fe8f696910390fe352715da7d55caa1f452c2eafce51a9c35805e7bebedc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Element.toHtml {f : Frame} (e : Element f) : Html := Id.run do
  let mut (tag, args) := e.shape.toHtmlData
  let mut children := #[]

  if let .text _ content _ := e.shape then
    children := #[.text content]  -- adding children <text>

  if let .some color := e.strokeColor then
    args := args.push ("stroke", color.toStringRGB)

  if let .some width := e.strokeWidth then
    args := args.push ("strokeWidth", width.toPixels)

  if let .some color := e.fillColor then
    args := args.push ("fill", color.toStringRGB)
  else
    args := args.push ("fill", "none")

  if let .some id := e.id then
    args := args.push ("id", id)

  if let .some data := e.data then
    args := args.push ("data", data)

  return .element tag args children

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Svg/Variant336480114b0b34c91b93fb95daba70503bf466cc8fd7cafc5628580601c223ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Svg/Variant336480114b0b34c91b93fb95daba70503bf466cc8fd7cafc5628580601c223ef.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28fe8eb68751a2baa8f2cdb87a88a541f8bb8030` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
