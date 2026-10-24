# weierstrass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:04d552aed57d7645ac650f382ea2097f4ddafc22d0a3f54ef6449a7254d06e62",
  "kind": "def",
  "lexical_name": "weierstrass",
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
  "slug": "weierstrass--9775c78acb768d45aef17238",
  "source": {
    "blob": "2cc545e8a4f1f3764f04b77a29811cff41531c36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 46,
    "path": "GRWTSK/Topology/GeneralTopology/NowhereDifferentiable/Variante70a681b90812f006696904e0979182d0e96d59fdfaa2f0d42527aa35eb18cd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9775c78acb768d45aef17238a59160a1ff828f28b1c467ade9a50e779fbd2066",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NowhereDifferentiable/Variante70a681b90812f006696904e0979182d0e96d59fdfaa2f0d42527aa35eb18cd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:04d552aed57d7645ac650f382ea2097f4ddafc22d0a3f54ef6449a7254d06e62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def weierstrass (a b x : ℝ) := ∑' n, a ^ n * cos (b ^ n * π * x)

/-!
### Continuity

We show that for $a \in (0, 1)$, the summation in the definition is uniformly convergent,
each term is uniformly continuous, and therefore Weierstrass function is uniformly continuous.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NowhereDifferentiable/Variante70a681b90812f006696904e0979182d0e96d59fdfaa2f0d42527aa35eb18cd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NowhereDifferentiable/Variante70a681b90812f006696904e0979182d0e96d59fdfaa2f0d42527aa35eb18cd9.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cc545e8a4f1f3764f04b77a29811cff41531c36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
