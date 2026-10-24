# coprime_multiples_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dc6bafc7cf55e1aa42f97a83a9a536d964de1a27",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 107,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:089eb66a-4557-af35-8dc3-786fc7718718",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:28cd36f5-be5c-1449-a955-be87479d6999",
  "kind": "theorem",
  "lexical_name": "coprime_multiples_card",
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
  "slug": "coprime-multiples-card--d5166a67843421749aeec749",
  "source": {
    "blob": "dc6bafc7cf55e1aa42f97a83a9a536d964de1a27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 107,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5166a67843421749aeec749287e55a9df783b75c532fe720f24cb7753f4a4f6",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28cd36f5-be5c-1449-a955-be87479d6999`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coprime_multiples_card (h j a : ℕ) (ha : 1 ≤ a) (hah : Nat.Coprime a h) :
    ((Icc 1 j).filter (fun n ↦ a ∣ n ∧ Nat.Coprime n h)).card =
      coprimeCount h (j / a) := by
  classical
  unfold coprimeCount
  symm
  apply card_bij (fun k _ ↦ a * k)
  · intro k hk
    obtain ⟨hk, hkh⟩ := mem_filter.mp hk
    obtain ⟨hk1, hkj⟩ := mem_Icc.mp hk
    apply mem_filter.mpr
    refine ⟨mem_Icc.mpr ⟨by nlinarith, ?_⟩, dvd_mul_right a k, ?_⟩
    · simpa only [Nat.mul_comm k a] using
        (Nat.le_div_iff_mul_le (by omega : 0 < a)).mp hkj
    · exact hah.mul_left hkh
  · intro k hk l hl heq
    exact Nat.eq_of_mul_eq_mul_left (by omega : 0 < a) heq
  · intro n hn
    obtain ⟨hn, had, hnh⟩ := mem_filter.mp hn
    obtain ⟨hn1, hnj⟩ := mem_Icc.mp hn
    refine ⟨n / a, mem_filter.mpr ⟨mem_Icc.mpr ⟨?_, ?_⟩, ?_⟩, ?_⟩
    · have heq := Nat.mul_div_cancel' had
      nlinarith
    · exact Nat.div_le_div_right hnj
    · exact hnh.of_dvd_left (Nat.div_dvd_of_dvd had)
    · exact Nat.mul_div_cancel' had


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc6bafc7cf55e1aa42f97a83a9a536d964de1a27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
