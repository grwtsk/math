# mixedRadix_ofNat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07f715f9-e7d1-d66b-6941-8893cc19f05e",
  "kind": "theorem",
  "lexical_name": "mixedRadix_ofNat",
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
  "slug": "mixedradix-ofnat--4e47737c8ffd3eb7c366082e",
  "source": {
    "blob": "0f5f0c50442dcc83b0ea890437b65a446e62c591",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 134,
    "path": "GRWTSK/Algebra/SequentialPrime/Variant2fcd1551bc1bb87dcabf1207f29b0e5652369b4faf04f445aec169047fbb4888.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e47737c8ffd3eb7c366082eca5984a164ec17fee6d56811aab4f8686134e01c",
  "verification": {
    "reference": "docs/verification/Algebra/SequentialPrime/Variant2fcd1551bc1bb87dcabf1207f29b0e5652369b4faf04f445aec169047fbb4888.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07f715f9-e7d1-d66b-6941-8893cc19f05e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mixedRadix_ofNat
    (radices : List Nat)
    (positive : ∀ radix ∈ radices, 0 < radix)
    (value : Nat)
    (bound : value < cardinality radices) :
    mixedRadix (ofNat radices positive value) = value := by
  induction radices generalizing value with
  | nil =>
      simp only [cardinality] at bound
      have : value = 0 := by omega
      subst value
      rfl
  | cons radix tail inductionHypothesis =>
      have radixPositive := positive radix (by simp)
      have tailBound : value / radix < cardinality tail := by
        rw [Nat.div_lt_iff_lt_mul radixPositive]
        simpa [cardinality, Nat.mul_comm] using bound
      simp only [ofNat, mixedRadix]
      rw [inductionHypothesis
        (fun axis member => positive axis (by simp [member]))
        (value / radix) tailBound]
      exact Nat.mod_add_div value radix

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SequentialPrime/Variant2fcd1551bc1bb87dcabf1207f29b0e5652369b4faf04f445aec169047fbb4888.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SequentialPrime/Variant2fcd1551bc1bb87dcabf1207f29b0e5652369b4faf04f445aec169047fbb4888.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f5f0c50442dcc83b0ea890437b65a446e62c591` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
