# MulOpposite.invariantBasisNumber_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a95efda-f40b-0966-f736-6e8436648f83",
  "kind": "theorem",
  "lexical_name": "MulOpposite.invariantBasisNumber_iff",
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
  "slug": "mulopposite-invariantbasisnumber-iff--d82b346ae6a9e5c5ae5e5beb",
  "source": {
    "blob": "7f0cf001b50ac5c1d5c113918f19a12a75b8ff6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 78,
    "path": "GRWTSK/Algebra/LinearAlgebra/InvariantBasisNumber/Variant94dcfb1fbb4cf339cd27c3a40337d809376b4b13c81f68f135b2e2bb355ba3eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d82b346ae6a9e5c5ae5e5beb960365e5cdd6df8802133a139e62a213ed512926",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/InvariantBasisNumber/Variant94dcfb1fbb4cf339cd27c3a40337d809376b4b13c81f68f135b2e2bb355ba3eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a95efda-f40b-0966-f736-6e8436648f83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem MulOpposite.invariantBasisNumber_iff :
    InvariantBasisNumber Rᵐᵒᵖ ↔ InvariantBasisNumber R := by
  simp_rw [invariantBasisNumber_iff_matrix, ← opEquiv.mapMatrix.forall_congr_right,
    ← opEquiv.mapMatrix.symm.injective.eq_iff]
  congr! 2 with n m
  refine forall_comm.trans <| .trans (forall_congr' ?_) (transposeAddEquiv ..).forall_congr_right
  refine fun f ↦ .trans (forall_congr' fun g ↦ ?_) (transposeAddEquiv ..).forall_congr_right
  rw [← (transposeAddEquiv ..).injective.eq_iff, ← (transposeAddEquiv (Fin m) ..).injective.eq_iff]
  congrm (?_ = ?_ → ?_ = ?_ → _)
  iterate 2 ext; simp [map, mul_apply]; simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/InvariantBasisNumber/Variant94dcfb1fbb4cf339cd27c3a40337d809376b4b13c81f68f135b2e2bb355ba3eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/InvariantBasisNumber/Variant94dcfb1fbb4cf339cd27c3a40337d809376b4b13c81f68f135b2e2bb355ba3eb.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f0cf001b50ac5c1d5c113918f19a12a75b8ff6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
