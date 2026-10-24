# HeytingHomClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:96fa6a2643c20b09d51729514de0ec5761d7d5d3ebcdee60eaee11a84d4c3be9",
  "kind": "class",
  "lexical_name": "HeytingHomClass",
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
  "slug": "heytinghomclass--fccaa73601184bb70e726df6",
  "source": {
    "blob": "3551f58bb17a7defebd2621cbe57527cdaa8f0b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 69,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variantc494f58fffcdc96d5d6c50c782430b7ab140d912a7bdc3471f08249e77b112b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fccaa73601184bb70e726df6bb0e2318226e75f8d53d47eeb9753ed292fe5fe5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variantc494f58fffcdc96d5d6c50c782430b7ab140d912a7bdc3471f08249e77b112b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:96fa6a2643c20b09d51729514de0ec5761d7d5d3ebcdee60eaee11a84d4c3be9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class HeytingHomClass (F α β : Type*) [HeytingAlgebra α] [HeytingAlgebra β] [FunLike F α β] : Prop
    extends LatticeHomClass F α β where
  /-- The proposition that a Heyting homomorphism preserves the bottom element. -/
  map_bot (f : F) : f ⊥ = ⊥
  /-- The proposition that a Heyting homomorphism preserves the Heyting implication. -/
  map_himp (f : F) : ∀ a b, f (a ⇨ b) = f a ⇨ f b

/-- `CoheytingHomClass F α β` states that `F` is a type of co-Heyting homomorphisms.

You should extend this class when you extend `CoheytingHom`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variantc494f58fffcdc96d5d6c50c782430b7ab140d912a7bdc3471f08249e77b112b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variantc494f58fffcdc96d5d6c50c782430b7ab140d912a7bdc3471f08249e77b112b4.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3551f58bb17a7defebd2621cbe57527cdaa8f0b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
