# Zlattice.module_free

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a93d0fc8296db60ce64bd3dce748436d87e39926",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 354,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:083c4c2c-a1d3-fcc4-2c42-a677ab029c36",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:417b3535-de10-26c0-7abf-b457a4b85c5f",
  "kind": "theorem",
  "lexical_name": "Zlattice.module_free",
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
  "slug": "zlattice-module-free--016224ad599cccc7c480af8a",
  "source": {
    "blob": "a93d0fc8296db60ce64bd3dce748436d87e39926",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 354,
    "path": "GRWTSK/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:016224ad599cccc7c480af8a59ac4cd7706ea58d17fbb2feb17d5a14ff264499",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:417b3535-de10-26c0-7abf-b457a4b85c5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Zlattice.module_free : Module.Free ℤ L := by
  have : Module.Finite ℤ L := module_finite K hs
  have : Module ℚ E := Module.compHom E (algebraMap ℚ K)
  have : NoZeroSMulDivisors ℤ E := RatModule.noZeroSMulDivisors
  have : NoZeroSMulDivisors ℤ L := by
    change NoZeroSMulDivisors ℤ (AddSubgroup.toIntSubmodule L)
    exact noZeroSMulDivisors _
  exact Module.free_of_finite_type_torsion_free'

open FiniteDimensional

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a93d0fc8296db60ce64bd3dce748436d87e39926` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
