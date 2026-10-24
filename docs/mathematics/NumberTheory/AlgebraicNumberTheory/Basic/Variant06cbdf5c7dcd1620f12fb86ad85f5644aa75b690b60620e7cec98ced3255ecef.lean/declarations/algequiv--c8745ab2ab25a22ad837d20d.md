# algEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:20eec6149ef979a24f1edcf57de9830e7eedd2135139ca363b2b128f76ab0af3",
  "kind": "def",
  "lexical_name": "algEquiv",
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
  "slug": "algequiv--c8745ab2ab25a22ad837d20d",
  "source": {
    "blob": "7f3a8ab8fc9c879abb42bb77528cdf85c846c20b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 322,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant06cbdf5c7dcd1620f12fb86ad85f5644aa75b690b60620e7cec98ced3255ecef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8745ab2ab25a22ad837d20db6e786b0235e23b654e99cd6844d0115981b3d07",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant06cbdf5c7dcd1620f12fb86ad85f5644aa75b690b60620e7cec98ced3255ecef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:20eec6149ef979a24f1edcf57de9830e7eedd2135139ca363b2b128f76ab0af3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected noncomputable def algEquiv (R : Type*) [CommRing R] [Algebra (𝓞 K) R] [Algebra R L]
    [IsScalarTower (𝓞 K) R L] [IsIntegralClosure R (𝓞 K) L] : 𝓞 L ≃ₐ[𝓞 K] R :=
  (IsIntegralClosure.equiv (𝓞 K) R L _).symm

/-- Any extension between ring of integers is integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant06cbdf5c7dcd1620f12fb86ad85f5644aa75b690b60620e7cec98ced3255ecef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant06cbdf5c7dcd1620f12fb86ad85f5644aa75b690b60620e7cec98ced3255ecef.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f3a8ab8fc9c879abb42bb77528cdf85c846c20b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
