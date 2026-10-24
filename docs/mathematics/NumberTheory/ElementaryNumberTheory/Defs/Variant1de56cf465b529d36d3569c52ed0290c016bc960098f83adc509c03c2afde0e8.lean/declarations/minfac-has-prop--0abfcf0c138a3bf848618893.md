# minFac_has_prop

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
      "line": 264,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1d/1de56cf465b529d36d3569c52ed0290c016bc960098f83adc509c03c2afde0e8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2373e380-b373-3399-5a6d-5f468e2a8621",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:afbe1d84-cb28-118f-890c-bfa8785bd04b",
  "kind": "theorem",
  "lexical_name": "minFac_has_prop",
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
  "slug": "minfac-has-prop--0abfcf0c138a3bf848618893",
  "source": {
    "blob": "4016ac7a4b9f349db558481d8413fff972046f1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 264,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variant1de56cf465b529d36d3569c52ed0290c016bc960098f83adc509c03c2afde0e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0abfcf0c138a3bf848618893a6777ebcd6ce9b6b4d101569635e16e2ad7dee5e",
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

Occurrence: `result:afbe1d84-cb28-118f-890c-bfa8785bd04b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minFac_has_prop {n : ℕ} (n1 : n ≠ 1) : minFacProp n (minFac n) := by
  by_cases n0 : n = 0
  · simp [n0, minFacProp, GE.ge]
  have n2 : 2 ≤ n := by
    revert n0 n1
    rcases n with (_ | _ | _) <;> simp [succ_le_succ]
  simp only [minFac_eq, Nat.isUnit_iff]
  by_cases d2 : 2 ∣ n <;> simp only [d2, ↓reduceIte]
  · exact ⟨le_rfl, d2, fun k k2 _ => k2⟩
  · refine
      minFacAux_has_prop n2 3 0 rfl fun m m2 d => (Nat.eq_or_lt_of_le m2).resolve_left (mt ?_ d2)
    exact fun e => e.symm ▸ d

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Defs/Variant1de56cf465b529d36d3569c52ed0290c016bc960098f83adc509c03c2afde0e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variant1de56cf465b529d36d3569c52ed0290c016bc960098f83adc509c03c2afde0e8.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4016ac7a4b9f349db558481d8413fff972046f1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
