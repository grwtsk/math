# certifiedLogLower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e9dc0963e83067c6c372720fe25f56a58b13504dc35853276d4be2cfa91a255",
  "kind": "def",
  "lexical_name": "certifiedLogLower",
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
  "slug": "certifiedloglower--0ffd5e6359c829d3fc520230",
  "source": {
    "blob": "e9d8facf3252d7cb3f1eb640b7674a4b54b2fd81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 359,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ffd5e6359c829d3fc52023009f5a576e51cd3277c3effa9c75be691f374b7ca",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e9dc0963e83067c6c372720fe25f56a58b13504dc35853276d4be2cfa91a255`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 359–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def certifiedLogLower (p : ℕ) : ℝ :=
  if p = 2 then (6931:ℝ)/10000 else if p = 3 then (10986:ℝ)/10000 else if p = 5 then (16094:ℝ)/10000 else if p = 7 then (19459:ℝ)/10000 else if p = 11 then (23978:ℝ)/10000 else if p = 13 then (25649:ℝ)/10000 else if p = 17 then (28332:ℝ)/10000 else if p = 19 then (29444:ℝ)/10000 else if p = 23 then (31354:ℝ)/10000 else if p = 29 then (33672:ℝ)/10000 else if p = 31 then (34339:ℝ)/10000 else if p = 37 then (36109:ℝ)/10000 else if p = 41 then (37135:ℝ)/10000 else if p = 43 then (37612:ℝ)/10000 else if p = 47 then (38501:ℝ)/10000 else if p = 53 then (39702:ℝ)/10000 else if p = 59 then (40775:ℝ)/10000 else if p = 61 then (41108:ℝ)/10000 else if p = 67 then (42046:ℝ)/10000 else if p = 71 then (42626:ℝ)/10000 else if p = 73 then (42904:ℝ)/10000 else if p = 79 then (43694:ℝ)/10000 else if p = 83 then (44188:ℝ)/10000 else if p = 89 then (44886:ℝ)/10000 else if p = 97 then (45747:ℝ)/10000 else 0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean#L359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9d8facf3252d7cb3f1eb640b7674a4b54b2fd81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
