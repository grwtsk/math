# absNorm_eq_pow_inertiaDeg'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aeddf4dd3156559032004e267ba77f57a0cddc82",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 202,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e20771b99d4a0f0e48fc1358acd6e0721a6ed169822c78f76f7e202a6318c605.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8a9a14f7-d41d-bec9-8843-685ca27631c5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7956804c-ff3e-648c-9134-664d624a5a5f",
  "kind": "lemma",
  "lexical_name": "absNorm_eq_pow_inertiaDeg'",
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
  "slug": "absnorm-eq-pow-inertiadeg--3ef9740127d5ae350863a073",
  "source": {
    "blob": "aeddf4dd3156559032004e267ba77f57a0cddc82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 202,
    "path": "GRWTSK/Algebra/Inertia/Variante20771b99d4a0f0e48fc1358acd6e0721a6ed169822c78f76f7e202a6318c605.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ef9740127d5ae350863a07336c9a38465583dd1be16beadcde7cbfe00264bdb",
  "verification": {
    "reference": "docs/verification/Algebra/Inertia/Variante20771b99d4a0f0e48fc1358acd6e0721a6ed169822c78f76f7e202a6318c605.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7956804c-ff3e-648c-9134-664d624a5a5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma absNorm_eq_pow_inertiaDeg' [IsDedekindDomain R] [Infinite R] [Module.Finite ℤ R] {p : ℕ}
    (P : Ideal R) [P.LiesOver (span {(p : ℤ)})] (hp : p.Prime) :
    absNorm P = p ^ ((span {(p : ℤ)}).inertiaDeg' P) :=
  absNorm_eq_pow_inertiaDeg P (Nat.prime_iff_prime_int.mp hp)

end absNorm

section tower

variable {R S T : Type*} [CommRing R] [CommRing S] [CommRing T]
variable [Algebra R S] [Algebra S T] [Algebra R T] [IsScalarTower R S T]

/-- Let `T / S / R` be a tower of algebras, `p, P, I` be ideals in `R, S, T`, respectively,
  and `p` and `P` are maximal. If `p = P ∩ S` and `P = I ∩ S`,
  then `f (I | p) = f (P | p) * f (I | P)`. -/
@[deprecated "Use `Ideal.inertiaDeg_tower` instead." (since := "2026-08-14")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Inertia/Variante20771b99d4a0f0e48fc1358acd6e0721a6ed169822c78f76f7e202a6318c605.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Inertia/Variante20771b99d4a0f0e48fc1358acd6e0721a6ed169822c78f76f7e202a6318c605.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aeddf4dd3156559032004e267ba77f57a0cddc82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
