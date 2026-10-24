# equivOfAlgebraic'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b9080910ea5c9d52d92633e5dd078b5a6475109e520c94188cb35756f3cc905c",
  "kind": "def",
  "lexical_name": "equivOfAlgebraic'",
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
  "slug": "equivofalgebraic--0df0c41e91e0822fcd497e4a",
  "source": {
    "blob": "1740914a27f12e5f513bad7fae5158bba963861d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 466,
    "line": 453,
    "path": "GRWTSK/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0df0c41e91e0822fcd497e4ac615097ce7fc1805419c25c301b2321cb7dd3937",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b9080910ea5c9d52d92633e5dd078b5a6475109e520c94188cb35756f3cc905c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 453–466.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def equivOfAlgebraic' [Nontrivial S] [NoZeroSMulDivisors R S]
    (hRL : Algebra.IsAlgebraic R L) : L ≃ₐ[R] M := by
  letI : NoZeroSMulDivisors R L := NoZeroSMulDivisors.of_algebraMap_injective <| by
    rw [IsScalarTower.algebraMap_eq R S L]
    exact (Function.Injective.comp (NoZeroSMulDivisors.algebraMap_injective S L)
            (NoZeroSMulDivisors.algebraMap_injective R S) : _)
  letI : IsAlgClosure R L :=
    { alg_closed := IsAlgClosure.alg_closed S
      algebraic := hRL }
  exact IsAlgClosure.equiv _ _ _
#align is_alg_closure.equiv_of_algebraic' IsAlgClosure.equivOfAlgebraic'

/-- A (random) isomorphism between an algebraic closure of `K` and an algebraic closure
  of an algebraic extension of `K` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean#L453).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1740914a27f12e5f513bad7fae5158bba963861d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
