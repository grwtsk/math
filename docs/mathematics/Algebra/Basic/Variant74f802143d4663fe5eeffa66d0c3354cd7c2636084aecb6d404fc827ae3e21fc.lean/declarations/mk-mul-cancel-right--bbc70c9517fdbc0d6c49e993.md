# mk'_mul_cancel_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "62eaa62c115f533d629570cd23f1ba7db05ad97f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 414,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/74f802143d4663fe5eeffa66d0c3354cd7c2636084aecb6d404fc827ae3e21fc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:66637332-b6fe-356f-6617-eff3385a1e0b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d1737f75-4232-d0b3-a8ab-d46e51e8e16b",
  "kind": "theorem",
  "lexical_name": "mk'_mul_cancel_right",
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
  "slug": "mk-mul-cancel-right--bbc70c9517fdbc0d6c49e993",
  "source": {
    "blob": "62eaa62c115f533d629570cd23f1ba7db05ad97f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 418,
    "line": 414,
    "path": "GRWTSK/Algebra/Basic/Variant74f802143d4663fe5eeffa66d0c3354cd7c2636084aecb6d404fc827ae3e21fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbc70c9517fdbc0d6c49e993864a482350106e8e495c0215ccd3bc98cc7bca9d",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant74f802143d4663fe5eeffa66d0c3354cd7c2636084aecb6d404fc827ae3e21fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1737f75-4232-d0b3-a8ab-d46e51e8e16b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 414–418.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk'_mul_cancel_right (x : R) (y : M) : mk' S (x * y) y = (algebraMap R S) x :=
  (toLocalizationMap M S).mk'_mul_cancel_right _ _
#align is_localization.mk'_mul_cancel_right IsLocalization.mk'_mul_cancel_right

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant74f802143d4663fe5eeffa66d0c3354cd7c2636084aecb6d404fc827ae3e21fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant74f802143d4663fe5eeffa66d0c3354cd7c2636084aecb6d404fc827ae3e21fc.lean#L414).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62eaa62c115f533d629570cd23f1ba7db05ad97f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
