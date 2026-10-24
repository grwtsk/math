# l_comm_of_u_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8bdd4f33-27a4-33f3-89f8-08d39ca27964",
  "kind": "theorem",
  "lexical_name": "l_comm_of_u_comm",
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
  "slug": "l-comm-of-u-comm--b788d63d3bcdf0eee35d81e6",
  "source": {
    "blob": "19191c45cc3f509b840d1f8323f87da1dbe0efed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 183,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant9ca7c4ff1dffda3b7d3348a9e27b2307c2f5a20871c51f87d33a52ec70747fa2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b788d63d3bcdf0eee35d81e6f47cc681e5fb24170241dc20beb65794de68b29c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant9ca7c4ff1dffda3b7d3348a9e27b2307c2f5a20871c51f87d33a52ec70747fa2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bdd4f33-27a4-33f3-89f8-08d39ca27964`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem l_comm_of_u_comm {X : Type*} [Preorder X] {Y : Type*} [Preorder Y] {Z : Type*}
    [Preorder Z] {W : Type*} [PartialOrder W] {lYX : X → Y} {uXY : Y → X}
    (hXY : GaloisConnection lYX uXY) {lWZ : Z → W} {uZW : W → Z} (hZW : GaloisConnection lWZ uZW)
    {lWY : Y → W} {uYW : W → Y} (hWY : GaloisConnection lWY uYW) {lZX : X → Z} {uXZ : Z → X}
    (hXZ : GaloisConnection lZX uXZ) (h : ∀ w, uXZ (uZW w) = uXY (uYW w)) {x : X} :
    lWZ (lZX x) = lWY (lYX x) :=
  (hXZ.compose hZW).l_unique (hXY.compose hWY) h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant9ca7c4ff1dffda3b7d3348a9e27b2307c2f5a20871c51f87d33a52ec70747fa2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant9ca7c4ff1dffda3b7d3348a9e27b2307c2f5a20871c51f87d33a52ec70747fa2.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19191c45cc3f509b840d1f8323f87da1dbe0efed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
