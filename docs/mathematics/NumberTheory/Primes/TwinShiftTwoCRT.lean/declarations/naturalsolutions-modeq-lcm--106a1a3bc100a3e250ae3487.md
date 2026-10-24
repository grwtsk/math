# naturalSolutions_modEq_lcm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:324a44c9-298c-f12b-9ea9-5c9114addf6e",
  "kind": "theorem",
  "lexical_name": "naturalSolutions_modEq_lcm",
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
  "slug": "naturalsolutions-modeq-lcm--106a1a3bc100a3e250ae3487",
  "source": {
    "blob": "8b6287ffb38838f8d9b2e7eeadd2de64ad4542d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 171,
    "path": "GRWTSK/NumberTheory/Primes/TwinShiftTwoCRT.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:106a1a3bc100a3e250ae348771ccef81527ef9e400e2b72e131412ea9623175d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/TwinShiftTwoCRT.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:324a44c9-298c-f12b-9ea9-5c9114addf6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem naturalSolutions_modEq_lcm
    {d e m n : ℕ}
    (hm : d ∣ m ∧ e ∣ m + 2)
    (hn : d ∣ n ∧ e ∣ n + 2) :
    m ≡ n [MOD Nat.lcm d e] := by
  have hdmod : m ≡ n [MOD d] :=
    hm.1.modEq_zero_nat.trans hn.1.modEq_zero_nat.symm
  have hemod_add : m + 2 ≡ n + 2 [MOD e] :=
    hm.2.modEq_zero_nat.trans hn.2.modEq_zero_nat.symm
  have hemod : m ≡ n [MOD e] :=
    Nat.ModEq.add_right_cancel' 2 hemod_add
  exact Nat.mod_lcm hdmod hemod

/-- Adding any multiple of the lcm preserves both shift-two divisibility
conditions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/TwinShiftTwoCRT.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/TwinShiftTwoCRT.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b6287ffb38838f8d9b2e7eeadd2de64ad4542d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
