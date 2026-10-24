# eulerCharSignsUpInt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:331e73ad17027f9058a31f3187663fd6c786433c6e7ca7ee7cf0c8220b376043",
  "kind": "instance",
  "lexical_name": "eulerCharSignsUpInt",
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
  "slug": "eulercharsignsupint--6bdef32361c45fefa82a9d06",
  "source": {
    "blob": "39339691b18fff976b0a72d2e8fd5c9e0b8f5ef1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 73,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variantcf3900bd27da8495e3b85f8633ec14d1d665f27ee276bacc128f4a477acca502.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6bdef32361c45fefa82a9d0697f2785ad1f619e51efa18a714dccc44d8ae93ed",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variantcf3900bd27da8495e3b85f8633ec14d1d665f27ee276bacc128f4a477acca502.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:331e73ad17027f9058a31f3187663fd6c786433c6e7ca7ee7cf0c8220b376043`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance eulerCharSignsUpInt : (up ℤ).EulerCharSigns where
  χ := Int.negOnePow
  χ_next := by rintro _ _ rfl; rw [Int.negOnePow_succ]

@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variantcf3900bd27da8495e3b85f8633ec14d1d665f27ee276bacc128f4a477acca502.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variantcf3900bd27da8495e3b85f8633ec14d1d665f27ee276bacc128f4a477acca502.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39339691b18fff976b0a72d2e8fd5c9e0b8f5ef1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
