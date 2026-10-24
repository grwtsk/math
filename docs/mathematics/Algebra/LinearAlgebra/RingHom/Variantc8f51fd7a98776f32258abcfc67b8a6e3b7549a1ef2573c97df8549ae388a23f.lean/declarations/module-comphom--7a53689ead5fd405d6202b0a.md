# Module.compHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9101718a4dc114e260e2fb2a1964f799d4420dfd6fff546cb57599f400ee4c75",
  "kind": "abbrev",
  "lexical_name": "Module.compHom",
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
  "slug": "module-comphom--7a53689ead5fd405d6202b0a",
  "source": {
    "blob": "820a6c36aa16644708776fa65fae6c93dd1eeada",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 65,
    "path": "GRWTSK/Algebra/LinearAlgebra/RingHom/Variantc8f51fd7a98776f32258abcfc67b8a6e3b7549a1ef2573c97df8549ae388a23f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a53689ead5fd405d6202b0aaed426aeedf3b8103a7b82b672fcd08e33325b03",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RingHom/Variantc8f51fd7a98776f32258abcfc67b8a6e3b7549a1ef2573c97df8549ae388a23f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9101718a4dc114e260e2fb2a1964f799d4420dfd6fff546cb57599f400ee4c75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev Module.compHom [Semiring S] (f : S →+* R) : Module S M :=
  { MulActionWithZero.compHom M f.toMonoidWithZeroHom, DistribMulAction.compHom M (f : S →* R) with
    -- Porting note: the `show f (r + s) • x = f r • x + f s • x` wasn't needed in mathlib3.
    -- Somehow, now that `SMul` is heterogeneous, it can't unfold earlier fields of a definition for
    -- use in later fields.  See
    -- https://leanprover.zulipchat.com/#narrow/stream/287929-mathlib4/topic/Heterogeneous.20scalar.20multiplication
    -- TODO(jmc): there should be a rw-lemma `smul_comp` close to `SMulZeroClass.compFun`
    add_smul := fun r s x => show f (r + s) • x = f r • x + f s • x by simp [add_smul] }

end AddCommMonoid

/-- A ring homomorphism `f : R →+* M` defines a module structure by `r • x = f r * x`.
See note [reducible non-instances]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RingHom/Variantc8f51fd7a98776f32258abcfc67b8a6e3b7549a1ef2573c97df8549ae388a23f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RingHom/Variantc8f51fd7a98776f32258abcfc67b8a6e3b7549a1ef2573c97df8549ae388a23f.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `820a6c36aa16644708776fa65fae6c93dd1eeada` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
