# gcd_mul_of_coprime_of_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:106bf050-d234-9d9b-db76-efd2625f024a",
  "kind": "theorem",
  "lexical_name": "gcd_mul_of_coprime_of_dvd",
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
  "slug": "gcd-mul-of-coprime-of-dvd--46035dd27e9561caee969c18",
  "source": {
    "blob": "56043e21f9b785448af16fe2d78fa75042c9c2e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 192,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46035dd27e9561caee969c187ca3d59caed33e865a5b63ab69b52ed70c8b905b",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:106bf050-d234-9d9b-db76-efd2625f024a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gcd_mul_of_coprime_of_dvd {a b c : ℕ} (hac : Coprime a c) (b_dvd_c : b ∣ c) :
    gcd (a * b) c = b := by
  rcases exists_eq_mul_left_of_dvd b_dvd_c with ⟨d, rfl⟩
  rw [gcd_mul_right]
  convert one_mul b
  exact Coprime.coprime_mul_right_right hac

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56043e21f9b785448af16fe2d78fa75042c9c2e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
