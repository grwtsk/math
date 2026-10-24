# finite_finset_sup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:41c40c533b5ffeb5ae7fe8f2c47bdd5f14410cb72e87846942a7109b10cbc6ff",
  "kind": "instance",
  "lexical_name": "finite_finset_sup",
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
  "slug": "finite-finset-sup--98e0e82e259386abd80a4868",
  "source": {
    "blob": "aa3a788de0edbe021892dc5ba4a97bc2955642ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 439,
    "line": 425,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant69b7f48bd19b17b0584a826bf38c8c84b49b0604d1b7e20e69f274113a4fa801.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:98e0e82e259386abd80a4868c004cd088ce943f43038c358391928e08995fb64",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant69b7f48bd19b17b0584a826bf38c8c84b49b0604d1b7e20e69f274113a4fa801.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:41c40c533b5ffeb5ae7fe8f2c47bdd5f14410cb72e87846942a7109b10cbc6ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 425–439.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance finite_finset_sup {ι : Type*} (s : Finset ι) (S : ι → Submodule R V)
    [∀ i, Module.Finite R (S i)] : Module.Finite R (s.sup S : Submodule R V) := by
  refine s.sup_induction (f := S) (p := fun i => Module.Finite R ↑i) (Module.Finite.bot R V) ?_
    inferInstance
  intro S₁ hS₁ S₂ hS₂
  exact finite_sup S₁ S₂

section RestrictScalars

variable {R : Type*} [Semiring R]
variable {M : Type*} [AddCommMonoid M] [Module R M]
variable {A : Type*} [Semiring A] [Module R A] [Module A M] [IsScalarTower R A M]
variable {S : Submodule A M}

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant69b7f48bd19b17b0584a826bf38c8c84b49b0604d1b7e20e69f274113a4fa801.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant69b7f48bd19b17b0584a826bf38c8c84b49b0604d1b7e20e69f274113a4fa801.lean#L425).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa3a788de0edbe021892dc5ba4a97bc2955642ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
