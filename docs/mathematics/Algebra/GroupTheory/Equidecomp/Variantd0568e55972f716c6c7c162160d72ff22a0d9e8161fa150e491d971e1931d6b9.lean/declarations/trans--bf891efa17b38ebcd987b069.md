# trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c584f81abab6e516e6d4625dac588e2e2d59e0bb122747420d3c61ead5bd8776",
  "kind": "def",
  "lexical_name": "trans",
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
  "slug": "trans--bf891efa17b38ebcd987b069",
  "source": {
    "blob": "bd46e800175d9c983b05bf4beb539d5a7aaff93f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 167,
    "path": "GRWTSK/Algebra/GroupTheory/Equidecomp/Variantd0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf891efa17b38ebcd987b0699dd3b29a7fa22e41d3df9d5191ea42c953feefa7",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Equidecomp/Variantd0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c584f81abab6e516e6d4625dac588e2e2d59e0bb122747420d3c61ead5bd8776`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def trans (f g : Equidecomp X G) : Equidecomp X G where
  toPartialEquiv := f.toPartialEquiv.trans g.toPartialEquiv
  isDecompOn' := by classical exact ⟨g.witness * f.witness, g.isDecompOn.comp' f.isDecompOn⟩

end Monoid

section Group

variable [Group G] [MulAction G X]

open scoped Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Equidecomp/Variantd0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Equidecomp/Variantd0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd46e800175d9c983b05bf4beb539d5a7aaff93f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
