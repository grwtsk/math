# sectionsSubsemiring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2835361075871cc612ce6a97d5c2e080155a75212a8f9c2ab9517cb2b9864431",
  "kind": "def",
  "lexical_name": "sectionsSubsemiring",
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
  "slug": "sectionssubsemiring--8ecf11da3587e743be7d9fa5",
  "source": {
    "blob": "c6389c9ad2d828799cd7a8c3860ff2a4b589f0ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 59,
    "path": "GRWTSK/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8ecf11da3587e743be7d9fa5ab790ea8b54733ed4d36ac746e788f8b516d18da",
  "verification": {
    "reference": "docs/verification/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2835361075871cc612ce6a97d5c2e080155a75212a8f9c2ab9517cb2b9864431`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sectionsSubsemiring (F : J ⥤ SemiRingCatMax.{v, u}) : Subsemiring.{max v u} (∀ j, F.obj j) :=
  -- Porting note : if `f` and `g` were inlined, it does not compile
  letI f : J ⥤ AddMonCat.{max v u} := F ⋙ forget₂ SemiRingCatMax.{v, u} AddCommMonCat.{max v u} ⋙
    forget₂ AddCommMonCat AddMonCat
  letI g : J ⥤ MonCat.{max v u} := F ⋙ forget₂ SemiRingCatMax.{v, u} MonCat.{max v u}
  { (MonCat.sectionsSubmonoid.{v, u} (J := J) g),
    (AddMonCat.sectionsAddSubmonoid.{v, u} (J := J) f) with
    carrier := (F ⋙ forget SemiRingCat).sections }
set_option linter.uppercaseLean3 false in
#align SemiRing.sections_subsemiring SemiRingCat.sectionsSubsemiring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6389c9ad2d828799cd7a8c3860ff2a4b589f0ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
