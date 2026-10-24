# multipliableUniformlyOn_nat_one_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e247f9a4-dcd4-560a-8eb1-aa7c72bcc619",
  "kind": "lemma",
  "lexical_name": "multipliableUniformlyOn_nat_one_add",
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
  "slug": "multipliableuniformlyon-nat-one-add--130bacfacd7412f6273cd388",
  "source": {
    "blob": "b4cbb9b0ebdc09c3a814cbc41a7c3bfd42d2ccb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 126,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/MultipliableUniformlyOn/Variant3954e287e54d72411e2b02b0035215f6be515a8e5de132a2ab896de21fbef0be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:130bacfacd7412f6273cd388db1c210f12ae7071fb304c8c1cfc277421ba61c7",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/MultipliableUniformlyOn/Variant3954e287e54d72411e2b02b0035215f6be515a8e5de132a2ab896de21fbef0be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e247f9a4-dcd4-560a-8eb1-aa7c72bcc619`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma multipliableUniformlyOn_nat_one_add {f : ℕ → α → R} (hK : IsCompact K)
    {u : ℕ → ℝ} (hu : Summable u) (h : ∀ᶠ n in atTop, ∀ x ∈ K, ‖f n x‖ ≤ u n)
    (hcts : ∀ n, ContinuousOn (f n) K) :
    MultipliableUniformlyOn (fun n x ↦ 1 + f n x) K :=
  ⟨_, hasProdUniformlyOn_nat_one_add hK hu h hcts⟩

section LocallyCompactSpace

variable [LocallyCompactSpace α]

/-- If a sequence of continuous functions `f i x` on an open subset `K` have norms eventually
bounded by a summable function, then `∏' i, (1 + f i x)` is locally uniformly convergent on `K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/MultipliableUniformlyOn/Variant3954e287e54d72411e2b02b0035215f6be515a8e5de132a2ab896de21fbef0be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/MultipliableUniformlyOn/Variant3954e287e54d72411e2b02b0035215f6be515a8e5de132a2ab896de21fbef0be.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4cbb9b0ebdc09c3a814cbc41a7c3bfd42d2ccb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
