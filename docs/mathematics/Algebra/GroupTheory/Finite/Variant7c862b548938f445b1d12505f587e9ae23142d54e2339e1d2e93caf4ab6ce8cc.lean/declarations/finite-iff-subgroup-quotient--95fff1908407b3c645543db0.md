# finite_iff_subgroup_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4605c18a-0b8c-3e71-27ab-e31c80333470",
  "kind": "lemma",
  "lexical_name": "finite_iff_subgroup_quotient",
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
  "slug": "finite-iff-subgroup-quotient--95fff1908407b3c645543db0",
  "source": {
    "blob": "b2a83834125e3b5f09568e3c123f8b234b790a3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 68,
    "path": "GRWTSK/Algebra/GroupTheory/Finite/Variant7c862b548938f445b1d12505f587e9ae23142d54e2339e1d2e93caf4ab6ce8cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95fff1908407b3c645543db016a23d15dbda80e43449f9ec42e7dc9e54b4a74d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Finite/Variant7c862b548938f445b1d12505f587e9ae23142d54e2339e1d2e93caf4ab6ce8cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4605c18a-0b8c-3e71-27ab-e31c80333470`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finite_iff_subgroup_quotient (H : Subgroup G) : Finite G ↔ Finite H ∧ Finite (G ⧸ H) := by
  rw [(groupEquivQuotientProdSubgroup (s := H)).finite_iff, Prod.finite_iff, and_comm]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Finite/Variant7c862b548938f445b1d12505f587e9ae23142d54e2339e1d2e93caf4ab6ce8cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Finite/Variant7c862b548938f445b1d12505f587e9ae23142d54e2339e1d2e93caf4ab6ce8cc.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2a83834125e3b5f09568e3c123f8b234b790a3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
