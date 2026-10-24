# primeFactorsList_chain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2a8e6a64787a3b19c4b4eb7c2289bf8c3f200f13",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a30c37e7-6160-04b3-90fb-3cf0ec8d0482",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:392e0d07-35cd-c9b7-0856-36de9689cad6",
  "kind": "theorem",
  "lexical_name": "primeFactorsList_chain",
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
  "slug": "primefactorslist-chain--f97074bb6f5430210011eb31",
  "source": {
    "blob": "2a8e6a64787a3b19c4b4eb7c2289bf8c3f200f13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 86,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f97074bb6f5430210011eb31f37b16207db69cfd0add581b64c9c1e378a77931",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:392e0d07-35cd-c9b7-0856-36de9689cad6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeFactorsList_chain {n : ℕ} :
    ∀ {a}, (∀ p, Prime p → p ∣ n → a ≤ p) → List.Chain (· ≤ ·) a (primeFactorsList n) := by
  match n with
  | 0 => simp
  | 1 => simp
  | k + 2 =>
      intro a h
      let m := minFac (k + 2)
      have : (k + 2) / m < (k + 2) := factors_lemma
      rw [primeFactorsList]
      refine List.Chain.cons ((le_minFac.2 h).resolve_left (by simp)) (primeFactorsList_chain ?_)
      exact fun p pp d => minFac_le_of_dvd pp.two_le (d.trans <| div_dvd_of_dvd <| minFac_dvd _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a8e6a64787a3b19c4b4eb7c2289bf8c3f200f13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
