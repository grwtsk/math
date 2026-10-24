# drop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:552290f02050853d5cf583fe5f8668e1fb9af771ea7b3163243ea1bb4689ab31",
  "kind": "def",
  "lexical_name": "drop",
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
  "slug": "drop--ad66ce9c22aea301d1f2fe9a",
  "source": {
    "blob": "d7b71f7d822fccafd5eca181717f14ce8a4d4317",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 151,
    "path": "GRWTSK/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ad66ce9c22aea301d1f2fe9afd9b8d551a692e2ae65e87036f732d501ce4acb4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:552290f02050853d5cf583fe5f8668e1fb9af771ea7b3163243ea1bb4689ab31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def drop {k : ℕ} (r : Fin k ↪o ℕ) (l : ℕ) : Fin (k - l) ↪o ℕ :=
  OrderEmbedding.ofStrictMono (fun i => r ⟨l + i.val, by omega⟩)
    (by intro i j hij; apply r.strictMono; change l + i.val < l + j.val; omega)

/-- A concrete ordered block split, with inverse subtraction on the second block. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7b71f7d822fccafd5eca181717f14ce8a4d4317` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
