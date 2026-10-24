# commSemiring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f4c7f425de7ea8f5276d118c0aab327297bda673de5de450a4e97ce84d90a17",
  "kind": "instance",
  "lexical_name": "commSemiring",
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
  "slug": "commsemiring--e420c6e809ac329dfc5e948b",
  "source": {
    "blob": "9f1690f41e8e0b7d634c3fb52b0b6aaedbd529c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 88,
    "path": "GRWTSK/Algebra/ULift/Variante7a5e21e694e2ccccaa4be2e528e26719aeb90ee359a61226beb751803d1a906.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e420c6e809ac329dfc5e948b582b167536f08a288c584e81725638f08cf7883b",
  "verification": {
    "reference": "docs/verification/Algebra/ULift/Variante7a5e21e694e2ccccaa4be2e528e26719aeb90ee359a61226beb751803d1a906.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f4c7f425de7ea8f5276d118c0aab327297bda673de5de450a4e97ce84d90a17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance commSemiring [CommSemiring α] : CommSemiring (ULift α) :=
  { ULift.semiring with
      zero := (0 : ULift α), one := (1 : ULift α), add := (· + ·), mul := (· * ·),
      nsmul := AddMonoid.nsmul, natCast := fun n => ULift.up n, npow := Monoid.npow, mul_comm }
#align ulift.comm_semiring ULift.commSemiring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ULift/Variante7a5e21e694e2ccccaa4be2e528e26719aeb90ee359a61226beb751803d1a906.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ULift/Variante7a5e21e694e2ccccaa4be2e528e26719aeb90ee359a61226beb751803d1a906.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f1690f41e8e0b7d634c3fb52b0b6aaedbd529c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
