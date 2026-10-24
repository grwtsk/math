# Module.free_of_finite_type_torsion_free

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eaefd32c-1acd-a49b-77b1-8dd0129a6ee3",
  "kind": "theorem",
  "lexical_name": "Module.free_of_finite_type_torsion_free",
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
  "slug": "module-free-of-finite-type-torsion-free--d563cd3f1ec056e25c923548",
  "source": {
    "blob": "ec53b8f86360e7e285ca6ba9761a385f806676e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 419,
    "line": 412,
    "path": "GRWTSK/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d563cd3f1ec056e25c9235482d7c149add5ed39a5ddcf93a87d8b32ea7c348dd",
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

Occurrence: `result:eaefd32c-1acd-a49b-77b1-8dd0129a6ee3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–419.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Module.free_of_finite_type_torsion_free [_root_.Finite ι] {s : ι → M}
    (hs : span R (range s) = ⊤) [NoZeroSMulDivisors R M] : Module.Free R M := by
  cases nonempty_fintype ι
  obtain ⟨n, b⟩ : Σn, Basis (Fin n) R M := Module.basisOfFiniteTypeTorsionFree hs
  exact Module.Free.of_basis b
#align module.free_of_finite_type_torsion_free Module.free_of_finite_type_torsion_free

/-- A finite type torsion free module over a PID admits a basis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec53b8f86360e7e285ca6ba9761a385f806676e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
