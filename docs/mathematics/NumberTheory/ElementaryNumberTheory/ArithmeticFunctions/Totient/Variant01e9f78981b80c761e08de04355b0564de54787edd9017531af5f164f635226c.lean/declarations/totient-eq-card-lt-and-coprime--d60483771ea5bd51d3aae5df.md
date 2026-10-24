# totient_eq_card_lt_and_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c94929f1903663ff9019ab796e45d205c1d83093",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 53,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fcf60b29-6356-264d-de31-61b5901c1036",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d979cfc4-36e1-279d-b23b-06f01802b2eb",
  "kind": "theorem",
  "lexical_name": "totient_eq_card_lt_and_coprime",
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
  "slug": "totient-eq-card-lt-and-coprime--d60483771ea5bd51d3aae5df",
  "source": {
    "blob": "c94929f1903663ff9019ab796e45d205c1d83093",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 53,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d60483771ea5bd51d3aae5df0f60628da2b180e77a26b2ec2b100b5ea04d93af",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d979cfc4-36e1-279d-b23b-06f01802b2eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem totient_eq_card_lt_and_coprime (n : ℕ) : φ n = Nat.card { m | m < n ∧ n.coprime m } := by
  let e : { m | m < n ∧ n.coprime m } ≃ Finset.filter n.coprime (Finset.range n) :=
    { toFun := fun m => ⟨m, by simpa only [Finset.mem_filter, Finset.mem_range] using m.property⟩
      invFun := fun m => ⟨m, by simpa only [Finset.mem_filter, Finset.mem_range] using m.property⟩
      left_inv := fun m => by simp only [Subtype.coe_mk, Subtype.coe_eta]
      right_inv := fun m => by simp only [Subtype.coe_mk, Subtype.coe_eta] }
  rw [totient_eq_card_coprime, card_congr e, card_eq_fintype_card, Fintype.card_coe]
#align nat.totient_eq_card_lt_and_coprime Nat.totient_eq_card_lt_and_coprime

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c94929f1903663ff9019ab796e45d205c1d83093` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
