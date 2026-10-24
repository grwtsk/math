# sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36f07480-06fa-a3de-0632-03ee6f21e975",
  "kind": "lemma",
  "lexical_name": "sub",
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
  "slug": "sub--c49f45f8bd0e0eb23c0e63de",
  "source": {
    "blob": "d1934960950af75446e27ed57e91a2883188050c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 110,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c49f45f8bd0e0eb23c0e63de77709ab63cedd5da44c81b32d234f80a4cadd79d",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36f07480-06fa-a3de-0632-03ee6f21e975`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sub {f₁ f₂ g : ℝ → ℝ} (h₁ : EvBound f₁ g) (h₂ : EvBound f₂ g) :
    EvBound (fun T => f₁ T - f₂ T) g := by
  obtain ⟨C₁, hC₁, h₁⟩ := h₁.eventually_le
  obtain ⟨C₂, hC₂, h₂⟩ := h₂.eventually_le
  refine of_eventually_le (add_pos hC₁ hC₂) ?_
  filter_upwards [h₁, h₂] with T a b
  calc |f₁ T - f₂ T| ≤ |f₁ T| + |f₂ T| := abs_sub _ _
    _ ≤ C₁ * g T + C₂ * g T := add_le_add a b
    _ = (C₁ + C₂) * g T := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1934960950af75446e27ed57e91a2883188050c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
