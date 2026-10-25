# deCasteljau_snd_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "056f22f9bc71efe7a46655c76ecf6ca6b52c9b36",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 193,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:29fc5cf6-9781-c756-10e9-6fe0f7389937",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:391f14f5-37ec-fa75-fcca-52c8e0779389",
  "kind": "lemma",
  "lexical_name": "deCasteljau_snd_pos",
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
  "slug": "decasteljau-snd-pos--57d70b55d22a20c2f095c7a3",
  "source": {
    "blob": "056f22f9bc71efe7a46655c76ecf6ca6b52c9b36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 193,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57d70b55d22a20c2f095c7a343406cea36dee8f0e1dee52bf2c007da09375fd6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:391f14f5-37ec-fa75-fcca-52c8e0779389`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma deCasteljau_snd_pos (n : ℕ) (p : ControlRow (V × ℝ))
    (t : UnitInterval)
    (hp : ∀ i, i ≤ n → 0 < (p i).2) :
    0 < (deCasteljau n p t.1).2 := by
  induction n generalizing p with
  | zero => simpa [deCasteljau] using hp 0 (by omega)
  | succ n ih =>
      rw [deCasteljau]
      apply ih (step t.1 p)
      intro i hi
      have h₀ := hp i (by omega)
      have h₁ := hp (i + 1) (by omega)
      change 0 < (1 - t.1) * (p i).2 + t.1 * (p (i + 1)).2
      by_cases ht : t.1 = 0
      · simpa [ht] using h₀
      · exact add_pos_of_nonneg_of_pos
          (mul_nonneg (sub_nonneg.mpr t.2.2) h₀.le)
          (mul_pos (lt_of_le_of_ne t.2.1 (Ne.symm ht)) h₁)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `056f22f9bc71efe7a46655c76ecf6ca6b52c9b36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
