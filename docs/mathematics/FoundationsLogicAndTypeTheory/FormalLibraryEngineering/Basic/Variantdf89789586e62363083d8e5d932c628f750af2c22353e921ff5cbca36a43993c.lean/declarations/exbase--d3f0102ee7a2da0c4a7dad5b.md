# ExBase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:661f32351b7b1e13a09ee5be39906174a8311327ea06bc4dd3f838155339bf99",
  "kind": "inductive",
  "lexical_name": "ExBase",
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
  "slug": "exbase--d3f0102ee7a2da0c4a7dad5b",
  "source": {
    "blob": "bcfd61f1f8dda3cfa20a73d9fc468d73c06e288d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 110,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdf89789586e62363083d8e5d932c628f750af2c22353e921ff5cbca36a43993c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d3f0102ee7a2da0c4a7dad5b72daf250c0fa3cda206de0ad2155bec0b6d4c703",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdf89789586e62363083d8e5d932c628f750af2c22353e921ff5cbca36a43993c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:661f32351b7b1e13a09ee5be39906174a8311327ea06bc4dd3f838155339bf99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive ExBase : ∀ {α : Q(Type u)}, Q(CommSemiring $α) → (e : Q($α)) → Type
  /--
  An atomic expression `e` with id `id`.

  Atomic expressions are those which `ring` cannot parse any further.
  For instance, `a + (a % b)` has `a` and `(a % b)` as atoms.
  The `ring1` tactic does not normalize the subexpressions in atoms, but `ring_nf` does.

  Atoms in fact represent equivalence classes of expressions, modulo definitional equality.
  The field `index : ℕ` should be a unique number for each class,
  while `value : expr` contains a representative of this class.
  The function `resolve_atom` determines the appropriate atom for a given expression.
  -/
  | atom (id : ℕ) : ExBase sα e
  /-- A sum of monomials.  -/
  | sum (_ : ExSum sα e) : ExBase sα e

/--
A monomial, which is a product of powers of `ExBase` expressions,
terminated by a (nonzero) constant coefficient.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdf89789586e62363083d8e5d932c628f750af2c22353e921ff5cbca36a43993c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdf89789586e62363083d8e5d932c628f750af2c22353e921ff5cbca36a43993c.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcfd61f1f8dda3cfa20a73d9fc468d73c06e288d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
