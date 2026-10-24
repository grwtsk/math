# quadraticCarrier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:51c6283397a42df20de9fedc21a1dc67b28908c7cd91c2b0edfc39cd310888c4",
  "kind": "def",
  "lexical_name": "quadraticCarrier",
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
  "slug": "quadraticcarrier--af55c5c2e443d621d15a7528",
  "source": {
    "blob": "7612cddddf16b169388e7aaf1e3af3f7ccaa2fc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 42,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/CubicCorpus/Variant09b656f8496d5d54c6a84e8794d05749003f9da3f1b13d390d0b70e3aba3f64e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af55c5c2e443d621d15a7528ba95ff480d9460d08a62752a730cab9b4e1af802",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/CubicCorpus/Variant09b656f8496d5d54c6a84e8794d05749003f9da3f1b13d390d0b70e3aba3f64e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:51c6283397a42df20de9fedc21a1dc67b28908c7cd91c2b0edfc39cd310888c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def quadraticCarrier : CorpusSubsumptionLink where
  linkId := { value := "ideas:analysis-cubic:quadratic:carrier" }
  linkId_valid := by
    simp [StableId.Valid]
  source := source
    0
    "Quadratic"
    (by decide)
    .structure
    "6406e5286255412f1d155dfb0aeb9554ea5b38f006f23f89867c6b1287a23943"
    (by
      unfold Digest.Valid
      native_decide)
  targetDeclaration := "Mathematics.Polynomial.quadratic"
  targetDeclaration_nonempty := by decide
  relation := .carrierReconstruction
  rationale :=
    "Replace the coefficient record by Mathlib's canonical real polynomial carrier."

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/CubicCorpus/Variant09b656f8496d5d54c6a84e8794d05749003f9da3f1b13d390d0b70e3aba3f64e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/CubicCorpus/Variant09b656f8496d5d54c6a84e8794d05749003f9da3f1b13d390d0b70e3aba3f64e.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7612cddddf16b169388e7aaf1e3af3f7ccaa2fc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
