# prime_of_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4016ac7a4b9f349db558481d8413fff972046f1d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 140,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1d/1de56cf465b529d36d3569c52ed0290c016bc960098f83adc509c03c2afde0e8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a1dc2f82-c573-105c-0b39-6486536dc4e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:245396ca-55a2-2619-edd4-80398d2f8cee",
  "kind": "theorem",
  "lexical_name": "prime_of_coprime",
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
  "slug": "prime-of-coprime--6ac5dd903a26eb8d158591d8",
  "source": {
    "blob": "4016ac7a4b9f349db558481d8413fff972046f1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 140,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variant1de56cf465b529d36d3569c52ed0290c016bc960098f83adc509c03c2afde0e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ac5dd903a26eb8d158591d87b9f1082312749e2b3cff0d70b05a2da917e534e",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Defs/Variant1de56cf465b529d36d3569c52ed0290c016bc960098f83adc509c03c2afde0e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:245396ca-55a2-2619-edd4-80398d2f8cee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_of_coprime (n : ℕ) (h1 : 1 < n) (h : ∀ m < n, m ≠ 0 → n.Coprime m) : Prime n := by
  refine prime_def_lt.mpr ⟨h1, fun m mlt mdvd => ?_⟩
  have hm : m ≠ 0 := by
    rintro rfl
    rw [zero_dvd_iff] at mdvd
    exact mlt.ne' mdvd
  exact (h m mlt hm).symm.eq_one_of_dvd mdvd

/--
This instance is set up to work in the kernel (`by decide`) for small values.

Below (`decidablePrime'`) we will define a faster variant to be used by the compiler
(e.g. in `#eval` or `by native_decide`).

If you need to prove that a particular number is prime, in any case
you should not use `by decide`, but rather `by norm_num`, which is
much faster.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Defs/Variant1de56cf465b529d36d3569c52ed0290c016bc960098f83adc509c03c2afde0e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variant1de56cf465b529d36d3569c52ed0290c016bc960098f83adc509c03c2afde0e8.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4016ac7a4b9f349db558481d8413fff972046f1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
