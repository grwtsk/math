# average_eq_trivial_coord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40788ed0-fed4-9f3c-fa5b-29b60a7cb53d",
  "kind": "theorem",
  "lexical_name": "average_eq_trivial_coord",
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
  "slug": "average-eq-trivial-coord--4762235df4b46c04f3b4d891",
  "source": {
    "blob": "3776d2816ba2863b8682fac571011784a705e7c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 49,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ce9b9a72699ffa03719ac20430b1f3ee1bc4a9fbf05020080cc1675a3f56c8b3FiniteCharacterG/Variant538b2999b16f014b0b7be4d59cc33343f848551504469b83358b6cacde831c97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4762235df4b46c04f3b4d8914667fab5a58febdf3372373b170dd9c3c74abcd9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ce9b9a72699ffa03719ac20430b1f3ee1bc4a9fbf05020080cc1675a3f56c8b3FiniteCharacterG/Variant538b2999b16f014b0b7be4d59cc33343f848551504469b83358b6cacde831c97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40788ed0-fed4-9f3c-fa5b-29b60a7cb53d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem average_eq_trivial_coord :
    average (G := G) = (AddChar.complexBasis G).coord 0 := by
  classical
  let b := AddChar.complexBasis G
  apply b.ext
  intro χ
  change average (b χ) = b.repr (b χ) 0
  rw [b.repr_self_apply]
  rw [show b χ = (χ : G → ℂ) by exact AddChar.complexBasis_apply χ]
  exact AddChar.expect_eq_ite χ

/-- Recognition of the constant Fourier coefficient as the exact group mean. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ce9b9a72699ffa03719ac20430b1f3ee1bc4a9fbf05020080cc1675a3f56c8b3FiniteCharacterG/Variant538b2999b16f014b0b7be4d59cc33343f848551504469b83358b6cacde831c97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ce9b9a72699ffa03719ac20430b1f3ee1bc4a9fbf05020080cc1675a3f56c8b3FiniteCharacterG/Variant538b2999b16f014b0b7be4d59cc33343f848551504469b83358b6cacde831c97.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3776d2816ba2863b8682fac571011784a705e7c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
