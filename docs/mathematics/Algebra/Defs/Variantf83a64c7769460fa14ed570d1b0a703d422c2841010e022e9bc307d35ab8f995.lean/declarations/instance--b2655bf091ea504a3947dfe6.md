# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b63ca64e19423de6440fb50d6c75ee5324435984fa4beab0efcbe1c62a871d3f",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--b2655bf091ea504a3947dfe6",
  "source": {
    "blob": "465f793c1031d9d45b54455380f7d5aeb8d70515",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 444,
    "line": 435,
    "path": "GRWTSK/Algebra/Defs/Variantf83a64c7769460fa14ed570d1b0a703d422c2841010e022e9bc307d35ab8f995.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b2655bf091ea504a3947dfe6e35f01560962cca905ce2c7827abab18b830195a",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variantf83a64c7769460fa14ed570d1b0a703d422c2841010e022e9bc307d35ab8f995.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b63ca64e19423de6440fb50d6c75ee5324435984fa4beab0efcbe1c62a871d3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 435–444.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) Ring.toNonAssocRing : NonAssocRing α where
  __ := ‹Ring α›
  zero_mul := fun a => add_left_cancel (a := 0 * a) <| by rw [← add_mul, zero_add, add_zero]
  mul_zero := fun a => add_left_cancel (a := a * 0) <| by rw [← mul_add, add_zero, add_zero]
#align ring.to_non_assoc_ring Ring.toNonAssocRing

/- The instance from `Ring` to `Semiring` happens often in linear algebra, for which all the basic
definitions are given in terms of semirings, but many applications use rings or fields. We increase
a little bit its priority above 100 to try it quickly, but remaining below the default 1000 so that
more specific instances are tried first. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variantf83a64c7769460fa14ed570d1b0a703d422c2841010e022e9bc307d35ab8f995.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variantf83a64c7769460fa14ed570d1b0a703d422c2841010e022e9bc307d35ab8f995.lean#L435).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `465f793c1031d9d45b54455380f7d5aeb8d70515` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
