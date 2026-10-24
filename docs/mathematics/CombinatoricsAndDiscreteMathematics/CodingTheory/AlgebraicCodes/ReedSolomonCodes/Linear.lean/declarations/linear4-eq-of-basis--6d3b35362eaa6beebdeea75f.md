# linear4_eq_of_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4755d5f7-4b1f-c5c7-10fb-ad0ee8e962b9",
  "kind": "theorem",
  "lexical_name": "linear4_eq_of_basis",
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
  "slug": "linear4-eq-of-basis--6d3b35362eaa6beebdeea75f",
  "source": {
    "blob": "f5d7c98902dcce01503658e26cfcd3401c669145",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 81,
    "path": "GRWTSK/InformationTheory/ReedSolomon/Linear.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d3b35362eaa6beebdeea75ff243fd124ea6235c32735ab1152ff5f50feae064",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Linear.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4755d5f7-4b1f-c5c7-10fb-ad0ee8e962b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linear4_eq_of_basis (f g : Four → Word)
    (hf : XorLinear4 f) (hg : XorLinear4 g)
    (hb : ∀ j : Fin 4, ∀ i, i < 128 → f (slot j (basis i)) = g (slot j (basis i))) :
    f = g := by
  have hp : ∀ j : Fin 4, ∀ a, f (slot j a) = g (slot j a) := by
    intro j
    apply congrFun (linear_eq_of_basis (fun a => f (slot j a)) (fun a => g (slot j a))
      ?_ ?_ (hb j))
    · constructor
      · simpa [slot, zero] using hf.1
      · intro a b
        have hs : slot j (a ^^^ b) = xor (slot j a) (slot j b) := by
          unfold slot
          split <;> (try split) <;> (try split) <;> simp_all [xor]
        change f (slot j (a ^^^ b)) = _
        rw [hs, hf.2]
    · constructor
      · simpa [slot, zero] using hg.1
      · intro a b
        have hs : slot j (a ^^^ b) = xor (slot j a) (slot j b) := by
          unfold slot
          split <;> (try split) <;> (try split) <;> simp_all [xor]
        change g (slot j (a ^^^ b)) = _
        rw [hs, hg.2]
  funext x
  have hx : x = xor (xor (slot 0 x.a) (slot 1 x.b))
      (xor (slot 2 x.c) (slot 3 x.d)) := by
    apply Four.ext <;> simp [slot, xor]
  calc
    f x = f (xor (xor (slot 0 x.a) (slot 1 x.b))
      (xor (slot 2 x.c) (slot 3 x.d))) := congrArg f hx
    _ = (f (slot 0 x.a) ^^^ f (slot 1 x.b)) ^^^
      (f (slot 2 x.c) ^^^ f (slot 3 x.d)) := by rw [hf.2, hf.2, hf.2]
    _ = (g (slot 0 x.a) ^^^ g (slot 1 x.b)) ^^^
      (g (slot 2 x.c) ^^^ g (slot 3 x.d)) := by rw [hp, hp, hp, hp]
    _ = g (xor (xor (slot 0 x.a) (slot 1 x.b))
      (xor (slot 2 x.c) (slot 3 x.d))) := by rw [hg.2, hg.2, hg.2]
    _ = g x := congrArg g hx.symm

end GRWTSK.InformationTheory.ReedSolomon
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Linear.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/InformationTheory/ReedSolomon/Linear.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5d7c98902dcce01503658e26cfcd3401c669145` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
