# embedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:117e97f55a307101a4a49bd459c8d83f6080d24f387e41466cff5c6a44b8f42d",
  "kind": "def",
  "lexical_name": "embedding",
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
  "slug": "embedding--e0bec90e7f66072eb56cdb9b",
  "source": {
    "blob": "08330c9a3773dbf36555fa72a6c31ebee455915e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 283,
    "path": "GRWTSK/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e0bec90e7f66072eb56cdb9b93875d8dd27487825ecb233707d22803b3d0a995",
  "verification": {
    "reference": "docs/verification/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:117e97f55a307101a4a49bd459c8d83f6080d24f387e41466cff5c6a44b8f42d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def embedding (p : NumDenSameDeg 𝒜 x) : at x :=
  Localization.mk p.num ⟨p.den, p.den_mem⟩
#align homogeneous_localization.num_denom_same_deg.embedding HomogeneousLocalization.NumDenSameDeg.embedding

end NumDenSameDeg

end HomogeneousLocalization

/-- For `x : prime ideal of A`, `HomogeneousLocalization 𝒜 x` is `NumDenSameDeg 𝒜 x` modulo the
kernel of `embedding 𝒜 x`. This is essentially the subring of `Aₓ` where the numerator and
denominator share the same grading.
-/
-- @[nolint has_nonempty_instance] -- Porting note: This linter does not exist yet.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08330c9a3773dbf36555fa72a6c31ebee455915e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
