# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c5d10e5c6954efcd0a683f5bbac46a8685b7c0f347a59c09b1aff18ff8466916",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--b2cc8b677b2c6fa701748f3e",
  "source": {
    "blob": "f70802d1aaab695449949288fd5f57b427d2c6b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 863,
    "line": 846,
    "path": "GRWTSK/Algebra/GroupTheory/CoprodI/Variant1ebd6d4121afb504d558087cf7f6eb2d66b79b640434a2a2b2238fbdbf99f707.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b2cc8b677b2c6fa701748f3e01136e93d3c8e62a1e86da7acf2372343eef7ec3",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CoprodI/Variant1ebd6d4121afb504d558087cf7f6eb2d66b79b640434a2a2b2238fbdbf99f707.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c5d10e5c6954efcd0a683f5bbac46a8685b7c0f347a59c09b1aff18ff8466916`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 846–863.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {ι : Type*} (G : ι → Type*) [∀ i, Group (G i)] [hG : ∀ i, IsFreeGroup (G i)] :
    IsFreeGroup (CoprodI G) where
  Generators := Σi, IsFreeGroup.Generators (G i)
  MulEquiv' :=
    MonoidHom.toMulEquiv
      (FreeGroup.lift fun x : Σi, IsFreeGroup.Generators (G i) =>
        CoprodI.of (IsFreeGroup.of x.2 : G x.1))
      (CoprodI.lift fun i : ι =>
        (IsFreeGroup.lift fun x : IsFreeGroup.Generators (G i) =>
            FreeGroup.of (⟨i, x⟩ : Σi, IsFreeGroup.Generators (G i)) :
          G i →* FreeGroup (Σi, IsFreeGroup.Generators (G i))))
      (by ext; simp)
      (by ext; simp)

-- NB: One might expect this theorem to be phrased with ℤ, but ℤ is an additive group,
-- and using `Multiplicative ℤ` runs into diamond issues.
/-- A free group is a free product of copies of the free_group over one generator. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CoprodI/Variant1ebd6d4121afb504d558087cf7f6eb2d66b79b640434a2a2b2238fbdbf99f707.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CoprodI/Variant1ebd6d4121afb504d558087cf7f6eb2d66b79b640434a2a2b2238fbdbf99f707.lean#L846).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f70802d1aaab695449949288fd5f57b427d2c6b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
