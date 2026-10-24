# NygaardFiltrationCandidate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f7f558daf975b33bf4a8f21efb7119eb4b9bf454208e9b8a0f04d7c12e51079",
  "kind": "structure",
  "lexical_name": "NygaardFiltrationCandidate",
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
  "slug": "nygaardfiltrationcandidate--437c5d85bdf3b6b3153f9b4f",
  "source": {
    "blob": "171d26b6d4f11896d9e2ae826cc0de3e0977608d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 26,
    "path": "GRWTSK/Algebra/LinearAlgebra/PrimeFiber/Variant546f52e5878a9fdb1d6180057971d27b0f6997ba13bc682c1597b05d85f5438a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:437c5d85bdf3b6b3153f9b4f32afec07d780033e01804c293b0d48d6285f945d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PrimeFiber/Variant546f52e5878a9fdb1d6180057971d27b0f6997ba13bc682c1597b05d85f5438a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f7f558daf975b33bf4a8f21efb7119eb4b9bf454208e9b8a0f04d7c12e51079`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure NygaardFiltrationCandidate
    (prime : CertifiedPrime)
    (A : Type u) (ModuleCarrier : Type v)
    [CommRing A] [AddCommGroup ModuleCarrier] [Module A ModuleCarrier]
    (frobenius : ModuleCarrier →+ ModuleCarrier) where
  level : Nat → Submodule A ModuleCarrier
  level_zero : level 0 = ⊤
  antitone :
    ∀ {lower upper}, lower ≤ upper → level upper ≤ level lower
  frobenius_divisible :
    ∀ (index : Nat) (value : ModuleCarrier),
      value ∈ level index →
        ∃ quotient : ModuleCarrier,
          frobenius value =
            ((prime.value : A) ^ index) • quotient
  levelDigest : Nat → Digest
  evidenceAddress : ObjectAddress

/-- Frobenius-derived polynomial data before a local Euler theorem exists. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PrimeFiber/Variant546f52e5878a9fdb1d6180057971d27b0f6997ba13bc682c1597b05d85f5438a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PrimeFiber/Variant546f52e5878a9fdb1d6180057971d27b0f6997ba13bc682c1597b05d85f5438a.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `171d26b6d4f11896d9e2ae826cc0de3e0977608d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
