# actualZeta_logDerivative_pole_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1250143-1482-ff60-9b88-556f98725fe3",
  "kind": "theorem",
  "lexical_name": "actualZeta_logDerivative_pole_identity",
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
  "slug": "actualzeta-logderivative-pole-identity--7135deddb5637b80a45fd803",
  "source": {
    "blob": "7328e4e86e7e82df575c36d477d2cb573b4eeb96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 123,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Attempt07/Variant749deb3a5cc8fa05325f4b3ba5c5977a0e8f32016dde5391d6559022d095d577.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7135deddb5637b80a45fd80344c3c5495d396c67b686df352cde91f57b61a2e1",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Attempt07/Variant749deb3a5cc8fa05325f4b3ba5c5977a0e8f32016dde5391d6559022d095d577.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1250143-1482-ff60-9b88-556f98725fe3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualZeta_logDerivative_pole_identity {s : ℂ} (hs0 : s ≠ 0) (hs1 : s ≠ 1)
    (hsz : riemannZeta s ≠ 0) :
    -deriv riemannZeta s / riemannZeta s = 1 / (s - 1) -
      deriv actualZetaPoleCleared s / actualZetaPoleCleared s := by
  rw [poleCleared_deriv hs0 hs1, actualZetaPoleCleared_eq hs0 hs1]
  field_simp
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Attempt07/Variant749deb3a5cc8fa05325f4b3ba5c5977a0e8f32016dde5391d6559022d095d577.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Attempt07/Variant749deb3a5cc8fa05325f4b3ba5c5977a0e8f32016dde5391d6559022d095d577.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7328e4e86e7e82df575c36d477d2cb573b4eeb96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
