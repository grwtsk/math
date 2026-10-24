# reflectedPrimitive_lower_traces

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8270c682-f7a1-b28a-87bd-879c9316f4ba",
  "kind": "theorem",
  "lexical_name": "reflectedPrimitive_lower_traces",
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
  "slug": "reflectedprimitive-lower-traces--9c4035ac2a9717b092720919",
  "source": {
    "blob": "0050328ab4866312b93600c6de1fe1b17e26281d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 92,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ReflectedPositivePrimitiveAttempt02/Variantb96d0001fe29533617bd1a07a80f58ce3e6c490b2f9c0d472083931e21c4574b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c4035ac2a9717b09272091917f7a1bd796218c2f667706edbbf02b129da6886",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ReflectedPositivePrimitiveAttempt02/Variantb96d0001fe29533617bd1a07a80f58ce3e6c490b2f9c0d472083931e21c4574b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8270c682-f7a1-b28a-87bd-879c9316f4ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reflectedPrimitive_lower_traces {A : ℝ} (hA : 1≤A) :
    reflectedPrimitive A 0=0 ∧ deriv (reflectedPrimitive A) 0=0 := by
  have hs := positivePrimitive_upper_traces (show 0<A by linarith)
  rw [reflectedPrimitive,(reflectedPrimitive_hasDerivAt A 0).deriv,reflectedPrimitiveFirst]
  simp only [sub_zero,hs.1,hs.2,mul_zero,and_self]

/-- Exact unscaled first upper trace with its original rational normalization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ReflectedPositivePrimitiveAttempt02/Variantb96d0001fe29533617bd1a07a80f58ce3e6c490b2f9c0d472083931e21c4574b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ReflectedPositivePrimitiveAttempt02/Variantb96d0001fe29533617bd1a07a80f58ce3e6c490b2f9c0d472083931e21c4574b.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0050328ab4866312b93600c6de1fe1b17e26281d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
