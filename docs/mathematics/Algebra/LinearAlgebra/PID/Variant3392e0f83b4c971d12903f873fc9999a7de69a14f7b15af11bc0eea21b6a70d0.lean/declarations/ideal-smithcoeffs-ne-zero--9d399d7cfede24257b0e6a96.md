# Ideal.smithCoeffs_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af4dc0bd-4b89-5a70-0615-a2d42f464d6f",
  "kind": "theorem",
  "lexical_name": "Ideal.smithCoeffs_ne_zero",
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
  "slug": "ideal-smithcoeffs-ne-zero--9d399d7cfede24257b0e6a96",
  "source": {
    "blob": "ec53b8f86360e7e285ca6ba9761a385f806676e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 699,
    "line": 681,
    "path": "GRWTSK/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d399d7cfede24257b0e6a96cf3ec77caeba79195bcecd235614da92f41300ff",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af4dc0bd-4b89-5a70-0615-a2d42f464d6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 681–699.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ideal.smithCoeffs_ne_zero (b : Basis ι R S) (I : Ideal S) (hI : I ≠ ⊥) (i) :
    Ideal.smithCoeffs b I hI i ≠ 0 := by
  intro hi
  apply Basis.ne_zero (Ideal.selfBasis b I hI) i
  refine' Subtype.coe_injective _
  simp [hi]
#align ideal.smith_coeffs_ne_zero Ideal.smithCoeffs_ne_zero

-- porting note: can be inferred in Lean 4 so no longer necessary
#noalign has_quotient.quotient.module

end Ideal

end SmithNormal

end PrincipalIdealDomain

/-- A set of linearly independent vectors in a module `M` over a semiring `S` is also linearly
independent over a subring `R` of `K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean#L681).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec53b8f86360e7e285ca6ba9761a385f806676e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
