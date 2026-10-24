# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:63a86f9a8bfa1f0e19cfe52ac591ad48bde7266c5e60cca78db42b7212e05533",
  "kind": "example",
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
  "slug": "example--51bc74da35bb879c2e85b046",
  "source": {
    "blob": "9fb6609c53904c214ef539c56f8341e4a9e41ab1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 67,
    "path": "GRWTSK/Algebra/GrindInstances/Variant20d6fc24ccf4f16ab919d7d39dbb3bf94b9ca14a74b531deabf5ea369331ff8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:51bc74da35bb879c2e85b046edce601d026cdf2562a1018d934dad05f74fc587",
  "verification": {
    "reference": "docs/verification/Algebra/GrindInstances/Variant20d6fc24ccf4f16ab919d7d39dbb3bf94b9ca14a74b531deabf5ea369331ff8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:63a86f9a8bfa1f0e19cfe52ac591ad48bde7266c5e60cca78db42b7212e05533`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (s : Grind.CommRing α) : CommRing α :=
  { s with
    zero_add := Grind.CommRing.zero_add
    right_distrib := Grind.CommRing.right_distrib
    mul_zero := Grind.CommRing.mul_zero
    one_mul := Grind.CommRing.one_mul
    nsmul := nsmulRec
    zsmul := zsmulRec
    natCast := Nat.cast
    natCast_zero :=  Grind.CommRing.natCast_zero
    natCast_succ n := Grind.CommRing.natCast_succ n
    intCast := Int.cast
    intCast_ofNat := Grind.CommRing.intCast_natCast
    intCast_negSucc n := by
      rw [Int.negSucc_eq, Grind.CommRing.intCast_neg,
        Grind.CommRing.intCast_natCast_add_one, Grind.CommRing.natCast_succ] }
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GrindInstances/Variant20d6fc24ccf4f16ab919d7d39dbb3bf94b9ca14a74b531deabf5ea369331ff8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GrindInstances/Variant20d6fc24ccf4f16ab919d7d39dbb3bf94b9ca14a74b531deabf5ea369331ff8f.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fb6609c53904c214ef539c56f8341e4a9e41ab1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
