# TendstoUniformlyOn.eventually_forall_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2db33fd-6a86-5ce5-1f01-619b2f4ba1ee",
  "kind": "lemma",
  "lexical_name": "TendstoUniformlyOn.eventually_forall_lt",
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
  "slug": "tendstouniformlyon-eventually-forall-lt--570a5b15b7ef3629367474c0",
  "source": {
    "blob": "c3b2ede85fbce4989139377bd5d8cf6c9b93046b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 43,
    "path": "GRWTSK/Topology/GeneralTopology/Order/Variant6ac6364650747f2509a73d7b093861b2e30a2a5da4324b874b7aa9d60ac50c4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:570a5b15b7ef3629367474c064a2618b903b24a6d6923b24d5a728528e109081",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Order/Variant6ac6364650747f2509a73d7b093861b2e30a2a5da4324b874b7aa9d60ac50c4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2db33fd-6a86-5ce5-1f01-619b2f4ba1ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma TendstoUniformlyOn.eventually_forall_lt {u v : β} (huv : u < v)
    (hf : TendstoUniformlyOn f g p K) (hg : ∀ x ∈ K, g x ≤ u) :
    ∀ᶠ i in p, ∀ x ∈ K, f i x < v := by
  simp only [tendstoUniformlyOn_iff_tendsto, uniformity_eq_comap_neg_add_nhds_zero,
    tendsto_iff_eventually, eventually_comap, Prod.forall] at *
  conv at hf => enter [2]; rw [eventually_iff_exists_mem]
  have hf2 := hf (fun x ↦ -x.1 + x.2 < -u + v) ⟨_, (isOpen_gt' (-u + v)).mem_nhds (by simp [huv]),
    fun y hy a b hab ↦ (hab.symm ▸ hy :)⟩
  filter_upwards [eventually_prod_principal_iff.mp hf2] with i hi x hx
  simpa using add_lt_add_of_le_of_lt (hg x hx) (hi x hx)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Order/Variant6ac6364650747f2509a73d7b093861b2e30a2a5da4324b874b7aa9d60ac50c4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Order/Variant6ac6364650747f2509a73d7b093861b2e30a2a5da4324b874b7aa9d60ac50c4a.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3b2ede85fbce4989139377bd5d8cf6c9b93046b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
