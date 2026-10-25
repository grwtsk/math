# «proof_wanted»

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cdb6a0a7328ad4fdc003ab6d44823cacd1db62222de65ae6cc3c8a9b3be66359",
  "kind": "def",
  "lexical_name": "«proof_wanted»",
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
  "slug": "proof-wanted--3f8bade975a288ab008d318a",
  "source": {
    "blob": "29ca012651350b3adfc2c5a6c1af1a3770c0d137",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 725,
    "line": 696,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Variante1a27bd954d8afea0d38053876f858915d934726c113c3cfd51ea4ce84753254.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f8bade975a288ab008d318aa534748d7fb4b4ebba2da37eeb35e1f2c4a857da",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Variante1a27bd954d8afea0d38053876f858915d934726c113c3cfd51ea4ce84753254.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cdb6a0a7328ad4fdc003ab6d44823cacd1db62222de65ae6cc3c8a9b3be66359`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 696–725.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def «proof_wanted» := leading_parser
  Parser.Command.declModifiers false >> "proof_wanted" >>
    Parser.Command.declId >> Parser.ppIndent Parser.Command.declSig >>
    Parser.optional (" := " >> Parser.termParser)

/-- This construction would be a welcome contribution to the library!

The syntax mirrors `theorem_wanted` but admits any `Sort` (not just `Prop`). It accepts the same
`❰…❱` bracket syntax for cross-referencing earlier `theorem_wanted` or `def_wanted` declarations,
including parametrised ones — `❰foo❱ x y` applies `foo`'s parameters. A body without any `❰…❱`
reference is rejected with an actionable "Try this:" suggesting `def`.

A **bodyless** `def_wanted` records an opaque placeholder of type `... → DefWanted type` (a hole). A
`def_wanted` **with a body** is instead emitted as a genuine `@[reducible]` definition of type
`... → DerivedWanted type` (carrying the body), so `❰foo❱` inlines it and is definitionally equal to
its body — letting you derive honest accessors and data on top of opaque holes. The `DerivedWanted`
wrapper keeps it from being used directly as a value of `type`; only `❰…❱` accesses it. Either
way no `axiom`/`sorry` is introduced (see the module docstring).

Modifiers (such as `@[simp]`) are accepted for syntactic compatibility with `def` but are
currently ignored.

Typical usage:
```
def_wanted decision_procedure (n : Nat) : Decidable (Nat.Prime n)

def_wanted prime_dec_3 : Decidable (Nat.Prime 3) := ❰decision_procedure❱ 3
```
-/
@[command_parser]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Variante1a27bd954d8afea0d38053876f858915d934726c113c3cfd51ea4ce84753254.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Variante1a27bd954d8afea0d38053876f858915d934726c113c3cfd51ea4ce84753254.lean#L696).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29ca012651350b3adfc2c5a6c1af1a3770c0d137` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
