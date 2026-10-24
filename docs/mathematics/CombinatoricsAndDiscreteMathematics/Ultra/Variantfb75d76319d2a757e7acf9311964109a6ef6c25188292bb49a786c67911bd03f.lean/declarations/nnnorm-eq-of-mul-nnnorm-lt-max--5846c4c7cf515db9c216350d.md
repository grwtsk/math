# nnnorm_eq_of_mul_nnnorm_lt_max

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0918d11-1b76-2884-748d-feb3d5f177d8",
  "kind": "lemma",
  "lexical_name": "nnnorm_eq_of_mul_nnnorm_lt_max",
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
  "slug": "nnnorm-eq-of-mul-nnnorm-lt-max--5846c4c7cf515db9c216350d",
  "source": {
    "blob": "599deda5cbea27bbb7ec2dd26f13f10b8033ff8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 122,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Ultra/Variantfb75d76319d2a757e7acf9311964109a6ef6c25188292bb49a786c67911bd03f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5846c4c7cf515db9c216350dc518e134423f1425839670a73876df5b2af86ae0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Ultra/Variantfb75d76319d2a757e7acf9311964109a6ef6c25188292bb49a786c67911bd03f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0918d11-1b76-2884-748d-feb3d5f177d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nnnorm_eq_of_mul_nnnorm_lt_max {x y : S} (h : ‖x * y‖₊ < max ‖x‖₊ ‖y‖₊) :
    ‖x‖₊ = ‖y‖₊ :=
  not_ne_iff.mp (h.ne ∘ nnnorm_mul_eq_max_of_nnnorm_ne_nnnorm)

/-- All triangles are isosceles in an ultrametric normed group. -/
@[to_additive /-- All triangles are isosceles in an ultrametric normed additive group. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Ultra/Variantfb75d76319d2a757e7acf9311964109a6ef6c25188292bb49a786c67911bd03f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Ultra/Variantfb75d76319d2a757e7acf9311964109a6ef6c25188292bb49a786c67911bd03f.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `599deda5cbea27bbb7ec2dd26f13f10b8033ff8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
