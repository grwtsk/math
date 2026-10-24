# iterated_kk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d59c308-5b50-f543-5b52-5f44444dfc89",
  "kind": "theorem",
  "lexical_name": "iterated_kk",
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
  "slug": "iterated-kk--a28a1ce3b9b0e7aa05e19271",
  "source": {
    "blob": "4324ed0ff5ea82fc7f5d75b49b76b230fd4dfe7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 297,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant48d5968fe3d63169fda6f03dc287ada6e607c8893813558245334a06bd5afd5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a28a1ce3b9b0e7aa05e192710b87a80bec667ecd0badf6e0686c82b80b1ea285",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant48d5968fe3d63169fda6f03dc287ada6e607c8893813558245334a06bd5afd5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d59c308-5b50-f543-5b52-5f44444dfc89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iterated_kk (h₁ : (𝒜 : Set (Finset (Fin n))).Sized r) (h₂ : #𝒞 ≤ #𝒜) (h₃ : IsInitSeg 𝒞 r) :
    #(∂^[k] 𝒞) ≤ #(∂^[k] 𝒜) := by
  induction k generalizing r 𝒜 𝒞 with
  | zero => simpa
  | succ _ ih =>
    refine ih h₁.shadow (kruskal_katona h₁ h₂ h₃) ?_
    convert h₃.shadow

/-- The **Lovasz formulation of the Kruskal-Katona theorem**.

If `|𝒜| ≥ k choose r`, (and everything in `𝒜` has size `r`) then the initial segment we compare to
is just all the subsets of `{0, ..., k - 1}` of size `r`. The `i`-th iterated shadow of this is all
the subsets of `{0, ..., k - 1}` of size `r - i`, so the `i`-th iterated shadow of `𝒜` has at least
`k.choose (r - i)` elements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant48d5968fe3d63169fda6f03dc287ada6e607c8893813558245334a06bd5afd5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant48d5968fe3d63169fda6f03dc287ada6e607c8893813558245334a06bd5afd5b.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4324ed0ff5ea82fc7f5d75b49b76b230fd4dfe7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
