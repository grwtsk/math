# mem_factoredNumbers_of_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d34a8e7d-5e5c-d417-7615-81cd1ed814f6",
  "kind": "lemma",
  "lexical_name": "mem_factoredNumbers_of_dvd",
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
  "slug": "mem-factorednumbers-of-dvd--65d2cbf08e944f086ef8317e",
  "source": {
    "blob": "4f915e9deb1bfb3812656de52f147382487865e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 87,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant279f403f383bb277dc931fd9dd86f5eced90156ad50dbfed1ee825512dcd8e26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65d2cbf08e944f086ef8317e7fe170e3abc4e9ff803c77a751dc42ac37bac44d",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant279f403f383bb277dc931fd9dd86f5eced90156ad50dbfed1ee825512dcd8e26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d34a8e7d-5e5c-d417-7615-81cd1ed814f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_factoredNumbers_of_dvd {s : Finset ℕ} {m k : ℕ} (h : m ∈ factoredNumbers s)
    (h' : k ∣ m) :
    k ∈ factoredNumbers s := by
  obtain ⟨h₁, h₂⟩ := h
  have hk := ne_zero_of_dvd_ne_zero h₁ h'
  refine ⟨hk, fun p hp ↦ h₂ p ?_⟩
  rw [mem_primeFactorsList <| by assumption] at hp ⊢
  exact ⟨hp.1, hp.2.trans h'⟩

/-- `m` is `s`-factored if and only if `m` is nonzero and all prime divisors `≤ m` of `m`
are in `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant279f403f383bb277dc931fd9dd86f5eced90156ad50dbfed1ee825512dcd8e26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant279f403f383bb277dc931fd9dd86f5eced90156ad50dbfed1ee825512dcd8e26.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f915e9deb1bfb3812656de52f147382487865e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
