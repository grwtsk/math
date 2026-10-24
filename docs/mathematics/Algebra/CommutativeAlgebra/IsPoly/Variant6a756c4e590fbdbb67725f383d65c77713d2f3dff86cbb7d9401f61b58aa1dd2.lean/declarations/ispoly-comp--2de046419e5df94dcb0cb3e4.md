# IsPoly₂.comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:87e3c246d665ed0eaa4a12b2a5459956ecc14ac0547f9ee0685bb0a1e610b567",
  "kind": "instance",
  "lexical_name": "IsPoly₂.comp",
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
  "slug": "ispoly-comp--2de046419e5df94dcb0cb3e4",
  "source": {
    "blob": "06c3a48d961f5fe5edab2d399be3bfecd4087a42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 230,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2de046419e5df94dcb0cb3e4ac20fea22d523f9cb85881001435939ba5bd91f8",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:87e3c246d665ed0eaa4a12b2a5459956ecc14ac0547f9ee0685bb0a1e610b567`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance IsPoly₂.comp {h f g} [hh : IsPoly₂ p h] [hf : IsPoly p f] [hg : IsPoly p g] :
    IsPoly₂ p fun _ _Rcr x y => h (f x) (g y) := by
  obtain ⟨φ, hf⟩ := hf
  obtain ⟨ψ, hg⟩ := hg
  obtain ⟨χ, hh⟩ := hh
  refine ⟨⟨fun n ↦ bind₁ (uncurry <|
    ![fun k ↦ rename (Prod.mk (0 : Fin 2)) (φ k),
      fun k ↦ rename (Prod.mk (1 : Fin 2)) (ψ k)]) (χ n), ?_⟩⟩
  intros
  funext n
  simp +unfoldPartialApp only [peval, aeval_bind₁, Function.comp, hh, hf, hg,
    uncurry]
  apply eval₂Hom_congr rfl _ rfl
  ext ⟨i, n⟩
  fin_cases i <;> simp [aeval_eq_eval₂Hom, eval₂Hom_rename, Function.comp_def]

/-- The composition of a polynomial function with a binary polynomial function is polynomial. -/
-- Porting note (https://github.com/leanprover-community/mathlib4/issues/10754): made this an instance
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06c3a48d961f5fe5edab2d399be3bfecd4087a42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
