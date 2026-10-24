# numBound_casesOn_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca4ad7ba-54e3-0243-2264-21fba694d867",
  "kind": "lemma",
  "lexical_name": "numBound_casesOn_succ",
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
  "slug": "numbound-caseson-succ--be01cfd55b0aac63166f9d6a",
  "source": {
    "blob": "74718dc11ffddb45334cc21311c76b43aab4ab60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 647,
    "line": 633,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant8a5c6470d14098f15d42242ef4503678205cf3873a6467fc77c868effc68212a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be01cfd55b0aac63166f9d6a54e6c1a62408449f8879ca99421ffd6b0eb87a0c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant8a5c6470d14098f15d42242ef4503678205cf3873a6467fc77c868effc68212a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca4ad7ba-54e3-0243-2264-21fba694d867`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 633–647.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma numBound_casesOn_succ (k₀ k : ℕ) (D : ℕ → ℕ) :
    ∀ n, numBound k₀ (Nat.casesOn · k D) (n + 1) = numBound (k₀ * k) ((k₀ * k) ^ (k₀ * k) • D) n
  | 0 => by simp
  | n + 1 => by
    rw [numBound_succ (n := n + 1), numBound_casesOn_succ k₀ k D n, numBound_succ,
      degBound_casesOn_succ]
    dsimp
    ring

end

variable {k₁ k₂ : ℕ} (hk : k₁ ≤ k₂) {D₁ D₂ : ℕ → ℕ}

mutual

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant8a5c6470d14098f15d42242ef4503678205cf3873a6467fc77c868effc68212a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant8a5c6470d14098f15d42242ef4503678205cf3873a6467fc77c868effc68212a.lean#L633).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74718dc11ffddb45334cc21311c76b43aab4ab60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
