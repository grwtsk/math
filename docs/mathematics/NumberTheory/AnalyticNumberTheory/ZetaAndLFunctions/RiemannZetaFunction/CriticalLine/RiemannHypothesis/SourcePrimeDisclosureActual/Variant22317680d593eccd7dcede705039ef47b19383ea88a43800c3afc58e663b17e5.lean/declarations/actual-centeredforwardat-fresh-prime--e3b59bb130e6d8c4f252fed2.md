# actual_centeredForwardAt_fresh_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bfc969cec1043c4f4b31219a231f0a514f2c6a8a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/22317680d593eccd7dcede705039ef47b19383ea88a43800c3afc58e663b17e5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:debbdd49-f32c-1b64-52f8-8f1d2cccd5b9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f738e1db-7ad5-c3d1-8115-d0b44c1232b5",
  "kind": "theorem",
  "lexical_name": "actual_centeredForwardAt_fresh_prime",
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
  "slug": "actual-centeredforwardat-fresh-prime--e3b59bb130e6d8c4f252fed2",
  "source": {
    "blob": "bfc969cec1043c4f4b31219a231f0a514f2c6a8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 50,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeDisclosureActual/Variant22317680d593eccd7dcede705039ef47b19383ea88a43800c3afc58e663b17e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3b59bb130e6d8c4f252fed2172922a2ae15f3c3d25b2beb4179ef17b4a58ede",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeDisclosureActual/Variant22317680d593eccd7dcede705039ef47b19383ea88a43800c3afc58e663b17e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f738e1db-7ad5-c3d1-8115-d0b44c1232b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_centeredForwardAt_fresh_prime (A : ℝ) (hA : 0 < A)
    (P : Finset ℕ) (U N p : ℕ) (hP : ∀ r ∈ P, r.Prime)
    (hp : p.Prime) (hpP : p ∉ P)
    (hcover : ∀ r, r.Prime → r ≤ U → r ∈ insert p P) (hU : 1 ≤ U) :
    centeredForwardAt A hA U N =
      disclosureSource (originalSourceL2 A hA) (Finset.Ioc U N) (primeDivisors P U) +
        correctionSource (originalSourceL2 A hA) (Finset.Ioc U N)
          (primeDivisors P (U / p)) p := by
  have hi : ∀ r ∈ insert p P, r.Prime := by
    intro r hr
    rcases Finset.mem_insert.mp hr with rfl | hr
    · exact hp
    · exact hP r hr
  rw [← disclosureSource_eq_actual_centeredForwardAt A hA (insert p P) U N hi hcover hU]
  exact disclosureSource_primeDivisors_insert _ _ _ _ _ hP hp hpP

/-- The private deletion is the original same-index centered arithmetic diagonal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeDisclosureActual/Variant22317680d593eccd7dcede705039ef47b19383ea88a43800c3afc58e663b17e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeDisclosureActual/Variant22317680d593eccd7dcede705039ef47b19383ea88a43800c3afc58e663b17e5.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfc969cec1043c4f4b31219a231f0a514f2c6a8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
