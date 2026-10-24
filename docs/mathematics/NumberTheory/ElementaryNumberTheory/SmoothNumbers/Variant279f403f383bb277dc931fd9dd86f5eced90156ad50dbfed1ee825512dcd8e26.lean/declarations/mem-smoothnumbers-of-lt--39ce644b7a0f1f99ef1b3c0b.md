# mem_smoothNumbers_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08186a14-9edf-54c6-c82f-1184b8ba829f",
  "kind": "lemma",
  "lexical_name": "mem_smoothNumbers_of_lt",
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
  "slug": "mem-smoothnumbers-of-lt--39ce644b7a0f1f99ef1b3c0b",
  "source": {
    "blob": "4f915e9deb1bfb3812656de52f147382487865e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 370,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant279f403f383bb277dc931fd9dd86f5eced90156ad50dbfed1ee825512dcd8e26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39ce644b7a0f1f99ef1b3c0b67abc52419b98c7cc0a03d1bd504dcfbc99db785",
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

Occurrence: `result:08186a14-9edf-54c6-c82f-1184b8ba829f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 370–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_smoothNumbers_of_lt {m n : ℕ} (hm : 0 < m) (hmn : m < n) : m ∈ n.smoothNumbers :=
  smoothNumbers_eq_factoredNumbers _ ▸ ⟨ne_zero_of_lt hm,
  fun _ h => Finset.mem_range.mpr <| lt_of_le_of_lt (le_of_mem_primeFactorsList h) hmn⟩

/-- The non-zero non-`N`-smooth numbers are `≥ N`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant279f403f383bb277dc931fd9dd86f5eced90156ad50dbfed1ee825512dcd8e26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant279f403f383bb277dc931fd9dd86f5eced90156ad50dbfed1ee825512dcd8e26.lean#L370).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f915e9deb1bfb3812656de52f147382487865e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
