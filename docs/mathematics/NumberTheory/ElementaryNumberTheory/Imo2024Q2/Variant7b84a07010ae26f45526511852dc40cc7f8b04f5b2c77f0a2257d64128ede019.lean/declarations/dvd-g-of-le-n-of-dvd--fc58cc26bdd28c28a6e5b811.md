# dvd_g_of_le_N_of_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e1d7e13-1cda-5f1e-c8dd-ce37be1b7a14",
  "kind": "lemma",
  "lexical_name": "dvd_g_of_le_N_of_dvd",
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
  "slug": "dvd-g-of-le-n-of-dvd--fc58cc26bdd28c28a6e5b811",
  "source": {
    "blob": "228ff3c70e8e252c951e0162d1e62becc3cfe20d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 91,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant7b84a07010ae26f45526511852dc40cc7f8b04f5b2c77f0a2257d64128ede019.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc58cc26bdd28c28a6e5b811dbbac8365f4d5eb1b2ca8fe37d7fef889e647ab1",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant7b84a07010ae26f45526511852dc40cc7f8b04f5b2c77f0a2257d64128ede019.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e1d7e13-1cda-5f1e-c8dd-ce37be1b7a14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dvd_g_of_le_N_of_dvd {n : ℕ} (hn : h.N ≤ n) {d : ℕ} (hab : d ∣ a ^ n + b)
    (hba : d ∣ b ^ n + a) : d ∣ h.g := by
  rw [← h.gcd_eq_g hn, Nat.dvd_gcd_iff]
  exact ⟨hab, hba⟩

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant7b84a07010ae26f45526511852dc40cc7f8b04f5b2c77f0a2257d64128ede019.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant7b84a07010ae26f45526511852dc40cc7f8b04f5b2c77f0a2257d64128ede019.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `228ff3c70e8e252c951e0162d1e62becc3cfe20d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
