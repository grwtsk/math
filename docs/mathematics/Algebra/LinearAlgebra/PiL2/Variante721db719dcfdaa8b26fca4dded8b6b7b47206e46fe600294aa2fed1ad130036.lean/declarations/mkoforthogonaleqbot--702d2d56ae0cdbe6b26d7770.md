# mkOfOrthogonalEqBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f5cc6fa1646831eac2cd2d3d0e7809e02459a5886ec25fb121166d9c0d7b891e",
  "kind": "def",
  "lexical_name": "mkOfOrthogonalEqBot",
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
  "slug": "mkoforthogonaleqbot--702d2d56ae0cdbe6b26d7770",
  "source": {
    "blob": "2b67b8cc8a3eab5000f6646b8c9115c5b55a963f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 763,
    "line": 753,
    "path": "GRWTSK/Algebra/LinearAlgebra/PiL2/Variante721db719dcfdaa8b26fca4dded8b6b7b47206e46fe600294aa2fed1ad130036.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:702d2d56ae0cdbe6b26d77707c3089cfb1618926cfc8523759299865f4221067",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PiL2/Variante721db719dcfdaa8b26fca4dded8b6b7b47206e46fe600294aa2fed1ad130036.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f5cc6fa1646831eac2cd2d3d0e7809e02459a5886ec25fb121166d9c0d7b891e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 753–763.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def mkOfOrthogonalEqBot (hon : Orthonormal 𝕜 v) (hsp : (span 𝕜 (Set.range v))ᗮ = ⊥) :
    OrthonormalBasis ι 𝕜 E :=
  OrthonormalBasis.mk hon
    (by
      refine Eq.ge ?_
      have : FiniteDimensional 𝕜 (span 𝕜 (range v)) :=
        FiniteDimensional.span_of_finite 𝕜 (finite_range v)
      have : CompleteSpace (span 𝕜 (range v)) := FiniteDimensional.complete 𝕜 _
      rwa [orthogonal_eq_bot_iff] at hsp)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PiL2/Variante721db719dcfdaa8b26fca4dded8b6b7b47206e46fe600294aa2fed1ad130036.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PiL2/Variante721db719dcfdaa8b26fca4dded8b6b7b47206e46fe600294aa2fed1ad130036.lean#L753).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b67b8cc8a3eab5000f6646b8c9115c5b55a963f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
