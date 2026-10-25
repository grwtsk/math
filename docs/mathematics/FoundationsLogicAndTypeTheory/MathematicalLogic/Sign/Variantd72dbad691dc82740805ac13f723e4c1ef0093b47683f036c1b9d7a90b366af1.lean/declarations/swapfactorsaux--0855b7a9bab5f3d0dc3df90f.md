# swapFactorsAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b871eed49a0dacc3d793f34ed0f59bb9700a0cecb8d62a78b49d2640b359af4",
  "kind": "def",
  "lexical_name": "swapFactorsAux",
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
  "slug": "swapfactorsaux--0855b7a9bab5f3d0dc3df90f",
  "source": {
    "blob": "0dbd8f0cf4feaba620e7e66006c7e667527c2852",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 66,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0855b7a9bab5f3d0dc3df90fe22d278e1fa565f45de743e63d879897da57ba3e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b871eed49a0dacc3d793f34ed0f59bb9700a0cecb8d62a78b49d2640b359af4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def swapFactorsAux :
    ∀ (l : List α) (f : Perm α),
      (∀ {x}, f x ≠ x → x ∈ l) → { l : List (Perm α) // l.prod = f ∧ ∀ g ∈ l, IsSwap g }
  | [] => fun f h =>
    ⟨[],
      Equiv.ext fun x => by
        rw [List.prod_nil]
        exact (Classical.not_not.1 (mt h List.not_mem_nil)).symm,
      by simp⟩
  | x::l => fun f h =>
    if hfx : x = f x then
      swapFactorsAux l f fun {y} hy =>
        List.mem_of_ne_of_mem (fun h : y = x => by simp [h, hfx.symm] at hy) (h hy)
    else
      let m :=
        swapFactorsAux l (swap x (f x) * f) fun {y} hy =>
          have : f y ≠ y ∧ y ≠ x := ne_and_ne_of_swap_mul_apply_ne_self hy
          List.mem_of_ne_of_mem this.2 (h this.1)
      ⟨swap x (f x)::m.1, by
        rw [List.prod_cons, m.2.1, ← mul_assoc, mul_def (swap x (f x)), swap_swap, ← one_def,
          one_mul],
        fun {_} hg => ((List.mem_cons).1 hg).elim (fun h => ⟨x, f x, hfx, h⟩) (m.2.2 _)⟩

/-- `swapFactors` represents a permutation as a product of a list of transpositions.
The representation is non unique and depends on the linear order structure.
For types without linear order `truncSwapFactors` can be used. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0dbd8f0cf4feaba620e7e66006c7e667527c2852` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
