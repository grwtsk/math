# spectrum_eq_eigenvalues

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "95daedb125007aa1501e7818f4eede8e5b4ba761",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e622aa2c583c66f40846aa22c9a290b3ad73ea62a060cf3c7c74c70ef3386f9e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1d109999-e3be-156e-b912-bd22d92f870e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bfb27f89-83a5-bf6b-e1ab-190c80b5e859",
  "kind": "lemma",
  "lexical_name": "spectrum_eq_eigenvalues",
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
  "slug": "spectrum-eq-eigenvalues--a3b1b71283c48d00fdb25787",
  "source": {
    "blob": "95daedb125007aa1501e7818f4eede8e5b4ba761",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 40,
    "path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variante622aa2c583c66f40846aa22c9a290b3ad73ea62a060cf3c7c74c70ef3386f9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3b1b71283c48d00fdb25787b9f2688d474648af6a9cfc4241db7f38eb0258ed",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Spectrum/Variante622aa2c583c66f40846aa22c9a290b3ad73ea62a060cf3c7c74c70ef3386f9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfb27f89-83a5-bf6b-e1ab-190c80b5e859`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma spectrum_eq_eigenvalues :
    spectrum ℝ L = {λ | IsEigenvalue L λ} := by
  simpa using
    spectrum_eq_pointSpectrum_of_compactResolvent_selfAdjoint
      (Schrodinger.L_compactResolvent P)
      (Schrodinger.L_isSelfAdjoint P)

/-!  ## 2.  Enumeration (optional utilities)                                  -/

/--
`hasEigenvalues` from the compact-resolvent library gives a multiset
`eigenvalues : Multiset ℝ` that lists the spectrum with multiplicities
and tends to `+∞`.  ￼You can obtain it via:
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Spectrum/Variante622aa2c583c66f40846aa22c9a290b3ad73ea62a060cf3c7c74c70ef3386f9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Spectrum/Variante622aa2c583c66f40846aa22c9a290b3ad73ea62a060cf3c7c74c70ef3386f9e.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95daedb125007aa1501e7818f4eede8e5b4ba761` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
