# proper_preserves_primes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "43bdedd3a4604fa32406d0c7c2071ccd89928165",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 241,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:81ef3584-f162-e914-38fb-ca8a37977ec2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f4d01743-bb04-3a34-b254-bd4a59d62b96",
  "kind": "theorem",
  "lexical_name": "proper_preserves_primes",
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
  "slug": "proper-preserves-primes--633ad5c3479869bdf4895d8c",
  "source": {
    "blob": "43bdedd3a4604fa32406d0c7c2071ccd89928165",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 241,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:633ad5c3479869bdf4895d8ca90b365f7bc1bf9901fcb8d4f0383a3dba5cb825",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4d01743-bb04-3a34-b254-bd4a59d62b96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem proper_preserves_primes (P : ProperPacking) (n : ℤ)
    (hrange : P.InRange n)
    (hprime : ∀ h ∈ P.pattern, ((n + h).toNat).Prime) : P.Survives n := by
  refine ⟨hrange, Or.inr ?_⟩
  intro p _ hp h hh hdiv
  exact (Nat.dvd_prime (hprime h hh)).mp hdiv |>.resolve_left hp.ne_one

/-- Increasing prime support only deletes additional raw integer survivors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43bdedd3a4604fa32406d0c7c2071ccd89928165` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
