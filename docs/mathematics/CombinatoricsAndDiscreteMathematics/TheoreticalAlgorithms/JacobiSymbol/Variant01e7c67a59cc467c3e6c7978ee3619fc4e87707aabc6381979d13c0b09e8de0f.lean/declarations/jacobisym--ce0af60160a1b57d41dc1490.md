# jacobiSym

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d06e46f1eceed62071155e3957ebd965848a773123c2c3924dfa26cceca11787",
  "kind": "def",
  "lexical_name": "jacobiSym",
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
  "slug": "jacobisym--ce0af60160a1b57d41dc1490",
  "source": {
    "blob": "b55fee28424cf6eec4d2ef2414683aea2ecfa3c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 94,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/JacobiSymbol/Variant01e7c67a59cc467c3e6c7978ee3619fc4e87707aabc6381979d13c0b09e8de0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce0af60160a1b57d41dc149050f249679a4670c9e16c32db5d774217a831a622",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/JacobiSymbol/Variant01e7c67a59cc467c3e6c7978ee3619fc4e87707aabc6381979d13c0b09e8de0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d06e46f1eceed62071155e3957ebd965848a773123c2c3924dfa26cceca11787`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def jacobiSym (a : ℤ) (b : ℕ) : ℤ :=
  (b.primeFactorsList.pmap (fun p pp => @legendreSym p ⟨pp⟩ a) fun _ pf =>
    prime_of_mem_primeFactorsList pf).prod

-- Notation for the Jacobi symbol.
@[inherit_doc]
scoped[NumberTheorySymbols] notation "J(" a " | " b ")" => jacobiSym a b

open scoped NumberTheorySymbols

/-!
### Properties of the Jacobi symbol
-/


namespace jacobiSym

/-- The symbol `J(a | 0)` has the value `1`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/JacobiSymbol/Variant01e7c67a59cc467c3e6c7978ee3619fc4e87707aabc6381979d13c0b09e8de0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/JacobiSymbol/Variant01e7c67a59cc467c3e6c7978ee3619fc4e87707aabc6381979d13c0b09e8de0f.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b55fee28424cf6eec4d2ef2414683aea2ecfa3c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
