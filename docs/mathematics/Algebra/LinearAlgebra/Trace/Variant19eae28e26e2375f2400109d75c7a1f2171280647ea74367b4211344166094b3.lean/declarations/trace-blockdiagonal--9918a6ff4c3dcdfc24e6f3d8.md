# trace_blockDiagonal'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a4b0f77-8eb2-dc82-38cc-a5a49581ac33",
  "kind": "lemma",
  "lexical_name": "trace_blockDiagonal'",
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
  "slug": "trace-blockdiagonal--9918a6ff4c3dcdfc24e6f3d8",
  "source": {
    "blob": "f8643645622477280f75afeef4c26b20668f5cbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 124,
    "path": "GRWTSK/Algebra/LinearAlgebra/Trace/Variant19eae28e26e2375f2400109d75c7a1f2171280647ea74367b4211344166094b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9918a6ff4c3dcdfc24e6f3d86877ee7ecbfc86601e989cac1da4e85f242905eb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Trace/Variant19eae28e26e2375f2400109d75c7a1f2171280647ea74367b4211344166094b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a4b0f77-8eb2-dc82-38cc-a5a49581ac33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma trace_blockDiagonal' [DecidableEq p] {m : p → Type*} [∀ i, Fintype (m i)]
    (M : ∀ i, Matrix (m i) (m i) R) :
    trace (blockDiagonal' M) = ∑ i, trace (M i) := by
  simp [blockDiagonal', trace, Finset.sum_sigma']

end AddCommMonoid

section AddCommGroup

variable [AddCommGroup R]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Trace/Variant19eae28e26e2375f2400109d75c7a1f2171280647ea74367b4211344166094b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Trace/Variant19eae28e26e2375f2400109d75c7a1f2171280647ea74367b4211344166094b3.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8643645622477280f75afeef4c26b20668f5cbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
