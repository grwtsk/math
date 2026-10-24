# scalarConjugate_regularAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dee80b5b-4a5a-0aaf-9329-bd5754e5ab8d",
  "kind": "theorem",
  "lexical_name": "scalarConjugate_regularAction",
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
  "slug": "scalarconjugate-regularaction--9bf22186724ab80138ddf10b",
  "source": {
    "blob": "4d1581c59aab2d8091d96fa67b2b3459e060641c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 45,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMEmbeddingTransport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9bf22186724ab80138ddf10b767c3aedb4348435f01017615c8b0b17e58dc660",
  "verification": {
    "reference": "docs/verification/AlgebraicGeometry/Hodge/CMEmbeddingTransport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dee80b5b-4a5a-0aaf-9329-bd5754e5ab8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scalarConjugate_regularAction
    (σ : E ≃ₐ[k] E) (a : E) (t : E ⊗[k] E) :
    scalarConjugate σ
        (regularAction (k := k) (E := E) (C := E) a t) =
      regularAction (k := k) (E := E) (C := E) a
        (scalarConjugate σ t) := by
  exact LinearMap.rTensor_baseChange σ.toAlgHom t
    ((Algebra.lsmul k k E) a)

/-- Scalar conjugation is inverted by the inverse field automorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/AlgebraicGeometry/Hodge/CMEmbeddingTransport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMEmbeddingTransport.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d1581c59aab2d8091d96fa67b2b3459e060641c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
