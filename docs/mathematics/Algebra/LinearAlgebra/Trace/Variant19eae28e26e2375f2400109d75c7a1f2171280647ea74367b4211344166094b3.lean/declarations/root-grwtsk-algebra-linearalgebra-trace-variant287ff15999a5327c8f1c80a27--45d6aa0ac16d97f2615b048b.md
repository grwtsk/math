# _root_.GRWTSK.Algebra.LinearAlgebra.Trace.Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.AddMonoidHom.map_trace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da867e6b-2c86-a6eb-94dc-ce0674ad503c",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.Trace.Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.AddMonoidHom.map_trace",
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
  "slug": "root-grwtsk-algebra-linearalgebra-trace-variant287ff15999a5327c8f1c80a27--45d6aa0ac16d97f2615b048b",
  "source": {
    "blob": "f8643645622477280f75afeef4c26b20668f5cbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 115,
    "path": "GRWTSK/Algebra/LinearAlgebra/Trace/Variant19eae28e26e2375f2400109d75c7a1f2171280647ea74367b4211344166094b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45d6aa0ac16d97f2615b048bf01cc69fc327b1c975b71f550e543a5a3bf35f95",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Trace/Variant19eae28e26e2375f2400109d75c7a1f2171280647ea74367b4211344166094b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da867e6b-2c86-a6eb-94dc-ce0674ad503c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.Trace.Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.AddMonoidHom.map_trace [AddCommMonoid S] {F : Type*} [FunLike F R S]
    [AddMonoidHomClass F R S] (f : F) (A : Matrix n n R) :
    f (trace A) = trace ((f : R →+ S).mapMatrix A) :=
  map_sum f (fun i => diag A i) Finset.univ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Trace/Variant19eae28e26e2375f2400109d75c7a1f2171280647ea74367b4211344166094b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Trace/Variant19eae28e26e2375f2400109d75c7a1f2171280647ea74367b4211344166094b3.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8643645622477280f75afeef4c26b20668f5cbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
