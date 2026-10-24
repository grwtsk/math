# superpolynomialDecay_iff_zpow_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cf42927936151d2269bf8181b55c8d38999e4e15",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 213,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:74f3ec81-5447-04b0-a3b1-da51b622f0fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d8e74058-c531-b64d-e96c-6cc66baff4ea",
  "kind": "theorem",
  "lexical_name": "superpolynomialDecay_iff_zpow_tendsto_zero",
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
  "slug": "superpolynomialdecay-iff-zpow-tendsto-zero--96967c36c5f6c0dc3f2c77d5",
  "source": {
    "blob": "cf42927936151d2269bf8181b55c8d38999e4e15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 213,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96967c36c5f6c0dc3f2c77d5e261c2df2a6f891b816bb07cc8ed17c5e2428aeb",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8e74058-c531-b64d-e96c-6cc66baff4ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem superpolynomialDecay_iff_zpow_tendsto_zero (hk : Tendsto k l atTop) :
    SuperpolynomialDecay l k f ↔ ∀ z : ℤ, Tendsto (fun a : α => k a ^ z * f a) l (𝓝 0) := by
  refine ⟨fun h z => ?_, fun h n => by simpa only [zpow_natCast] using h (n : ℤ)⟩
  by_cases hz : 0 ≤ z
  · unfold Tendsto
    lift z to ℕ using hz
    simpa using h z
  · have : Tendsto (fun a => k a ^ z) l (𝓝 0) :=
      Tendsto.comp (tendsto_zpow_atTop_zero (not_le.1 hz)) hk
    have h : Tendsto f l (𝓝 0) := by simpa using h 0
    exact zero_mul (0 : β) ▸ this.mul h

variable {f}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf42927936151d2269bf8181b55c8d38999e4e15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
