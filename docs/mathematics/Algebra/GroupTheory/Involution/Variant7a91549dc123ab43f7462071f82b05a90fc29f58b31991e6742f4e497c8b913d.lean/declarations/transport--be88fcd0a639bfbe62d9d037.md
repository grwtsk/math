# transport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2fb02c30cea515d449cb660f406abca817d91c086030ca8e3b962e865218e5cb",
  "kind": "def",
  "lexical_name": "transport",
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
  "slug": "transport--be88fcd0a639bfbe62d9d037",
  "source": {
    "blob": "2c021e92b0b08f436166d06b8731920f65ad8e68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 170,
    "path": "GRWTSK/Algebra/GroupTheory/Involution/Variant7a91549dc123ab43f7462071f82b05a90fc29f58b31991e6742f4e497c8b913d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:be88fcd0a639bfbe62d9d0372505f0e623554378960d4e32b579b0acc6dc1d10",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Involution/Variant7a91549dc123ab43f7462071f82b05a90fc29f58b31991e6742f4e497c8b913d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2fb02c30cea515d449cb660f406abca817d91c086030ca8e3b962e865218e5cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def transport
    {Y : Type v} [Fintype Y] [DecidableEq Y]
    (e : X ≃ Y) (ι : CertifiedInvolution X) : CertifiedInvolution Y where
  act y := e (ι.act (e.symm y))
  involutive y := by simp
  support := ι.support.image e
  support_spec y := by
    simp only [Finset.mem_image]
    constructor
    · rintro ⟨x, hx, rfl⟩
      exact fun h => (ι.support_spec x).mp hx (e.injective (by simpa using h))
    · intro hy
      refine ⟨e.symm y, ?_, by simp⟩
      apply (ι.support_spec (e.symm y)).mpr
      intro hfix
      apply hy
      simpa [hfix]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Involution/Variant7a91549dc123ab43f7462071f82b05a90fc29f58b31991e6742f4e497c8b913d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Involution/Variant7a91549dc123ab43f7462071f82b05a90fc29f58b31991e6742f4e497c8b913d.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c021e92b0b08f436166d06b8731920f65ad8e68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
