# comap.isCountablyGenerated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5e601546a786ac3e26045366582e408998b012e6e6930650fd42a6b1324d23ad",
  "kind": "instance",
  "lexical_name": "comap.isCountablyGenerated",
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
  "slug": "comap-iscountablygenerated--f4dde1bde05208a96560e588",
  "source": {
    "blob": "1732fded7e6e4de54b0ee7290f109aa998c7d880",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 159,
    "path": "GRWTSK/Algebra/LinearAlgebra/CountablyGenerated/Variant5628113472da223e2345cc12426ec269ca87c2e233eb76e9789ed1c21719f2d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f4dde1bde05208a96560e5882d5b27e8ee8f155c98cfea964c12a70a0e000c86",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CountablyGenerated/Variant5628113472da223e2345cc12426ec269ca87c2e233eb76e9789ed1c21719f2d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5e601546a786ac3e26045366582e408998b012e6e6930650fd42a6b1324d23ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance comap.isCountablyGenerated (l : Filter β) [l.IsCountablyGenerated] (f : α → β) :
    (comap f l).IsCountablyGenerated :=
  let ⟨_x, hxl⟩ := l.exists_antitone_basis
  (hxl.comap _).isCountablyGenerated

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CountablyGenerated/Variant5628113472da223e2345cc12426ec269ca87c2e233eb76e9789ed1c21719f2d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CountablyGenerated/Variant5628113472da223e2345cc12426ec269ca87c2e233eb76e9789ed1c21719f2d0.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1732fded7e6e4de54b0ee7290f109aa998c7d880` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
