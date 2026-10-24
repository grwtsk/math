# Odd.strictMono_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2795c96eaa3b6a7649c26153e51ed86cd5f662bd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 184,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f26df438f46dc34266600c69bde8d7fb2a223735db7c1480cb0ba27c9568872f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e76a3f22-3569-6739-1ae9-3fd38dd87452",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4814e109-7bad-10b9-5f84-1fdf9f1b0946",
  "kind": "lemma",
  "lexical_name": "Odd.strictMono_pow",
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
  "slug": "odd-strictmono-pow--c75785a5def635a84ff2fb7d",
  "source": {
    "blob": "2795c96eaa3b6a7649c26153e51ed86cd5f662bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 184,
    "path": "GRWTSK/Algebra/Basic/Variantf26df438f46dc34266600c69bde8d7fb2a223735db7c1480cb0ba27c9568872f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c75785a5def635a84ff2fb7dd4863f8d894dda5a3be38606a8a3505f30752a2a",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantf26df438f46dc34266600c69bde8d7fb2a223735db7c1480cb0ba27c9568872f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4814e109-7bad-10b9-5f84-1fdf9f1b0946`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Odd.strictMono_pow (hn : Odd n) : StrictMono fun a : R => a ^ n := by
  have hn₀ : n ≠ 0 := by rintro rfl; simp [Odd] at hn
  intro a b hab
  obtain ha | ha := le_total 0 a
  · exact pow_lt_pow_left₀ hab ha hn₀
  obtain hb | hb := lt_or_ge 0 b
  · exact (hn.pow_nonpos ha).trans_lt (pow_pos hb _)
  obtain ⟨c, hac⟩ := exists_add_of_le ha
  obtain ⟨d, hbd⟩ := exists_add_of_le hb
  have hd := nonneg_of_le_add_right (hb.trans_eq hbd)
  refine lt_of_add_lt_add_right (a := c ^ n + d ^ n) ?_
  dsimp
  calc
    a ^ n + (c ^ n + d ^ n) = d ^ n := by
      rw [← add_assoc, hn.pow_add_pow_eq_zero hac.symm, zero_add]
    _ < c ^ n := pow_lt_pow_left₀ ?_ hd hn₀
    _ = b ^ n + (c ^ n + d ^ n) := by rw [add_left_comm, hn.pow_add_pow_eq_zero hbd.symm, add_zero]
  refine lt_of_add_lt_add_right (a := a + b) ?_
  rwa [add_rotate', ← hbd, add_zero, add_left_comm, ← add_assoc, ← hac, zero_add]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantf26df438f46dc34266600c69bde8d7fb2a223735db7c1480cb0ba27c9568872f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantf26df438f46dc34266600c69bde8d7fb2a223735db7c1480cb0ba27c9568872f.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2795c96eaa3b6a7649c26153e51ed86cd5f662bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
