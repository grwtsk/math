# superpolynomialDecay_iff_abs_isBoundedUnder

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
      "line": 195,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4b134858-aeb3-9d99-e1df-295fc431d5a9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:126d4368-6f98-38c1-1599-97be8525b012",
  "kind": "theorem",
  "lexical_name": "superpolynomialDecay_iff_abs_isBoundedUnder",
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
  "slug": "superpolynomialdecay-iff-abs-isboundedunder--5e988984793141f46e224907",
  "source": {
    "blob": "cf42927936151d2269bf8181b55c8d38999e4e15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 195,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e988984793141f46e224907379b27d21ee11c58615d0187bbade78b57cadf51",
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

Occurrence: `result:126d4368-6f98-38c1-1599-97be8525b012`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem superpolynomialDecay_iff_abs_isBoundedUnder (hk : Tendsto k l atTop) :
    SuperpolynomialDecay l k f ↔
    ∀ z : ℕ, IsBoundedUnder (· ≤ ·) l fun a : α => |k a ^ z * f a| := by
  refine
    ⟨fun h z => Tendsto.isBoundedUnder_le (Tendsto.abs (h z)), fun h =>
      (superpolynomialDecay_iff_abs_tendsto_zero l k f).2 fun z => ?_⟩
  obtain ⟨m, hm⟩ := h (z + 1)
  have h1 : Tendsto (fun _ : α => (0 : β)) l (𝓝 0) := tendsto_const_nhds
  have h2 : Tendsto (fun a : α => |(k a)⁻¹| * m) l (𝓝 0) :=
    zero_mul m ▸
      Tendsto.mul_const m ((tendsto_zero_iff_abs_tendsto_zero _).1 hk.inv_tendsto_atTop)
  refine
    tendsto_of_tendsto_of_tendsto_of_le_of_le' h1 h2 (Eventually.of_forall fun x => abs_nonneg _)
      ((eventually_map.1 hm).mp ?_)
  refine (hk.eventually_ne_atTop 0).mono fun x hk0 hx => ?_
  refine Eq.trans_le ?_ (mul_le_mul_of_nonneg_left hx <| abs_nonneg (k x)⁻¹)
  rw [← abs_mul, ← mul_assoc, pow_succ', ← mul_assoc, inv_mul_cancel₀ hk0, one_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf42927936151d2269bf8181b55c8d38999e4e15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
