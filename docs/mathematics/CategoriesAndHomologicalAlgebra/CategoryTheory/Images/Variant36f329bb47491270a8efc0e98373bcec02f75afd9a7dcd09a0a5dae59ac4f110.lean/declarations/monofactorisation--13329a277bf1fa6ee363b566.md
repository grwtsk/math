# MonoFactorisation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:90b632383f77eb7eee4fb66a88645efa976f29ff3a3b36f88828a0624e3e9324",
  "kind": "structure",
  "lexical_name": "MonoFactorisation",
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
  "slug": "monofactorisation--13329a277bf1fa6ee363b566",
  "source": {
    "blob": "c912a46b38aa9b42cc175e54b74f9fbb89857e82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 70,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant36f329bb47491270a8efc0e98373bcec02f75afd9a7dcd09a0a5dae59ac4f110.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:13329a277bf1fa6ee363b56600ee97a6f0ba8b7d5067627a3314df7fffcbad00",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant36f329bb47491270a8efc0e98373bcec02f75afd9a7dcd09a0a5dae59ac4f110.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:90b632383f77eb7eee4fb66a88645efa976f29ff3a3b36f88828a0624e3e9324`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MonoFactorisation (f : X ⟶ Y) where
  I : C -- Porting note: violates naming conventions but can't think a better replacement
  m : I ⟶ Y
  [m_mono : Mono m]
  e : X ⟶ I
  fac : e ≫ m = f := by aesop_cat

attribute [inherit_doc MonoFactorisation] MonoFactorisation.I MonoFactorisation.m
  MonoFactorisation.m_mono MonoFactorisation.e MonoFactorisation.fac

attribute [reassoc (attr := simp)] MonoFactorisation.fac

attribute [instance] MonoFactorisation.m_mono

namespace MonoFactorisation

/-- The obvious factorisation of a monomorphism through itself. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant36f329bb47491270a8efc0e98373bcec02f75afd9a7dcd09a0a5dae59ac4f110.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant36f329bb47491270a8efc0e98373bcec02f75afd9a7dcd09a0a5dae59ac4f110.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c912a46b38aa9b42cc175e54b74f9fbb89857e82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
