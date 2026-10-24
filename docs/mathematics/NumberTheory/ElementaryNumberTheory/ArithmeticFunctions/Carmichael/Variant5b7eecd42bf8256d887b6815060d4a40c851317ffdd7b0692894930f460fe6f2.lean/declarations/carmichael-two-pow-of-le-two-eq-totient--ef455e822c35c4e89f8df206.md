# carmichael_two_pow_of_le_two_eq_totient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b059b6e2d660326c739b91ac3778711315d92938",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 123,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5b7eecd42bf8256d887b6815060d4a40c851317ffdd7b0692894930f460fe6f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7767a260-ffd2-bd11-5a71-844508f72f7d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:730d9974-967a-5593-f383-05b6e2325742",
  "kind": "theorem",
  "lexical_name": "carmichael_two_pow_of_le_two_eq_totient",
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
  "slug": "carmichael-two-pow-of-le-two-eq-totient--ef455e822c35c4e89f8df206",
  "source": {
    "blob": "b059b6e2d660326c739b91ac3778711315d92938",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 123,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variant5b7eecd42bf8256d887b6815060d4a40c851317ffdd7b0692894930f460fe6f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef455e822c35c4e89f8df2061eeaa87b5c53284f560f8d1f336ffb64c75ed936",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variant5b7eecd42bf8256d887b6815060d4a40c851317ffdd7b0692894930f460fe6f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:730d9974-967a-5593-f383-05b6e2325742`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem carmichael_two_pow_of_le_two_eq_totient {n : ℕ} (hn : n ≤ 2) :
    carmichael (2 ^ n) = (2 ^ n).totient := by
  rw [carmichael_eq_exponent', ← ZMod.card_units_eq_totient, Fintype.card_eq_nat_card]
  exact IsCyclic.iff_exponent_eq_card.mp <| ZMod.isCyclic_units_two_pow_iff n |>.mpr hn

/-- Note that `2 ^ (n - 1) = 1` when `n = 0`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variant5b7eecd42bf8256d887b6815060d4a40c851317ffdd7b0692894930f460fe6f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variant5b7eecd42bf8256d887b6815060d4a40c851317ffdd7b0692894930f460fe6f2.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b059b6e2d660326c739b91ac3778711315d92938` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
