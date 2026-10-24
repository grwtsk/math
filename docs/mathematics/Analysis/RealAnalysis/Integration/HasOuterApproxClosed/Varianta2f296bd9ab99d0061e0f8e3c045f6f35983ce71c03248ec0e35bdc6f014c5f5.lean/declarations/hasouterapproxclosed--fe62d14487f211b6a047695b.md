# HasOuterApproxClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d73ccc214f529b31f2fcbca4f248a01da1627185f8352c33dbe2bcd558eebb8d",
  "kind": "class",
  "lexical_name": "HasOuterApproxClosed",
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
  "slug": "hasouterapproxclosed--fe62d14487f211b6a047695b",
  "source": {
    "blob": "ec701fcd87952986a28066d36ff3c0333ba15ffb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 169,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe62d14487f211b6a047695b26e06a04161b4dbb642eb7d7e6f0756f142f7a80",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d73ccc214f529b31f2fcbca4f248a01da1627185f8352c33dbe2bcd558eebb8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class HasOuterApproxClosed (X : Type*) [TopologicalSpace X] : Prop where
  exAppr : ∀ (F : Set X), IsClosed F → ∃ (fseq : ℕ → (X →ᵇ ℝ≥0)),
    (∀ n x, fseq n x ≤ 1) ∧ (∀ n x, x ∈ F → 1 ≤ fseq n x) ∧
    Tendsto (fun n : ℕ ↦ (fun x ↦ fseq n x)) atTop (𝓝 (indicator F fun _ ↦ (1 : ℝ≥0)))

namespace HasOuterApproxClosed

variable {X : Type*} [TopologicalSpace X] [HasOuterApproxClosed X]
variable {F : Set X} (hF : IsClosed F)

/-- A sequence of continuous functions `X → [0,1]` tending to the indicator of a closed set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec701fcd87952986a28066d36ff3c0333ba15ffb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
