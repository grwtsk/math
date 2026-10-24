# fract_restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ae49cf3793bad4989ae703d7a8822abcc73b9ff323e0e6d7448b0f84dfff37a5",
  "kind": "def",
  "lexical_name": "fract_restrict",
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
  "slug": "fract-restrict--49fb8c92d4d65e6be2ab9b3b",
  "source": {
    "blob": "690a294caa9cbc3b7d59aa8d6edc6ba1334a27e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 174,
    "path": "GRWTSK/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:49fb8c92d4d65e6be2ab9b3bf6d4bb8f7f5009ab438de4e0f5ddd2afb4d006f8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ae49cf3793bad4989ae703d7a8822abcc73b9ff323e0e6d7448b0f84dfff37a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fract_restrict (x : E) : fundamentalDomain b := ⟨fract b x, fract_mem_fundamentalDomain b x⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `690a294caa9cbc3b7d59aa8d6edc6ba1334a27e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
