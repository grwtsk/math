# FullStructure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:650a6c14e921ac4a923c564a632515c6b4affe6d84e3d463731f01b98ecc7dc3",
  "kind": "def",
  "lexical_name": "FullStructure",
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
  "slug": "fullstructure--cfe909140d513fe409bfd022",
  "source": {
    "blob": "fadc07f6988723ca51c6ec11e9a7f456a916d6af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 268,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FullDeclaration/Variantbdd41699d5c00e2df19a83f0f2a9a0809def1b4bb007a265b75c12f48f8fa531.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cfe909140d513fe409bfd0222480dfa4ef6cc51b72c7ed47316ede9bae42250f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FullDeclaration/Variantbdd41699d5c00e2df19a83f0f2a9a0809def1b4bb007a265b75c12f48f8fa531.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:650a6c14e921ac4a923c564a632515c6b4affe6d84e3d463731f01b98ecc7dc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FullStructure (declaration : FullModelDeclaration) : Prop :=
  declaration.profileVersion = 2 ∧
  declaration.coreSnapshot.sorts = [⟨0⟩] ∧
  declaration.coreSnapshot.occurrences.length = 1 ∧
  (∀ constructor ∈ declaration.coreSnapshot.constructors,
    (constructor.inputSorts = [] ∧ constructor.terminalSymbols =
      [(declaration.coreSnapshot.occurrences.head?.getD default).symbol]) ∨
    (constructor.inputSorts = [⟨0⟩] ∧ constructor.terminalSymbols = [])) ∧
  declaration.roles.version = 1 ∧ declaration.interpreter.version = 1 ∧
  declaration.critical.version = 1 ∧ declaration.involution.version = 1 ∧
  declaration.roles.table.cardinality ≤ 4 ∧ declaration.interpreter.table.cardinality ≤ 4 ∧
  declaration.variableCount ≤ 4 ∧
  declaration.involution.dimension ≤ 4 ∧
  declaration.catalog ≠ [] ∧ declaration.coreTree ∈ declaration.catalog ∧
  (catalogTerms declaration).Nodup ∧
  declaration.generators.map LicensedGenerator.id = List.range declaration.generators.length ∧
  (∀ generator ∈ declaration.generators,
    generator.assumption < declaration.coreSnapshot.assumptions.length ∧
    TermValid declaration.coreSnapshot declaration.variableCount generator.equation.left ∧
    TermValid declaration.coreSnapshot declaration.variableCount generator.equation.right ∧
    generator.equation.left.size ≤ declaration.coreSnapshot.limits.maxNodes ∧
    generator.equation.right.size ≤ declaration.coreSnapshot.limits.maxNodes) ∧
  (∀ term ∈ catalogTerms declaration, TermValid declaration.coreSnapshot 0 term) ∧
  declaration.catalog.length + declaration.generators.length +
    declaration.roles.table.rows.length + declaration.interpreter.table.rows.length +
    declaration.involution.forward.length + declaration.involution.inverse.length ≤
      declaration.coreSnapshot.limits.maxRecords ∧
  declaration.runRoles.length ≤ declaration.coreSnapshot.limits.maxNodes ∧
  CatalogSubtermClosed declaration

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FullDeclaration/Variantbdd41699d5c00e2df19a83f0f2a9a0809def1b4bb007a265b75c12f48f8fa531.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FullDeclaration/Variantbdd41699d5c00e2df19a83f0f2a9a0809def1b4bb007a265b75c12f48f8fa531.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fadc07f6988723ca51c6ec11e9a7f456a916d6af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
