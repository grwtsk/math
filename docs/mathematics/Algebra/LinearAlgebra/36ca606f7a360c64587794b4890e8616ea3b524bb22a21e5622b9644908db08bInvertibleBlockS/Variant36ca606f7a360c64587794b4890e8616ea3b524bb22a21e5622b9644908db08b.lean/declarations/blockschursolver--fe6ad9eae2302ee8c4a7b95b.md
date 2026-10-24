# blockSchurSolver

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ef43d7e1c7b0f565a9cd6fed086fa648d927ee4b747bc09bbb3f04b0759ca872",
  "kind": "def",
  "lexical_name": "blockSchurSolver",
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
  "slug": "blockschursolver--fe6ad9eae2302ee8c4a7b95b",
  "source": {
    "blob": "6de68b268dfe9d6a5ee5ed9f887f84aec4b53fab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 107,
    "path": "GRWTSK/Algebra/LinearAlgebra/36ca606f7a360c64587794b4890e8616ea3b524bb22a21e5622b9644908db08bInvertibleBlockS/Variant36ca606f7a360c64587794b4890e8616ea3b524bb22a21e5622b9644908db08b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe6ad9eae2302ee8c4a7b95b8404aba40bab8dfbd55c602efe6200532d6f2204",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/36ca606f7a360c64587794b4890e8616ea3b524bb22a21e5622b9644908db08bInvertibleBlockS/Variant36ca606f7a360c64587794b4890e8616ea3b524bb22a21e5622b9644908db08b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ef43d7e1c7b0f565a9cd6fed086fa648d927ee4b747bc09bbb3f04b0759ca872`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def blockSchurSolver (I : InvertibleProvenanceBlock G) :
    BlockSchurSolver G where
  solve := I.solve
  normal := by
    intro p u
    rw [form_sub_right]
    rw [I.provenance_form_solve]
    ring

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/36ca606f7a360c64587794b4890e8616ea3b524bb22a21e5622b9644908db08bInvertibleBlockS/Variant36ca606f7a360c64587794b4890e8616ea3b524bb22a21e5622b9644908db08b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/36ca606f7a360c64587794b4890e8616ea3b524bb22a21e5622b9644908db08bInvertibleBlockS/Variant36ca606f7a360c64587794b4890e8616ea3b524bb22a21e5622b9644908db08b.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6de68b268dfe9d6a5ee5ed9f887f84aec4b53fab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
