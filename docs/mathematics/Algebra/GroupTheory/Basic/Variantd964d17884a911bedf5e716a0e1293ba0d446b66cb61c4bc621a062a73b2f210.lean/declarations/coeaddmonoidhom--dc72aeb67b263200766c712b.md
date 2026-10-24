# coeAddMonoidHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ae7e83bc45d6f5938134993e906b2594d33f6062f035f03df433cc7cda42215",
  "kind": "def",
  "lexical_name": "coeAddMonoidHom",
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
  "slug": "coeaddmonoidhom--dc72aeb67b263200766c712b",
  "source": {
    "blob": "cb238664a53b011e1833eceb83bbe234a6c5dcc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 360,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc72aeb67b263200766c712b635e6ae7534a49320526087cdf97a38455097383",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ae7e83bc45d6f5938134993e906b2594d33f6062f035f03df433cc7cda42215`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def coeAddMonoidHom {M S : Type*} [DecidableEq ι] [AddCommMonoid M] [SetLike S M]
    [AddSubmonoidClass S M] (A : ι → S) : (⨁ i, A i) →+ M :=
  toAddMonoid fun i => AddSubmonoidClass.subtype (A i)
#align direct_sum.coe_add_monoid_hom DirectSum.coeAddMonoidHom

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb238664a53b011e1833eceb83bbe234a6c5dcc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
