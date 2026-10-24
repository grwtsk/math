# instFloorDiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fddd872b8dc45b18e1fd6b5c41c61fe4d950245a3f64be6abc4ba6a89d7b5ede",
  "kind": "instance",
  "lexical_name": "instFloorDiv",
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
  "slug": "instfloordiv--f13de0f2830ad6c31fa3de23",
  "source": {
    "blob": "30f18045c9bd0c81459a670605c94a11c58c7383",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 191,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f13de0f2830ad6c31fa3de239f1bfce37cc5b43a85df81adc61b3dc670427365",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fddd872b8dc45b18e1fd6b5c41c61fe4d950245a3f64be6abc4ba6a89d7b5ede`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instFloorDiv : FloorDiv ℕ ℕ where
  floorDiv := HDiv.hDiv
  floorDiv_gc a ha := by simpa [mul_comm] using Nat.galoisConnection_mul_div ha
  floorDiv_nonpos a ha b := by rw [ha.antisymm <| zero_le _, Nat.div_zero]
  zero_floorDiv := Nat.zero_div

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30f18045c9bd0c81459a670605c94a11c58c7383` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
