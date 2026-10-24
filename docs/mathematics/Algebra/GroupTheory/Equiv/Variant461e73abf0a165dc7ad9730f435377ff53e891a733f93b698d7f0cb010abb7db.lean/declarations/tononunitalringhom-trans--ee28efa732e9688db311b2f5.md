# toNonUnitalRingHom_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:74ef26b4-5853-e479-cda3-157a56224ff4",
  "kind": "theorem",
  "lexical_name": "toNonUnitalRingHom_trans",
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
  "slug": "tononunitalringhom-trans--ee28efa732e9688db311b2f5",
  "source": {
    "blob": "1e071050aeb1293b5c39da8b612a5bea17739e94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 673,
    "line": 668,
    "path": "GRWTSK/Algebra/GroupTheory/Equiv/Variant461e73abf0a165dc7ad9730f435377ff53e891a733f93b698d7f0cb010abb7db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee28efa732e9688db311b2f5723e8920d9842b01afecbafb86a9f18e2b87519b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Equiv/Variant461e73abf0a165dc7ad9730f435377ff53e891a733f93b698d7f0cb010abb7db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74ef26b4-5853-e479-cda3-157a56224ff4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 668–673.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toNonUnitalRingHom_trans (e₁ : R ≃+* S) (e₂ : S ≃+* S') :
    (e₁.trans e₂).toNonUnitalRingHom = e₂.toNonUnitalRingHom.comp e₁.toNonUnitalRingHom :=
  rfl
#align ring_equiv.to_non_unital_ring_hom_trans RingEquiv.toNonUnitalRingHom_trans

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Equiv/Variant461e73abf0a165dc7ad9730f435377ff53e891a733f93b698d7f0cb010abb7db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Equiv/Variant461e73abf0a165dc7ad9730f435377ff53e891a733f93b698d7f0cb010abb7db.lean#L668).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e071050aeb1293b5c39da8b612a5bea17739e94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
