# Pi.instZeroLEOneClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:94b608f93a6c75f311019b15c0e6e237592402d8d764b875d963f73b1ebc3d63",
  "kind": "instance",
  "lexical_name": "Pi.instZeroLEOneClass",
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
  "slug": "pi-instzeroleoneclass--3c1b76628b18fb05def39558",
  "source": {
    "blob": "c9d4e15447f0287b89cb7df60fc974f1aa524bb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 41,
    "path": "GRWTSK/Algebra/UniversalAlgebra/ZeroLEOne/Variant15653df2fdf13d454ac2448fec47c319379b61b60624493962631de8f0c7fa3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c1b76628b18fb05def395586606bb8e28ba9c57c3313f9896dd65d93edd6021",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/ZeroLEOne/Variant15653df2fdf13d454ac2448fec47c319379b61b60624493962631de8f0c7fa3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:94b608f93a6c75f311019b15c0e6e237592402d8d764b875d963f73b1ebc3d63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Pi.instZeroLEOneClass {ι : Type*} {R : ι → Type*} [∀ i, Zero (R i)] [∀ i, One (R i)]
    [∀ i, LE (R i)] [∀ i, ZeroLEOneClass (R i)] : ZeroLEOneClass (∀ i, R i) :=
  ⟨fun _ ↦ zero_le_one⟩

section
variable [Zero α] [One α] [PartialOrder α] [ZeroLEOneClass α] [NeZero (1 : α)]

/-- See `zero_lt_one'` for a version with the type explicit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/ZeroLEOne/Variant15653df2fdf13d454ac2448fec47c319379b61b60624493962631de8f0c7fa3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/ZeroLEOne/Variant15653df2fdf13d454ac2448fec47c319379b61b60624493962631de8f0c7fa3f.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9d4e15447f0287b89cb7df60fc974f1aa524bb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
