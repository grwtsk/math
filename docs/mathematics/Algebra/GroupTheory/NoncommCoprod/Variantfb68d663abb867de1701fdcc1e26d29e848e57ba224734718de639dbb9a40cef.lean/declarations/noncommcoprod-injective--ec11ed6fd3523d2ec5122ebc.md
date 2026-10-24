# noncommCoprod_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9e86894ebe8bc9e0b95fafd36910407ad7777ee6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 123,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fb68d663abb867de1701fdcc1e26d29e848e57ba224734718de639dbb9a40cef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f58df6d2-7eab-19f8-a9a2-05d94bddfdff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7c7e45ef-97df-9030-01f7-c6467880e78c",
  "kind": "lemma",
  "lexical_name": "noncommCoprod_injective",
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
  "slug": "noncommcoprod-injective--ec11ed6fd3523d2ec5122ebc",
  "source": {
    "blob": "9e86894ebe8bc9e0b95fafd36910407ad7777ee6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 123,
    "path": "GRWTSK/Algebra/GroupTheory/NoncommCoprod/Variantfb68d663abb867de1701fdcc1e26d29e848e57ba224734718de639dbb9a40cef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec11ed6fd3523d2ec5122ebc19d836c0b2c6d5b60985f0ccf16768330c11bd95",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/NoncommCoprod/Variantfb68d663abb867de1701fdcc1e26d29e848e57ba224734718de639dbb9a40cef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c7e45ef-97df-9030-01f7-c6467880e78c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma noncommCoprod_injective {M N P : Type*} [Group M] [Group N] [Group P]
    (f : M →* P) (g : N →* P) (comm : ∀ (m : M) (n : N), Commute (f m) (g n)) :
    Function.Injective (noncommCoprod f g comm) ↔
      (Function.Injective f ∧ Function.Injective g ∧ _root_.Disjoint f.range g.range) := by
  simp only [injective_iff_map_eq_one, disjoint_iff_inf_le,
    noncommCoprod_apply, Prod.forall, Prod.mk_eq_one]
  refine ⟨fun h ↦ ⟨fun x ↦ ?_, fun x ↦ ?_, ?_⟩, ?_⟩
  · simpa using h x 1
  · simpa using h 1 x
  · intro x ⟨⟨y, hy⟩, z, hz⟩
    rwa [(h y z⁻¹ (by rw [map_inv, hy, hz, mul_inv_cancel])).1, map_one, eq_comm] at hy
  · intro ⟨hf, hg, hp⟩ a b h
    have key := hp ⟨⟨a⁻¹, by rwa [map_inv, inv_eq_iff_mul_eq_one]⟩, b, rfl⟩
    exact ⟨hf a (by rwa [key, mul_one] at h), hg b key⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/NoncommCoprod/Variantfb68d663abb867de1701fdcc1e26d29e848e57ba224734718de639dbb9a40cef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/NoncommCoprod/Variantfb68d663abb867de1701fdcc1e26d29e848e57ba224734718de639dbb9a40cef.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e86894ebe8bc9e0b95fafd36910407ad7777ee6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
