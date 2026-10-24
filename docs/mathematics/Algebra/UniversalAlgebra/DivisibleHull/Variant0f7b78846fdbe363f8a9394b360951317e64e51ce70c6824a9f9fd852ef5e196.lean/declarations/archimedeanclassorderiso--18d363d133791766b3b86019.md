# archimedeanClassOrderIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7e2e092334414049ce1a143cc22c3925a7ad90d0af9d4485bf9c7a08321561ca",
  "kind": "def",
  "lexical_name": "archimedeanClassOrderIso",
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
  "slug": "archimedeanclassorderiso--18d363d133791766b3b86019",
  "source": {
    "blob": "4d86e6421f71b249a7c27edbd96d5743725a64b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 422,
    "line": 410,
    "path": "GRWTSK/Algebra/UniversalAlgebra/DivisibleHull/Variant0f7b78846fdbe363f8a9394b360951317e64e51ce70c6824a9f9fd852ef5e196.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:18d363d133791766b3b860196d64aca92c2c219d315a6fbb0bce261928ecf6ef",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/DivisibleHull/Variant0f7b78846fdbe363f8a9394b360951317e64e51ce70c6824a9f9fd852ef5e196.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7e2e092334414049ce1a143cc22c3925a7ad90d0af9d4485bf9c7a08321561ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 410–422.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def archimedeanClassOrderIso : ArchimedeanClass M ≃o ArchimedeanClass (DivisibleHull M) := by
  apply OrderIso.ofHomInv (archimedeanClassOrderHom M) (archimedeanClassOrderHomInv M)
  · ext a
    induction a with | mk a
    induction a with | mk m s
    suffices ArchimedeanClass.mk (mk m 1) = ArchimedeanClass.mk (mk m s) by
      simpa [archimedeanClassOrderHom, archimedeanClassOrderHomInv]
    simp_rw [aux_archimedeanClassMk_mk]
  · ext a
    induction a with | mk _
    simp [archimedeanClassOrderHom, archimedeanClassOrderHomInv]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/DivisibleHull/Variant0f7b78846fdbe363f8a9394b360951317e64e51ce70c6824a9f9fd852ef5e196.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/DivisibleHull/Variant0f7b78846fdbe363f8a9394b360951317e64e51ce70c6824a9f9fd852ef5e196.lean#L410).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d86e6421f71b249a7c27edbd96d5743725a64b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
