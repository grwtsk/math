# Result.isRat'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd12e21bde243512b616f47786e94f601d2eb72b27014f60769ddd1984276fe0",
  "kind": "def",
  "lexical_name": "Result.isRat'",
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
  "slug": "result-israt--6e30f4e662d42d48cb6ae9bf",
  "source": {
    "blob": "d88113fb3ec45693170e797505bca22702d89d2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 456,
    "line": 447,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Varianta5a6d0e6b030912f47ccaf7a47285e6a6c6268591e707dc10ee0fa84341529d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e30f4e662d42d48cb6ae9bf06218eda65bf4df3aecf727d0dc960b45dfc8954",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Varianta5a6d0e6b030912f47ccaf7a47285e6a6c6268591e707dc10ee0fa84341529d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd12e21bde243512b616f47786e94f601d2eb72b27014f60769ddd1984276fe0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 447–456.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Result.isRat' {α : Q(Type u)} {x : Q($α)} (inst : Q(DivisionRing $α) := by assumption)
    (q : Rat) (n : Q(ℤ)) (d : Q(ℕ)) (proof : Q(IsRat $x $n $d)) : Result x :=
  if q.den = 1 then
    have proof : Q(IsRat $x $n (nat_lit 1)) := proof
    .isInt q(DivisionRing.toRing) n q.num q(IsRat.to_isInt $proof)
  else
    .isRat inst q n d proof

/-- Returns the rational number that is the result of `norm_num` evaluation, along with a proof
that the denominator is nonzero in the `isRat` case. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Varianta5a6d0e6b030912f47ccaf7a47285e6a6c6268591e707dc10ee0fa84341529d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Varianta5a6d0e6b030912f47ccaf7a47285e6a6c6268591e707dc10ee0fa84341529d6.lean#L447).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d88113fb3ec45693170e797505bca22702d89d2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
