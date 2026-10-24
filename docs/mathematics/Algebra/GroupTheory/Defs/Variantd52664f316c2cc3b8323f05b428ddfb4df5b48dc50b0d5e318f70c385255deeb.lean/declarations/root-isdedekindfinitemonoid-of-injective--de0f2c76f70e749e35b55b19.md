# _root_.IsDedekindFiniteMonoid.of_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:307d3b52-e827-e775-c22d-201c8b7df526",
  "kind": "theorem",
  "lexical_name": "_root_.IsDedekindFiniteMonoid.of_injective",
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
  "slug": "root-isdedekindfinitemonoid-of-injective--de0f2c76f70e749e35b55b19",
  "source": {
    "blob": "08ea8a26e80a36ecc853991ae0119013566ebdb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 714,
    "line": 710,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variantd52664f316c2cc3b8323f05b428ddfb4df5b48dc50b0d5e318f70c385255deeb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de0f2c76f70e749e35b55b19d3beeb46d2131efead9b0f6fb1d349459bc21967",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variantd52664f316c2cc3b8323f05b428ddfb4df5b48dc50b0d5e318f70c385255deeb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:307d3b52-e827-e775-c22d-201c8b7df526`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 710–714.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive] theorem _root_.IsDedekindFiniteMonoid.of_injective (f : F)
    (hf : Function.Injective f) [IsDedekindFiniteMonoid N] : IsDedekindFiniteMonoid M where
  mul_eq_one_symm eq := hf <| by simpa [mul_eq_one_comm] using congr_arg f eq

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variantd52664f316c2cc3b8323f05b428ddfb4df5b48dc50b0d5e318f70c385255deeb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variantd52664f316c2cc3b8323f05b428ddfb4df5b48dc50b0d5e318f70c385255deeb.lean#L710).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08ea8a26e80a36ecc853991ae0119013566ebdb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
