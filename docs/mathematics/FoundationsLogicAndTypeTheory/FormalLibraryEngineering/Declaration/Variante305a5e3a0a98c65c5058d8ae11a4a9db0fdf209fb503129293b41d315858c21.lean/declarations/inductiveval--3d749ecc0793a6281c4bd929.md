# InductiveVal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:401255fae90b12deb9d0c5570a0c12081c3b4517ce160c9e61810986d6c6fb42",
  "kind": "structure",
  "lexical_name": "InductiveVal",
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
  "slug": "inductiveval--3d749ecc0793a6281c4bd929",
  "source": {
    "blob": "ac8205f629c7a1a171084692e7c62d4ee3eeb44c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 269,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variante305a5e3a0a98c65c5058d8ae11a4a9db0fdf209fb503129293b41d315858c21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3d749ecc0793a6281c4bd929a3bfa40b7bef830d18fabb330780cd7d95b50908",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variante305a5e3a0a98c65c5058d8ae11a4a9db0fdf209fb503129293b41d315858c21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:401255fae90b12deb9d0c5570a0c12081c3b4517ce160c9e61810986d6c6fb42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
structure InductiveVal extends ConstantVal where
  /-- Number of parameters. A parameter is an argument to the defined type that is fixed over constructors.
  An example of this is the `α : Type` argument in the vector constructors
  `nil : Vector α 0` and `cons : α → Vector α n → Vector α (n+1)`.

  The intuition is that the inductive type must exhibit _parametric polymorphism_ over the inductive
  parameter, as opposed to _ad-hoc polymorphism_.
  -/
  numParams : Nat
  /-- Number of indices. An index is an argument that varies over constructors.

  An example of this is the `n : Nat` argument in the vector constructor `cons : α → Vector α n → Vector α (n+1)`.
  -/
  numIndices : Nat
  /-- List of all (including this one) inductive datatypes in the mutual declaration containing this one -/
  all : List Name
  /-- List of the names of the constructors for this inductive datatype. -/
  ctors : List Name
  /-- Number of auxiliary data types produced from nested occurrences.
  An inductive definition `T` is nested when there is a constructor with an argument `x : F T`,
   where `F : Type → Type` is some suitably behaved (ie strictly positive) function (Eg `Array T`, `List T`, `T × T`, ...).  -/
  numNested : Nat
  /-- `true` when recursive (that is, the inductive type appears as an argument in a constructor). -/
  isRec : Bool
  /-- Whether the definition is flagged as unsafe. -/
  isUnsafe : Bool
  /-- An inductive type is called reflexive if it has at least one constructor that takes as an argument a function returning the
  same type we are defining.
  Consider the type:
  ```
  inductive WideTree where
  | branch: (Nat -> WideTree) -> WideTree
  | leaf: WideTree
  ```
  this is reflexive due to the presence of the `branch : (Nat -> WideTree) -> WideTree` constructor.

  See also: 'Inductive Definitions in the system Coq Rules and Properties' by Christine Paulin-Mohring
  Section 2.2, Definition 3
  -/
  isReflexive : Bool

  deriving Inhabited

@[export lean_mk_inductive_val]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variante305a5e3a0a98c65c5058d8ae11a4a9db0fdf209fb503129293b41d315858c21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variante305a5e3a0a98c65c5058d8ae11a4a9db0fdf209fb503129293b41d315858c21.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac8205f629c7a1a171084692e7c62d4ee3eeb44c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
