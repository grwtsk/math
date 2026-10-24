# span_iUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa8f3cb9-e17e-d475-26b8-2ccf7cc30fa0",
  "kind": "theorem",
  "lexical_name": "span_iUnion",
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
  "slug": "span-iunion--eb8d17995538a0274f11eec7",
  "source": {
    "blob": "7b67c5b42b2c264e74c8b6d0194b314ea5df66ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 770,
    "line": 754,
    "path": "GRWTSK/Algebra/LinearAlgebra/Subalgebra/Variant86505facb9a052301f4e801402c26659b9196ed5015d1952e3ebf4336490b07f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb8d17995538a0274f11eec7fa3cdc5d147f50bf88186b341d18ee740db06adc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Subalgebra/Variant86505facb9a052301f4e801402c26659b9196ed5015d1952e3ebf4336490b07f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa8f3cb9-e17e-d475-26b8-2ccf7cc30fa0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 754–770.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem span_iUnion {ι} (s : ι → Set L) : lieSpan R L (⋃ i, s i) = ⨆ i, lieSpan R L (s i) :=
  (LieSubalgebra.gi R L).gc.l_iSup
#align lie_subalgebra.span_Union LieSubalgebra.span_iUnion

end LieSpan

end LieSubalgebra

end LieSubalgebra

namespace LieEquiv

variable {R : Type u} {L₁ : Type v} {L₂ : Type w}

variable [CommRing R] [LieRing L₁] [LieRing L₂] [LieAlgebra R L₁] [LieAlgebra R L₂]

/-- An injective Lie algebra morphism is an equivalence onto its range. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Subalgebra/Variant86505facb9a052301f4e801402c26659b9196ed5015d1952e3ebf4336490b07f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Subalgebra/Variant86505facb9a052301f4e801402c26659b9196ed5015d1952e3ebf4336490b07f.lean#L754).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b67c5b42b2c264e74c8b6d0194b314ea5df66ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
