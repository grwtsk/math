# xiCoeff_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8224a07-9406-3edc-646d-e5bdf3b3be7a",
  "kind": "lemma",
  "lexical_name": "xiCoeff_one",
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
  "slug": "xicoeff-one--ee0f58849adbe94e67ad8f77",
  "source": {
    "blob": "c09349957b62a9be3d79786a903b80e6048ac221",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 278,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee0f58849adbe94e67ad8f77e9b9a5231a1a998b5e883964b8567777ededa715",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8224a07-9406-3edc-646d-e5bdf3b3be7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma xiCoeff_one (Λs : ℂ) : xiCoeff Λs 1 = 0 := by
  simp [xiCoeff, ArithmeticFunction.vonMangoldt_apply_one]

/-- the j-sum may be taken over any range ⊇ range (Ω N): the extra terms vanish. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c09349957b62a9be3d79786a903b80e6048ac221` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
