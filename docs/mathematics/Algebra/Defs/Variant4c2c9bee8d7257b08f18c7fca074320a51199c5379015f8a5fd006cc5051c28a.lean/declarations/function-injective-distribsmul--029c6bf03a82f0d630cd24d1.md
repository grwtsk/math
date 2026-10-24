# Function.Injective.distribSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed1fc25d1f8fd09b9e496a46a6f1ae52582def6392b9d757b40f3bf064f83914",
  "kind": "abbrev",
  "lexical_name": "Function.Injective.distribSMul",
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
  "slug": "function-injective-distribsmul--029c6bf03a82f0d630cd24d1",
  "source": {
    "blob": "696759ce00b04e2cb17f3c0f1d70dc7203275dd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 284,
    "path": "GRWTSK/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:029c6bf03a82f0d630cd24d117a3fd9d95e0f40ac2bba1f5dd10e8923de60691",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ed1fc25d1f8fd09b9e496a46a6f1ae52582def6392b9d757b40f3bf064f83914`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected abbrev Function.Injective.distribSMul [AddZeroClass B] [SMul M B] (f : B →+ A)
    (hf : Injective f) (smul : ∀ (c : M) (x), f (c • x) = c • f x) : DistribSMul M B :=
  { hf.smulZeroClass f.toZeroHom smul with
    smul_add := fun c x y => hf <| by simp only [smul, map_add, smul_add] }

/-- Pushforward a distributive scalar multiplication along a surjective additive monoid
homomorphism.
See note [reducible non-instances]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `696759ce00b04e2cb17f3c0f1d70dc7203275dd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
