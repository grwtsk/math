# covariantSequence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9522f91cbc4cf1ac4ed3dfba8c4c0e6f28ef927647b2ab2aa4c0feba6f2f9aa2",
  "kind": "def",
  "lexical_name": "covariantSequence",
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
  "slug": "covariantsequence--41fb5e5e89e3c60f107934b7",
  "source": {
    "blob": "4eb09eac1879fc03ecfc8f1bfbdeff44bbbe0e23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 120,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant1adac665796ba342098a1c1bea3c7f438f836993ab200d9008c0c6c8fd807b74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:41fb5e5e89e3c60f107934b7cd974f222cb155453fc63bb5948017c5e2293809",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant1adac665796ba342098a1c1bea3c7f438f836993ab200d9008c0c6c8fd807b74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9522f91cbc4cf1ac4ed3dfba8c4c0e6f28ef927647b2ab2aa4c0feba6f2f9aa2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def covariantSequence : ComposableArrows AddCommGrp.{w} 5 :=
  mk₅ (AddCommGrp.ofHom ((mk₀ S.f).postcomp X (add_zero n₀)))
    (AddCommGrp.ofHom ((mk₀ S.g).postcomp X (add_zero n₀)))
    (AddCommGrp.ofHom (hS.extClass.postcomp X h))
    (AddCommGrp.ofHom ((mk₀ S.f).postcomp X (add_zero n₁)))
    (AddCommGrp.ofHom ((mk₀ S.g).postcomp X (add_zero n₁)))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant1adac665796ba342098a1c1bea3c7f438f836993ab200d9008c0c6c8fd807b74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant1adac665796ba342098a1c1bea3c7f438f836993ab200d9008c0c6c8fd807b74.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4eb09eac1879fc03ecfc8f1bfbdeff44bbbe0e23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
