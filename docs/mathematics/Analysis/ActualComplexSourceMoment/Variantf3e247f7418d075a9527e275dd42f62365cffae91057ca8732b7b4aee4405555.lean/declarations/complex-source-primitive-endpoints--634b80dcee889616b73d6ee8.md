# complex_source_primitive_endpoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:399e38b4-684f-c0cb-e132-c50e02755d88",
  "kind": "theorem",
  "lexical_name": "complex_source_primitive_endpoints",
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
  "slug": "complex-source-primitive-endpoints--634b80dcee889616b73d6ee8",
  "source": {
    "blob": "ce9df12518b30d9151b612ca018df0c320cef5fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 44,
    "path": "GRWTSK/Analysis/ActualComplexSourceMoment/Variantf3e247f7418d075a9527e275dd42f62365cffae91057ca8732b7b4aee4405555.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:634b80dcee889616b73d6ee87899fb97eec1b27818141e50db783c8e6c46be92",
  "verification": {
    "reference": "docs/verification/Analysis/ActualComplexSourceMoment/Variantf3e247f7418d075a9527e275dd42f62365cffae91057ca8732b7b4aee4405555.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:399e38b4-684f-c0cb-e132-c50e02755d88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complex_source_primitive_endpoints {A : ℝ} (hA : 0 < A) (z : ℂ) :
    complexPolePrimitive A z (-A) = 0 ∧ complexPolePrimitive A z A = 0 := by
  rcases bumpInterior_endpoints A hA.ne' with ⟨hl, hr⟩
  rcases firstInterior_endpoints A hA.ne' with ⟨hl', hr'⟩
  simp [complexPolePrimitive, hl, hr, hl', hr']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ActualComplexSourceMoment/Variantf3e247f7418d075a9527e275dd42f62365cffae91057ca8732b7b4aee4405555.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ActualComplexSourceMoment/Variantf3e247f7418d075a9527e275dd42f62365cffae91057ca8732b7b4aee4405555.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce9df12518b30d9151b612ca018df0c320cef5fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
