# finprod_heightOneSpectrum_factorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "982d54756b3466702946087f8c9cd53465a6cb75",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 176,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c852e3ba-e53b-3a03-4703-27bb09af30d6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cf1dfa34-71a6-2991-2606-ec93e1283682",
  "kind": "theorem",
  "lexical_name": "finprod_heightOneSpectrum_factorization",
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
  "slug": "finprod-heightonespectrum-factorization--fbe327947b0bd0b3c312849f",
  "source": {
    "blob": "982d54756b3466702946087f8c9cd53465a6cb75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 176,
    "path": "GRWTSK/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbe327947b0bd0b3c312849f315280624d833da580b5cf5c2e88c0540d80be64",
  "verification": {
    "reference": "docs/verification/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf1dfa34-71a6-2991-2606-ec93e1283682`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finprod_heightOneSpectrum_factorization {I : Ideal R} (hI : I ≠ 0) :
    ∏ᶠ v : HeightOneSpectrum R, v.maxPowDividing I = I := by
  rw [← associated_iff_eq, ← Associates.mk_eq_mk_iff_associated]
  classical
  apply Associates.eq_of_eq_counts
  · apply Associates.finprod_ne_zero I
  · apply Associates.mk_ne_zero.mpr hI
  intro v hv
  obtain ⟨J, hJv⟩ := Associates.exists_rep v
  rw [← hJv, Associates.irreducible_mk] at hv
  rw [← hJv]
  apply Ideal.finprod_count
    ⟨J, Ideal.isPrime_of_prime (irreducible_iff_prime.mp hv), Irreducible.ne_zero hv⟩ I hI

variable (K)

open scoped Classical in
/-- The ideal `I` equals the finprod `∏_v v^(val_v(I))`, when both sides are regarded as fractional
ideals of `R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `982d54756b3466702946087f8c9cd53465a6cb75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
