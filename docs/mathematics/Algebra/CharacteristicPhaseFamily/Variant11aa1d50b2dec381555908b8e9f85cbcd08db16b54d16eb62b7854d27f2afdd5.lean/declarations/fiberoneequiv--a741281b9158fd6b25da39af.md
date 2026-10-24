# fiberOneEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3c1edeb136598463fbbd1e76c9fbe268ed2f1a25abe4ebfb0b1b9e1a37246790",
  "kind": "def",
  "lexical_name": "fiberOneEquiv",
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
  "slug": "fiberoneequiv--a741281b9158fd6b25da39af",
  "source": {
    "blob": "eb6c104e6b5354e79ca906e8466fa9ee2172fcad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 395,
    "path": "GRWTSK/Algebra/CharacteristicPhaseFamily/Variant11aa1d50b2dec381555908b8e9f85cbcd08db16b54d16eb62b7854d27f2afdd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a741281b9158fd6b25da39afd6d0cfba39843775ff0139b4b4e1ac34173a5572",
  "verification": {
    "reference": "docs/verification/Algebra/CharacteristicPhaseFamily/Variant11aa1d50b2dec381555908b8e9f85cbcd08db16b54d16eb62b7854d27f2afdd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3c1edeb136598463fbbd1e76c9fbe268ed2f1a25abe4ebfb0b1b9e1a37246790`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fiberOneEquiv : CharacteristicFiber 1 ≃ₐ[ℂ] CharacteristicOne :=
  AdjoinRoot.algEquivOfAssociated ℂ _ _ (by simp [characteristicPolynomial])

/-- Algebraic root coalescence includes both signs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CharacteristicPhaseFamily/Variant11aa1d50b2dec381555908b8e9f85cbcd08db16b54d16eb62b7854d27f2afdd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CharacteristicPhaseFamily/Variant11aa1d50b2dec381555908b8e9f85cbcd08db16b54d16eb62b7854d27f2afdd5.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb6c104e6b5354e79ca906e8466fa9ee2172fcad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
