# Parallel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:214e86c761955aa9493d544e42fce03d0b984fcc1e72580e758f3cba79b8b0cb",
  "kind": "inductive",
  "lexical_name": "Parallel",
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
  "slug": "parallel--6c3a18c9d10d1578ff0dc18b",
  "source": {
    "blob": "a4d5350e279d8e5af39f91c1b91e180fe4c81c74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 208,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Labelled/Variant147365f4d6707b584f106044c7f7e364d22c66e8293331801fdf0cfa5a4cb962.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c3a18c9d10d1578ff0dc18b84cddd62456daed360aa8944bc800ce2e9a3b1d3",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Labelled/Variant147365f4d6707b584f106044c7f7e364d22c66e8293331801fdf0cfa5a4cb962.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:214e86c761955aa9493d544e42fce03d0b984fcc1e72580e758f3cba79b8b0cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive Parallel {S : Type u} : Expr S → Expr S → Prop
  | var (n) : Parallel (.var n) (.var n)
  | sort (s) : Parallel (.sort s) (.sort s)
  | app {l f f' a a'} : Parallel f f' → Parallel a a' →
      Parallel (.app l f a) (.app l f' a')
  | lam {l A A' b b'} : Parallel A A' → Parallel b b' →
      Parallel (.lam l A b) (.lam l A' b')
  | pi {l A A' B B'} : Parallel A A' → Parallel B B' →
      Parallel (.pi l A B) (.pi l A' B')
  | head {l b b' a a'} (A) : Parallel b b' → Parallel a a' →
      Parallel (.app l (.lam l A b) a) (b'.instantiate a')

namespace Parallel

variable {S : Type u} {M N : Expr S}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Labelled/Variant147365f4d6707b584f106044c7f7e364d22c66e8293331801fdf0cfa5a4cb962.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Labelled/Variant147365f4d6707b584f106044c7f7e364d22c66e8293331801fdf0cfa5a4cb962.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4d5350e279d8e5af39f91c1b91e180fe4c81c74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
