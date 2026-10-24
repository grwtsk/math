# TensorSigns

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca509d930d732d50887416896b3c650fc5cb341afaed72378c817d76f8aa7874",
  "kind": "class",
  "lexical_name": "TensorSigns",
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
  "slug": "tensorsigns--cd83fdde598fa9d32f56095a",
  "source": {
    "blob": "9054329efd3d91ecec991a267983cc55ce41c7ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 127,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variantd58d07fe49b59c036a9b353ec247fcc8a78468e2dd065c22aca9bb96eacf082a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd83fdde598fa9d32f56095ab4accd3b0996b454603c5dd1732f2c1dc2871c71",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variantd58d07fe49b59c036a9b353ec247fcc8a78468e2dd065c22aca9bb96eacf082a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca509d930d732d50887416896b3c650fc5cb341afaed72378c817d76f8aa7874`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class TensorSigns where
  /-- the signs which appear in the vertical differential of the total complex -/
  ε' : Multiplicative I →* ℤˣ
  rel_add (p q r : I) (hpq : c.Rel p q) : c.Rel (p + r) (q + r)
  add_rel (p q r : I) (hpq : c.Rel p q) : c.Rel (r + p) (r + q)
  ε'_succ (p q : I) (hpq : c.Rel p q) : ε' q = - ε' p

variable [TensorSigns c]

/-- The signs which appear in the vertical differential of the total complex. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variantd58d07fe49b59c036a9b353ec247fcc8a78468e2dd065c22aca9bb96eacf082a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variantd58d07fe49b59c036a9b353ec247fcc8a78468e2dd065c22aca9bb96eacf082a.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9054329efd3d91ecec991a267983cc55ce41c7ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
