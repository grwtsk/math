# odd_mod_four_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6781b88c-169b-0bc0-3ae4-fa545afc86d3",
  "kind": "theorem",
  "lexical_name": "odd_mod_four_iff",
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
  "slug": "odd-mod-four-iff--1aff5cab73bf4b9bc9f7dd09",
  "source": {
    "blob": "63f9190dcb369537651d0142c3361a5a9689de7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 541,
    "line": 534,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ModEq/Variant7518fc7c0b6a1d1678ec84b7ced53dd20ced4ef5f5bf0388a3a93f9f6de57820.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1aff5cab73bf4b9bc9f7dd09b1fb2cd9b4c2b649e8fad729960936e1d9051db4",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ModEq/Variant7518fc7c0b6a1d1678ec84b7ced53dd20ced4ef5f5bf0388a3a93f9f6de57820.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6781b88c-169b-0bc0-3ae4-fa545afc86d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 534–541.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem odd_mod_four_iff {n : ℕ} : n % 2 = 1 ↔ n % 4 = 1 ∨ n % 4 = 3 :=
  have help : ∀ m : ℕ, m < 4 → m % 2 = 1 → m = 1 ∨ m = 3 := by decide
  ⟨fun hn =>
    help (n % 4) (mod_lt n (by norm_num)) <| (mod_mod_of_dvd n (by norm_num : 2 ∣ 4)).trans hn,
    fun h => Or.elim h odd_of_mod_four_eq_one odd_of_mod_four_eq_three⟩
#align nat.odd_mod_four_iff Nat.odd_mod_four_iff

end Nat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ModEq/Variant7518fc7c0b6a1d1678ec84b7ced53dd20ced4ef5f5bf0388a3a93f9f6de57820.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ModEq/Variant7518fc7c0b6a1d1678ec84b7ced53dd20ced4ef5f5bf0388a3a93f9f6de57820.lean#L534).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63f9190dcb369537651d0142c3361a5a9689de7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
