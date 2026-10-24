# χ₄_int_eq_if_mod_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aef4a5cd5769374a3b5ff8da4d1b3c4e52abdc47",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/900e4a4f324135a0e29994b9d95605fa10bea14c5ab34b510d1d356a80c4aeaa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8683e12a-2012-8518-78b5-b03285843d6b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d2b486f8-0647-f557-4ec5-3b125146182b",
  "kind": "theorem",
  "lexical_name": "χ₄_int_eq_if_mod_four",
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
  "slug": "int-eq-if-mod-four--292ef96c46335814d2e3945b",
  "source": {
    "blob": "aef4a5cd5769374a3b5ff8da4d1b3c4e52abdc47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 65,
    "path": "GRWTSK/NumberTheory/ZModChar/Variant900e4a4f324135a0e29994b9d95605fa10bea14c5ab34b510d1d356a80c4aeaa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:292ef96c46335814d2e3945b99cc363e9a302490b68cb318483d378b76d02e95",
  "verification": {
    "reference": "docs/verification/NumberTheory/ZModChar/Variant900e4a4f324135a0e29994b9d95605fa10bea14c5ab34b510d1d356a80c4aeaa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2b486f8-0647-f557-4ec5-3b125146182b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem χ₄_int_eq_if_mod_four (n : ℤ) :
    χ₄ n = if n % 2 = 0 then 0 else if n % 4 = 1 then 1 else -1 := by
  have help : ∀ m : ℤ, 0 ≤ m → m < 4 → χ₄ m = if m % 2 = 0 then 0 else if m = 1 then 1 else -1 := by
    decide
  rw [← Int.emod_emod_of_dvd n (by lia : (2 : ℤ) ∣ 4), ← ZMod.intCast_mod n 4]
  exact help (n % 4) (Int.emod_nonneg n (by lia)) (Int.emod_lt_abs n (by lia))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ZModChar/Variant900e4a4f324135a0e29994b9d95605fa10bea14c5ab34b510d1d356a80c4aeaa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ZModChar/Variant900e4a4f324135a0e29994b9d95605fa10bea14c5ab34b510d1d356a80c4aeaa.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aef4a5cd5769374a3b5ff8da4d1b3c4e52abdc47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
