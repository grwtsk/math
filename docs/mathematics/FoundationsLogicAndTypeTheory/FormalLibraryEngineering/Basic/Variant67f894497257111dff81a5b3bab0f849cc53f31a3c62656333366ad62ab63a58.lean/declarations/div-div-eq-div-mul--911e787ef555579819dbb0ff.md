# div_div_eq_div_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b1645a4d168ee2ce0e8e06775a42e13ddf3ec2e6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 282,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/67f894497257111dff81a5b3bab0f849cc53f31a3c62656333366ad62ab63a58.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7492d003-23cf-871d-0f11-36bbdff19c3f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f7a2aa68-37fa-3998-f9be-959f4156c58a",
  "kind": "theorem",
  "lexical_name": "div_div_eq_div_mul",
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
  "slug": "div-div-eq-div-mul--911e787ef555579819dbb0ff",
  "source": {
    "blob": "b1645a4d168ee2ce0e8e06775a42e13ddf3ec2e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 282,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant67f894497257111dff81a5b3bab0f849cc53f31a3c62656333366ad62ab63a58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:911e787ef555579819dbb0ffad5ba26ed6a8a702f5674fcd1730bf701879a6db",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant67f894497257111dff81a5b3bab0f849cc53f31a3c62656333366ad62ab63a58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7a2aa68-37fa-3998-f9be-959f4156c58a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem div_div_eq_div_mul (m n k : Nat) : m / n / k = m / (n * k) := by
  cases eq_zero_or_pos k with
  | inl k0 => rw [k0, Nat.mul_zero, Nat.div_zero, Nat.div_zero] | inr kpos => ?_
  cases eq_zero_or_pos n with
  | inl n0 => rw [n0, Nat.zero_mul, Nat.div_zero, Nat.zero_div] | inr npos => ?_

  apply Nat.le_antisymm

  apply (le_div_iff_mul_le (Nat.mul_pos npos kpos)).2
  rw [Nat.mul_comm n k, ← Nat.mul_assoc]
  apply (le_div_iff_mul_le npos).1
  apply (le_div_iff_mul_le kpos).1
  (apply Nat.le_refl)

  apply (le_div_iff_mul_le kpos).2
  apply (le_div_iff_mul_le npos).2
  rw [Nat.mul_assoc, Nat.mul_comm n k]
  apply (le_div_iff_mul_le (Nat.mul_pos kpos npos)).1
  apply Nat.le_refl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant67f894497257111dff81a5b3bab0f849cc53f31a3c62656333366ad62ab63a58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant67f894497257111dff81a5b3bab0f849cc53f31a3c62656333366ad62ab63a58.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1645a4d168ee2ce0e8e06775a42e13ddf3ec2e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
