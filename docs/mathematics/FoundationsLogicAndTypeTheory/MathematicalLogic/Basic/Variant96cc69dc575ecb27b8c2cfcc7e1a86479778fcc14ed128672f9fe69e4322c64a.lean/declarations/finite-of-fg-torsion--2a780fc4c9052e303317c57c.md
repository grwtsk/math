# finite_of_fg_torsion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a7a5d18bdace4135716cdeccf33b379af337f5be",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/96cc69dc575ecb27b8c2cfcc7e1a86479778fcc14ed128672f9fe69e4322c64a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:29e0251e-9737-f783-cba0-a2907a40db3a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:41aeb949-0ca4-cd3d-9a9a-860962b3f147",
  "kind": "theorem",
  "lexical_name": "finite_of_fg_torsion",
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
  "slug": "finite-of-fg-torsion--2a780fc4c9052e303317c57c",
  "source": {
    "blob": "a7a5d18bdace4135716cdeccf33b379af337f5be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 92,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96cc69dc575ecb27b8c2cfcc7e1a86479778fcc14ed128672f9fe69e4322c64a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a780fc4c9052e303317c57ce532aa236af47e7faf37c01de8ed2c82405f0d65",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96cc69dc575ecb27b8c2cfcc7e1a86479778fcc14ed128672f9fe69e4322c64a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41aeb949-0ca4-cd3d-9a9a-860962b3f147`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_of_fg_torsion [AddCommGroup M] [Module ℤ M] [Module.Finite ℤ M]
    (hM : Module.IsTorsion ℤ M) : _root_.Finite M := by
  rcases Module.equiv_directSum_of_isTorsion hM with ⟨ι, _, p, h, e, ⟨l⟩⟩
  haveI : ∀ i : ι, NeZero (p i ^ e i).natAbs := fun i =>
    ⟨Int.natAbs_ne_zero.mpr <| pow_ne_zero (e i) (h i).ne_zero⟩
  haveI : ∀ i : ι, _root_.Finite <| ℤ ⧸ Submodule.span ℤ {p i ^ e i} := fun i =>
    Finite.of_equiv _ (p i ^ e i).quotientSpanEquivZMod.symm.toEquiv
  haveI : _root_.Finite (⨁ i, ℤ ⧸ (Submodule.span ℤ {p i ^ e i} : Submodule ℤ ℤ)) :=
    Finite.of_equiv _ DFinsupp.equivFunOnFintype.symm
  exact Finite.of_equiv _ l.symm.toEquiv

end Module

variable (G : Type u)

namespace AddCommGroup

variable [AddCommGroup G]

/-- **Structure theorem of finitely generated abelian groups** : Any finitely generated abelian
group is the product of a power of `ℤ` and a direct sum of some `ZMod (p i ^ e i)` for some
prime powers `p i ^ e i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96cc69dc575ecb27b8c2cfcc7e1a86479778fcc14ed128672f9fe69e4322c64a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96cc69dc575ecb27b8c2cfcc7e1a86479778fcc14ed128672f9fe69e4322c64a.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7a5d18bdace4135716cdeccf33b379af337f5be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
