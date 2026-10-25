# hrecOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:53bcad0b3f940adf21b5728a1b3fb07f2ca0a7bb8aa025f6d11f97f675c1c0d9",
  "kind": "abbrev",
  "lexical_name": "hrecOn",
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
  "slug": "hrecon--f6cca577726c2ea30a2c514e",
  "source": {
    "blob": "1fab3e725a3b89d0f36bba9b929c61cb1a68b3c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1960,
    "line": 1929,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta427efee8bddaa213003c7eae599a6f9db359b30e10b312e997a29580bad0cf9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f6cca577726c2ea30a2c514e72dc7210d35f95cc042754d37f24a215b7336fc2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta427efee8bddaa213003c7eae599a6f9db359b30e10b312e997a29580bad0cf9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:53bcad0b3f940adf21b5728a1b3fb07f2ca0a7bb8aa025f6d11f97f675c1c0d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1929–1960.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected abbrev hrecOn
    (q : Quot r)
    (f : (a : α) → motive (Quot.mk r a))
    (c : (a b : α) → (p : r a b) → f a ≍ f b)
    : motive q :=
  Quot.recOn q f fun a b p => eq_of_heq (eqRec_heq_iff.mpr (c a b p))

end
end Quot

set_option linter.unusedVariables.funArgs false in
/--
Quotient types coarsen the propositional equality for a type so that terms related by some
equivalence relation are considered equal. The equivalence relation is given by an instance of
`Setoid`.

Set-theoretically, `Quotient s` can seen as the set of equivalence classes of `α` modulo the
`Setoid` instance's relation `s.r`. Functions from `Quotient s` must prove that they respect `s.r`:
to define a function `f : Quotient s → β`, it is necessary to provide `f' : α → β` and prove that
for all `x : α` and `y : α`, `s.r x y → f' x = f' y`. `Quotient.lift` implements this operation.

The key quotient operators are:
 * `Quotient.mk` places elements of the underlying type `α` into the quotient.
 * `Quotient.lift` allows the definition of functions from the quotient to some other type.
 * `Quotient.sound` asserts the equality of elements related by `r`
 * `Quotient.ind` is used to write proofs about quotients by assuming that all elements are
   constructed with `Quotient.mk`.

`Quotient` is built on top of the primitive quotient type `Quot`, which does not require a proof
that the relation is an equivalence relation. `Quotient` should be used instead of `Quot` for
relations that actually are equivalence relations.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta427efee8bddaa213003c7eae599a6f9db359b30e10b312e997a29580bad0cf9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta427efee8bddaa213003c7eae599a6f9db359b30e10b312e997a29580bad0cf9.lean#L1929).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fab3e725a3b89d0f36bba9b929c61cb1a68b3c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
