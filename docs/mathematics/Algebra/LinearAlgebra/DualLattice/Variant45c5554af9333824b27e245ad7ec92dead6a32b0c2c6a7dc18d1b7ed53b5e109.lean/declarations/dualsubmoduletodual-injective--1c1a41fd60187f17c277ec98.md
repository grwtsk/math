# dualSubmoduleToDual_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:efa625a9-3337-9a5b-eb01-89b87681ca47",
  "kind": "lemma",
  "lexical_name": "dualSubmoduleToDual_injective",
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
  "slug": "dualsubmoduletodual-injective--1c1a41fd60187f17c277ec98",
  "source": {
    "blob": "e2bd67dbb9371238a61150d066f8c2afea9204e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 85,
    "path": "GRWTSK/Algebra/LinearAlgebra/DualLattice/Variant45c5554af9333824b27e245ad7ec92dead6a32b0c2c6a7dc18d1b7ed53b5e109.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c1a41fd60187f17c277ec98e1443a9421a6deeb58b73e7f736f38f43b76e718",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DualLattice/Variant45c5554af9333824b27e245ad7ec92dead6a32b0c2c6a7dc18d1b7ed53b5e109.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efa625a9-3337-9a5b-eb01-89b87681ca47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dualSubmoduleToDual_injective (hB : B.Nondegenerate) [NoZeroSMulDivisors R S]
    (N : Submodule R M) (hN : Submodule.span S (N : Set M) = ⊤) :
    Function.Injective (B.dualSubmoduleToDual N) := by
  intro x y e
  ext
  apply LinearMap.ker_eq_bot.mp hB.ker_eq_bot
  apply LinearMap.ext_on hN
  intro z hz
  simpa using congr_arg (algebraMap R S) (LinearMap.congr_fun e ⟨z, hz⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DualLattice/Variant45c5554af9333824b27e245ad7ec92dead6a32b0c2c6a7dc18d1b7ed53b5e109.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DualLattice/Variant45c5554af9333824b27e245ad7ec92dead6a32b0c2c6a7dc18d1b7ed53b5e109.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2bd67dbb9371238a61150d066f8c2afea9204e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
