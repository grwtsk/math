# lift₂Expand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c5624285e6cc1aaea1994c2a136b82a72f692326b26ffbc579fd56f88849230",
  "kind": "def",
  "lexical_name": "lift₂Expand",
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
  "slug": "lift-expand--fddc62f6477825537a315fb0",
  "source": {
    "blob": "4dd67a43c119efa656af8dbc0e99c575075b037e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 182,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fddc62f6477825537a315fb01a47297c165e2ac7345474c3db83f5421fd1eeaa",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c5624285e6cc1aaea1994c2a136b82a72f692326b26ffbc579fd56f88849230`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def lift₂Expand {C : Sort*} (P : X → S → X → S → C)
    (hP :
      ∀ (r₁ : X) (t₁ : R) (s₁ : S) (ht₁ : t₁ * s₁ ∈ S) (r₂ : X) (t₂ : R) (s₂ : S)
        (ht₂ : t₂ * s₂ ∈ S),
        P r₁ s₁ r₂ s₂ = P (t₁ • r₁) ⟨t₁ * s₁, ht₁⟩ (t₂ • r₂) ⟨t₂ * s₂, ht₂⟩) :
    X[S⁻¹] → X[S⁻¹] → C :=
  liftExpand
    (fun r₁ s₁ => liftExpand (P r₁ s₁) fun r₂ t₂ s₂ ht₂ => by
      have := hP r₁ 1 s₁ (by simp) r₂ t₂ s₂ ht₂
      simp [this])
    fun r₁ t₁ s₁ ht₁ => by
    ext x; induction' x with r₂ s₂
    dsimp only
    rw [liftExpand_of, liftExpand_of, hP r₁ t₁ s₁ ht₁ r₂ 1 s₂ (by simp)]; simp

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4dd67a43c119efa656af8dbc0e99c575075b037e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
