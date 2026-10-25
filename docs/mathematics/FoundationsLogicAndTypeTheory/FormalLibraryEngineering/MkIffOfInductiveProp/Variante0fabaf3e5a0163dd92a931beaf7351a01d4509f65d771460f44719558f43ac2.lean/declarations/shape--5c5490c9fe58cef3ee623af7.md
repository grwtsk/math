# Shape

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:69423f0dcb29bb3dc73e1c3aa01eaa2875abfe69e05e2800d17f33b476f4f0a6",
  "kind": "structure",
  "lexical_name": "Shape",
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
  "slug": "shape--5c5490c9fe58cef3ee623af7",
  "source": {
    "blob": "678f6cb477ddde135494471e1ae103f04b1b86ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 119,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variante0fabaf3e5a0163dd92a931beaf7351a01d4509f65d771460f44719558f43ac2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c5490c9fe58cef3ee623af782076151de35679eac816ebf6f441a43ace413aa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variante0fabaf3e5a0163dd92a931beaf7351a01d4509f65d771460f44719558f43ac2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:69423f0dcb29bb3dc73e1c3aa01eaa2875abfe69e05e2800d17f33b476f4f0a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
structure Shape : Type where
  /-- For each forall-bound variable in the type of the constructor, minus
  the "params" that apply to the entire inductive type, this list contains `true`
  if that variable has been kept after `compactRelation`.

  For example, `List.Chain.nil` has type
  ```lean
    ∀ {α : Type u_1} {R : α → α → Prop} {a : α}, List.Chain R a []`
  ```
  and the first two variables `α` and `R` are "params", while the `a : α` gets
  eliminated in a `compactRelation`, so `variablesKept = [false]`.

  `List.Chain.cons` has type
  ```lean
    ∀ {α : Type u_1} {R : α → α → Prop} {a b : α} {l : List α},
       R a b → List.Chain R b l → List.Chain R a (b :: l)
  ```
  and the `a : α` gets eliminated, so `variablesKept = [false,true,true,true,true]`.
  -/
  variablesKept : List Bool

  /-- The number of equalities, or `none` in the case when we've reduced something
  of the form `p ∧ True` to just `p`.
  -/
  neqs : Option Nat

/-- Converts an inductive constructor `c` into a `Shape` that will be used later in
while proving the iff theorem, and a proposition representing the constructor.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variante0fabaf3e5a0163dd92a931beaf7351a01d4509f65d771460f44719558f43ac2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variante0fabaf3e5a0163dd92a931beaf7351a01d4509f65d771460f44719558f43ac2.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `678f6cb477ddde135494471e1ae103f04b1b86ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
